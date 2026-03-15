-- List of the 5 columns necessary for the experiment:
SELECT stay, inter_dom, todep, tosc, toas
FROM students
WHERE inter_dom = 'Inter';

--Necessary confirm the actual stored values
SELECT DISTINCT inter_dom
FROM students;

SELECT stay,
	COUNT(inter_dom) AS count_int,
	ROUND(AVG(todep), 2) AS average_phq,
	ROUND(AVG(tosc), 2) AS average_scs,
	ROUND(AVG(toas), 2) AS average_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;
