-- Create vote_options table with id as the primary key
CREATE TABLE IF NOT EXISTS vote_options (
    id VARCHAR(255) PRIMARY KEY,
    option VARCHAR(255) NOT NULL
);

INSERT INTO vote_options (id, option) VALUES 
('1', 'Dog'), 
('2', 'Cat'), 
('3', 'Fish');

-- Create votes table with proper foreign key constraint
CREATE TABLE IF NOT EXISTS votes (
    id SERIAL PRIMARY KEY,
    option_id VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (option_id) REFERENCES vote_options(id)
);
