-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE category (
    category_id VARCHAR(10)   NOT NULL,
    category VARCHAR(100)   NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10)   NOT NULL,
    subcategory VARCHAR(100)  NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
    cf_id INTEGER(10)   NOT NULL,
    contact_id INTEGER(10)   NOT NULL,
    company_name VARCHAR(100)   NOT NULL,
    description VARCHAR(100)   NOT NULL,
    goal FLOAT(10)   NOT NULL,
    pledged FLOAT(10)   NOT NULL,
    outcome VARCHAR(10)   NOT NULL,
    backers_count INTEGER(10)   NOT NULL,
    country VARCHAR(10)   NOT NULL,
    currency VARCHAR(10)   NOT NULL,
    launch_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(10)   NOT NULL,
    subcategory_id VARCHAR(10)   NOT NULL,
    PRIMARY KEY (cf_id),
	UNIQUE(contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

CREATE TABLE contacts (
    contact_id INTEGER(10)   NOT NULL,
    first_name VARCHAR(100)   NOT NULL,
    last_name VARCHAR(100)   NOT NULL,
    email VARCHAR(100)   NOT NULL,
    PRIMARY KEY (contact_id),
	FOREIGN KEY(contact_id) REFERENCES campaign (contact_id)
);

select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;
