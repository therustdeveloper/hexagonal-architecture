# Rust Hexagonal Architecture

## Sqlite Database

### Create Database

```shell
sqlx database create --database-url=sqlite:hexarch.db
```

### Create Authors Table

```shell
sqlx migrate add create_authors_table
```

In the `migrations` directory add to the file that corresponds the following:

```shell
CREATE TABLE IF NOT EXISTS authors (
    id TEXT PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
```

```shell
sqlx migrate run --database-url=sqlite:hexarch.db                                                                                                                            ─╯
Applied 20240728161821/migrate create authors table
```