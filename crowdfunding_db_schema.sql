-- For Dropping Tables if needed
--DROP TABLE IF EXISTS Subcategory;
--DROP TABLE IF EXISTS Category;
--DROP TABLE IF EXISTS Contacts;
--DROP TABLE IF EXISTS Crowdfunding;


CREATE TABLE Subcategory (
    "subcategory_id" varchar(40) PRIMARY KEY,
    "subcategory" varchar(40)   NOT NULL
);

CREATE TABLE Category (
    "category_id" varchar(40) PRIMARY KEY,
    "category" varchar(40)   NOT NULL
);

CREATE TABLE Contacts (
    "contact_id" int PRIMARY KEY,
    "first_name" varchar(40)   NOT NULL,
    "last_name" varchar(40)   NOT NULL,
    "email" varchar(100)   NOT NULL
);

CREATE TABLE Crowdfunding (
    "cf_id" int PRIMARY KEY,
    "contact_id" int   NOT NULL,
    "company_name" varchar(40)   NOT NULL,
    "description" varchar(100)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(40)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(40)   NOT NULL,
    "currency" varchar(40)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category" varchar(40)   NOT NULL,
    "subcategory" varchar(40)   NOT NULL,
    "category_id" varchar(40)   NOT NULL,
    "subcategory_id" varchar(40)   NOT NULL,
	FOREIGN KEY ("contact_id") REFERENCES Contacts("contact_id"),
	FOREIGN KEY ("category_id") REFERENCES Category("category_id"),
	FOREIGN KEY ("subcategory_id") REFERENCES Subcategory("subcategory_id")
);

--SELECT * FROM Contacts;


