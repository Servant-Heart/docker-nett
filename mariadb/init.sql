-- init.sql
-- this creates an audit table within a mysql database

CREATE DATABASE IF NOT EXISTS audits;

USE audits;

CREATE TABLE IF NOT EXISTS audit_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    table_name VARCHAR(255) NOT NULL,
    action_type ENUM('INSERT', 'UPDATE', 'DELETE') NOT NULL,
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    primary_key_value VARCHAR(255),
    foreign_key_value VARCHAR(255),
    old_data JSON,
    new_data JSON
);
