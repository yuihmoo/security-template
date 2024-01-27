CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE account (
	id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
	login_id VARCHAR(20) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	name VARCHAR(50) NOT NULL,
	role VARCHAR(100) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	phone VARCHAR(11) UNIQUE NOT NULL,
	created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP
);