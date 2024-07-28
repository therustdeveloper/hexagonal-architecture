-- Add migration script here
CREATE TABLE IF NOT EXISTS authors (
    id TEXT PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);