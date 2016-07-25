-- This file is automatically generated by LogicalPlanToSQLSuite.
SELECT val, id
FROM parquet_t3
LATERAL VIEW EXPLODE(arr2) exp1 AS nested_array
LATERAL VIEW EXPLODE(nested_array) exp1 AS val
WHERE val > 2
ORDER BY val, id
LIMIT 5
--------------------------------------------------------------------------------
SELECT `gen_attr` AS `val`, `gen_attr` AS `id` FROM (SELECT `gen_attr`, `gen_attr` FROM (SELECT `arr` AS `gen_attr`, `arr2` AS `gen_attr`, `json` AS `gen_attr`, `id` AS `gen_attr` FROM `default`.`parquet_t3`) AS gen_subquery_0 LATERAL VIEW explode(`gen_attr`) gen_subquery_2 AS `gen_attr` LATERAL VIEW explode(`gen_attr`) gen_subquery_3 AS `gen_attr` WHERE (`gen_attr` > CAST(2 AS BIGINT)) ORDER BY `gen_attr` ASC, `gen_attr` ASC LIMIT 5) AS gen_subquery_1