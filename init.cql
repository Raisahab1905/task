-- init.cql

-- 1. Create keyspace
CREATE KEYSPACE IF NOT EXISTS employee_db
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1}
AND durable_writes = true;

-- 2. Use the keyspace
USE employee_db;

-- 3. Create Employee table
CREATE TABLE IF NOT EXISTS employee (
    id UUID PRIMARY KEY,
    name text,
    designation text,
    salary decimal
);

-- You can add more tables if needed for your API
