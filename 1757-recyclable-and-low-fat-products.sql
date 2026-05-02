-- LeetCode 1757: Recyclable and Low Fat Products
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/recyclable-and-low-fat-products/
--
-- Problem: 
-- Table: Products
--   +-------------+---------+
--   | Column Name | Type    |
--   +-------------+---------+
--   | product_id  | int     |
--   | low_fats    | enum    |  -- ('Y', 'N')
--   | recyclable  | enum    |  -- ('Y', 'N')
--   +-------------+---------+
-- product_id is the primary key.
--
-- Write a query to find the ids of products that are 
-- both low fat AND recyclable.
-- Return the result table in any order.

-- Solution
SELECT product_id
FROM Products
WHERE low_fats = 'Y' 
AND recyclable = 'Y';

-- Approach:
-- Simple WHERE filter with AND condition since both 
-- requirements must be true. The enum type only allows 
-- 'Y' or 'N', so no need to handle NULLs or other values.
