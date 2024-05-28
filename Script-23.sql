--1.Can you find out the total milk production for 2023? Your manager wants this information for the yearly report.What is the total milk production for 2023?

SELECT SUM(Value) AS total_milk_production
FROM milk_production
WHERE Year = 2023;

--2.Which states had cheese production greater than 100 million in April 2023? The Cheese Department wants to focus their marketing efforts there. How many states are there?
SELECT COUNT(DISTINCT State_ANSI) AS number_of_states
FROM cheese_production
WHERE Year = 2023
  AND Period = 'APR'
  AND Value > 100000000;
  
--3.Your manager wants to know how coffee production has changed over the years. What is the total value of coffee production for 2011?
 SELECT Year, SUM(Value) 
FROM coffee_production 
GROUP BY Year;
 
--4.There's a meeting with the Honey Council next week. Find the average honey production for 2022 so you're prepared.
SELECT AVG(Value) 
FROM honey_production 
WHERE Year = 2022;

--5.The State Relations team wants a list of all states names with their corresponding ANSI codes. Can you generate that list?What is the State_ANSI code for Florida?
SELECT * 
FROM state_lookup;

--6.For a cross-commodity report, can you list all states with their cheese production values, even if they didn't produce any cheese in April of 2023? What is the total for NEW JERSEY?
SELECT s.State, c.Value
FROM state_lookup s
LEFT JOIN cheese_production c ON s.State_ANSI = c.State_ANSI AND c.Year = 2023 AND c.Period = 'APR';

--7.Question 7Can you find the total yogurt production for states in the year 2022 which also have cheese production data from 2023? This will help the Dairy Division in their planning.
SELECT SUM(y.Value)
FROM yogurt_production y
WHERE y.Year = 2022 AND y.State_ANSI IN (
    SELECT DISTINCT c.State_ANSI FROM cheese_production c WHERE c.Year = 2023);
    
--8.List all states from state_lookup that are missing from milk_production in 2023.How many states are there?
SELECT s.State
FROM state_lookup s
LEFT JOIN milk_production m ON s.State_ANSI = m.State_ANSI AND m.Year = 2023
WHERE m.State_ANSI IS NULL;

--9.List all states with their cheese production values, including states that didn't produce any cheese in April 2023.Did Delaware produce any cheese in April 2023?
SELECT s.State, c.Value
FROM state_lookup s
LEFT JOIN cheese_production c ON s.State_ANSI = c.State_ANSI AND c.Year = 2023 AND c.Period = 'APR';
--10.Find the average coffee production for all years where the honey production exceeded 1 million.

SELECT AVG(c.Value) AS average_coffee_production
FROM coffee_production c
WHERE c.Year IN (
    SELECT h.Year
    FROM honey_production h
    WHERE h.Value > 1000000
);