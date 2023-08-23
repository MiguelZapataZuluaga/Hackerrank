/*SQL Project Plannig*/
SELECT
  short.Start_Date AS End_Date,
  longer.Start_Date AS Start_Date
FROM
  (
    SELECT
      Start_Date,
      ROW_NUMBER() OVER (ORDER BY Start_Date) AS rn
    FROM Projects
    WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)
    GROUP BY Start_Date
  ) AS short
JOIN (
  SELECT
    End_Date AS Start_Date,
    ROW_NUMBER() OVER (ORDER BY End_Date) AS rn
  FROM Projects
  WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)
  GROUP BY End_Date
) AS longer
ON short.rn = longer.rn

ORDER BY DAY(longer.Start_Date)- DAY(short.Start_Date);


/*The blunder - quitar ceros, uso del from un poco mas avanzado*/
SELECT
sal.salary AS salary
FROM (
        select round(avg(salary))-round(avg(REPLACE(salary, '0', ''))) AS salary        
        from Employees
) as sal;

/*OTRO*/
SELECT uy.popu AS population
FROM (
    SELECT COUNT(population) AS popu
    FROM city
    WHERE population > 100000
) AS uy;
