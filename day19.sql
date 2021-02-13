-- https://platform.stratascratch.com/coding-question?id=10285&python=

SELECT f1.date, CAST(f2.numerator AS Float)/f1.denominator AS percentage_acceptance
FROM(
	SELECT date, COUNT(1) AS denominator
	FROM fb_friend_requests
	WHERE action='sent'
	GROUP BY date) f1
		JOIN (SELECT r1.date AS date, COUNT(1) AS numerator
			  FROM fb_friend_requests r1
					JOIN fb_friend_requests r2
						ON r1.user_id_sender=r2.user_id_sender AND
						r1.user_id_receiver=r2.user_id_receiver
			  WHERE r1.date<r2.date AND r2.action='accepted'
			  GROUP BY r1.date) f2
			ON f1.date=f2.date;
