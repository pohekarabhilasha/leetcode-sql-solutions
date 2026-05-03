-- LeetCode 584: Find Customer Referee
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/find-customer-referee/
--
-- Problem: 
-- Table: Customer
--
--   +-------------+---------+
--   | Column Name | Type    |
--   +-------------+---------+
--   | id          | int     |
--   | name        | varchar |
--   | referee_id  | int     |
--   +-------------+---------+
-- id is the primary key.
-- Find the names of customers that are NOT referred by 
-- the customer with id = 2.
-- Return the result table in any order.

-- My solution
SELECT name
FROM Customer
WHERE referee_id != 2 
OR referee_id IS NULL;

-- My thought process:
-- At first I just wrote "WHERE referee_id != 2" thinking 
-- that was enough. But it didn't return all the rows I 
-- expected. Some customers were missing from my output.
--
-- Then I realised — those missing customers had NULL in 
-- referee_id (meaning nobody referred them). And in SQL, 
-- NULL is weird. When you compare NULL to anything using 
-- != or =, the result is NULL, not TRUE or FALSE. So those 
-- rows got filtered out.
--
-- Fix was simple: add "OR referee_id IS NULL" to also 
-- include people who had no referrer. Because technically, 
-- if you weren't referred by anyone, you definitely weren't 
-- referred by customer 2.
--
-- Lesson learned: whenever I use != or <> in a WHERE clause, 
-- I need to stop and think — can this column ever be NULL? 
-- If yes, I need to handle it explicitly.
