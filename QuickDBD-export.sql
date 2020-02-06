-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Trainer" (
    "ID" int   NOT NULL,
    "FName" varchar   NOT NULL,
    "LName" varchar   NOT NULL,
    "Gym_ID" int   NOT NULL,
    CONSTRAINT "pk_Trainer" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "members" (
    "ID" int   NOT NULL,
    "FName" varchar   NOT NULL,
    "LName" varchar   NOT NULL,
    "Address" varchar   NOT NULL,
    "Trainer" varchar   NOT NULL,
    "gym_ID" int   NOT NULL,
    CONSTRAINT "pk_members" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "gym" (
    "ID" int   NOT NULL,
    "Address" varchar   NOT NULL,
    CONSTRAINT "pk_gym" PRIMARY KEY (
        "ID"
     ),
    CONSTRAINT "uc_gym_Address" UNIQUE (
        "Address"
    )
);

ALTER TABLE "members" ADD CONSTRAINT "fk_members_gym_ID" FOREIGN KEY("gym_ID")
REFERENCES "gym" ("ID");

