CREATE TABLE Category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR
);

CREATE TABLE Contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR
);

CREATE TABLE Campaign (
    cf_id INTEGER PRIMARY KEY,
    contact_id INTEGER,
    company_name VARCHAR,
    description VARCHAR,
    goal DECIMAL,
    pledged DECIMAL,
    outcome VARCHAR,
    backers_count INTEGER,
    country VARCHAR,
    currency VARCHAR,
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR,
    subcategory_id VARCHAR,
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);