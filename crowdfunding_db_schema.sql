-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE category (
    category_id VARCHAR   NOT NULL,
    category VARCHAR   NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR   NOT NULL,
    subcategory VARCHAR   NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
    cf_id INTEGER   NOT NULL,
    contact_id INTEGER   NOT NULL,
    company_name VARCHAR   NOT NULL,
    description VARCHAR   NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR   NOT NULL,
    backers_count INTEGER   NOT NULL,
    country VARCHAR   NOT NULL,
    currency VARCHAR   NOT NULL,
    launch_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR   NOT NULL,
    subcategory_id VARCHAR   NOT NULL,
    PRIMARY KEY (cf_id),
	UNIQUE(contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

CREATE TABLE contacts (
    contact_id INTEGER   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    email VARCHAR   NOT NULL,
    PRIMARY KEY (contact_id),
	FOREIGN KEY(contact_id) REFERENCES campaign (contact_id)
);

select * from contacts
select * from category
select * from subcategory
select * from campaign