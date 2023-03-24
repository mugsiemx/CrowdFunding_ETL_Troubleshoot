-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/DKLu5z
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(30)   NOT NULL,
    "blurb" varchar   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" int   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(15)   NOT NULL,
    "currency" varchar(15)   NOT NULL,
    "launch_date" date   NOT NULL,
    "deadline" date   NOT NULL,
    "category_id" varchar(15)   NOT NULL,
    "subcategory_id" varchar(15)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Contact" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category" (
    "category" varchar   NOT NULL,
    "category_id" varchar(15)   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory" varchar   NOT NULL,
    "subcategory_id" varchar(15)   NOT NULL
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

ALTER TABLE "Contact" ADD CONSTRAINT "fk_Contact_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");

select * from "Campaign"

SELECT * FROM "Category"

SELECT * FROM "Contacts"

SELECT * FROM "Subcategory"