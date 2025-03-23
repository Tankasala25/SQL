# SQL JOINs – Explained

In relational databases, data is often spread across multiple related tables. To query and combine that data meaningfully, SQL provides different types of JOIN clauses. This document explains each type of JOIN supported in SQL.

---

## 🔗 What is a JOIN?

A **JOIN** is used to combine rows from two or more tables based on a related column between them. Typically, this is a **foreign key** relationship.

SQL supports the following types of JOINs:
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN (not supported in MySQL)
- CROSS JOIN
- SELF JOIN (not covered here)

---

## 1️⃣ INNER JOIN

- Combines rows from two tables where there is a **match** in both tables based on the join condition.
- Only rows that satisfy the join condition are included in the result.
- Most commonly used type of join.

### Key Points:
- Use when you want **only the matching records** from both tables.
- Can use `ON` or `USING` for join conditions.
- Syntax is supported in all RDBMS.

---

## 2️⃣ LEFT JOIN (or LEFT OUTER JOIN)

- Returns **all rows from the left table**, and the **matching rows from the right table**.
- If no match is found in the right table, the result will contain NULLs for right table columns.

### Key Points:
- Use to get all records from the left table, **even if no match** exists in the right table.
- Often used to find “unmatched” records by combining it with `IS NULL` in the `WHERE` clause.

---

## 3️⃣ RIGHT JOIN (or RIGHT OUTER JOIN)

- Returns **all rows from the right table**, and the **matching rows from the left table**.
- If no match is found in the left table, the result will contain NULLs for left table columns.

### Key Points:
- Similar to LEFT JOIN but focuses on keeping all rows from the **right** table.
- Use `RIGHT JOIN ... WHERE left_table.column IS NULL` to find records that exist only in the right table.

---

## 4️⃣ FULL OUTER JOIN

- Combines results of both LEFT and RIGHT JOINs.
- Returns **all rows** when there is a match in either left or right table.
- Rows with no match in one of the tables will show NULLs in place of missing values.

### Key Points:
- Not supported natively in MySQL.
- Can be simulated using `UNION` of `LEFT JOIN` and `RIGHT JOIN`.

---

## 5️⃣ CROSS JOIN

- Produces a **Cartesian product** between two tables.
- Each row from the first table is paired with **every row** in the second table.
- If the first table has `n` rows and the second has `m`, the result will have `n * m` rows.

### Key Points:
- No join condition is used.
- Useful in generating all possible combinations (e.g., for planning or matrix-style data).

---

## 📝 General Notes

- Use `INNER JOIN` when you only need matching rows.
- Use `LEFT JOIN` or `RIGHT JOIN` when you need **all rows from one side**, regardless of matches.
- Use `CROSS JOIN` when every combination is needed.
- MySQL does **not** support `FULL OUTER JOIN` directly.
- Always understand which table is "left" and "right" when using LEFT or RIGHT JOINs.

---

## ✅ Best Practices

- Always define clear join conditions to avoid Cartesian products unintentionally.
- Use table aliases for readability.
- Be cautious when joining on non-indexed columns — it may impact performance.
- For large datasets, make sure joined columns are properly indexed.

---

## 📌 Summary Table

| JOIN Type      | Returns                                       |
|----------------|-----------------------------------------------|
| INNER JOIN     | Only matching rows from both tables           |
| LEFT JOIN      | All rows from the left + matched right rows   |
| RIGHT JOIN     | All rows from the right + matched left rows   |
| FULL OUTER JOIN| All rows from both, matched where possible    |
| CROSS JOIN     | Every combination of rows from both tables    |

---

> This document explains SQL JOINs in theory. For hands-on practice, check the `joins_examples.sql` file in this repo.
