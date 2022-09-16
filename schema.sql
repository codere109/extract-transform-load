-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "dnd_monsters" (
    "id" serial   NOT NULL,
    "name" varchar(255)   NOT NULL,
    "challenge_rating" float   NOT NULL,
    "type" varchar(255)   NOT NULL,
    "size" varchar(255)   NOT NULL,
    "armor_class" int   NOT NULL,
    "hit_points" int   NOT NULL,
    "alignment" varchar(255)   NOT NULL,
    CONSTRAINT "pk_dnd_monsters" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "folklore_creatures" (
    "id" serial   NOT NULL,
    "name" varchar(255)   NOT NULL,
    "origin" varchar(255)   NOT NULL,
    "description" varchar(255)   NOT NULL,
    CONSTRAINT "pk_folklore_creatures" PRIMARY KEY (
        "id"
     )
);

