SELECT Id FROM(
    SELECT id AS Id,recordDate,temperature,
    LAG(temperature) OVER(ORDER BY recordDate ASC) AS prev_temp,
    LAG(recordDate) OVER(ORDER BY recordDate ASC) AS prev_date
    FROM Weather
)cte
WHERE prev_temp<temperature and recordDate=DATE_ADD(prev_date,INTERVAL 1 DAY);