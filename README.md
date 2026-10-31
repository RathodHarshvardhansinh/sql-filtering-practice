# SQL Filtering Practice — Task 22

Day 22 of my Data Analytics internship at **Veda Technology**.
Practicing common SQL filters: `WHERE`, `IN`, `BETWEEN`, and `LIKE`.

## Objective
Practice common SQL filters on the Northwind dataset and understand when to use each operator.

## Tools
- MySQL
- PostgreSQL

## Dataset
Northwind (tables used: `products`, `customers`, `orders`).

## Repository Structure
```
├── README.md      # approach and outcome
├── queries.sql    # all 12 queries
└── results.md     # output / screenshots for each query
```

## Approach
I wrote 12 queries, three per operator group, then combined them in the last query. Each operator was tested on its own first, then with realistic business conditions.

| # | Operator | Business question |
|---|----------|-------------------|
| 1 | WHERE | Products costing more than 50 |
| 2 | WHERE | Customers in Germany |
| 3 | WHERE | Active products with low stock |
| 4 | IN | Customers from France, Spain, Italy |
| 5 | IN | Products in categories 1, 2, 3 |
| 6 | IN | Orders shipped to USA, Canada, Mexico |
| 7 | BETWEEN | Products priced 20–40 |
| 8 | BETWEEN | Orders placed in 1997 |
| 9 | BETWEEN | Orders with freight 50–100 |
| 10 | LIKE | Product names starting with "C" |
| 11 | LIKE | Company names containing "Restaurant" or "Market" |
| 12 | Combined | IN + BETWEEN + LIKE together |

## Key Learnings
- **`LIKE` vs `=`**: `=` matches an exact value; `LIKE` matches a pattern using `%` (any characters) and `_` (one character).
- **When to use `BETWEEN`**: for a continuous range of numbers or dates. It is inclusive of both ends.
- **`IN`** is cleaner than a long chain of `OR` conditions.
- Combine filters with `AND` / `OR`, and use brackets when mixing them.
- `LIKE` is case-sensitive in PostgreSQL (use `ILIKE`), but usually case-insensitive in MySQL.

## Outcome
All 12 queries run successfully on Northwind. See [`results.md`](results.md) for output.

## How to Run
```bash
# PostgreSQL
psql -d northwind -f queries.sql

# MySQL
mysql -u root -p northwind < queries.sql
```
