-- Enable pgvector extension
CREATE EXTENSION IF NOT EXISTS vector;

-- Create Produto table
CREATE TABLE produto (
    id INTEGER PRIMARY KEY,
    name VARCHAR(140) NOT NULL,
    item_data JSONB,
    embedding_ollama vector(768),
    embedding_openai vector(1536)
);
