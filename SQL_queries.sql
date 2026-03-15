-- SQL Business Questions for train Dataset

-- Total Passengers
SELECT COUNT(*) AS Total_Passengers
FROM train;

-- Survival Rate
SELECT AVG(survived)*100 AS Survival_Rate
FROM train;

-- Survival Rate by Gender
SELECT sex, AVG(survived)*100 AS Survival_Rate
FROM train
GROUP BY sex;

-- Survival by Passenger Class
SELECT pclass, AVG(survived)*100 AS Survival_Rate
FROM train
GROUP BY pclass;

-- Average Fare by Class
SELECT pclass, AVG(fare) AS Avg_Fare
FROM train
GROUP BY pclass;

-- Passenger Count by Embark Port
SELECT embarked, COUNT(*) AS Passenger_Count
FROM train
GROUP BY embarked;