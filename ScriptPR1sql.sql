-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION pg_database_owner;
-- public.grade definition

-- Drop table

-- DROP TABLE grade;

CREATE TABLE grade (
	id int4 NOT NULL,
	id_student int4 NOT NULL,
	id_subject int4 NOT NULL,
	grade int4 NULL
);

-- Permissions

ALTER TABLE public.grade OWNER TO postgres;
GRANT ALL ON TABLE public.grade TO postgres;


-- public.students definition

-- Drop table

-- DROP TABLE students;

CREATE TABLE students (
	id int4 NOT NULL,
	"Name" varchar NULL,
	surname varchar NULL,
	age int4 NULL,
	"Group" varchar NULL
);

-- Permissions

ALTER TABLE public.students OWNER TO postgres;
GRANT ALL ON TABLE public.students TO postgres;


-- public.subjects definition

-- Drop table

-- DROP TABLE subjects;

CREATE TABLE subjects (
	id int4 NOT NULL,
	"name" varchar NULL,
	teacher varchar NULL
);

-- Permissions

ALTER TABLE public.subjects OWNER TO postgres;
GRANT ALL ON TABLE public.subjects TO postgres;




-- Permissions

GRANT ALL ON SCHEMA public TO pg_database_owner;
GRANT USAGE ON SCHEMA public TO public;


INSERT INTO public.grade (id,id_student,id_subject,grade) VALUES
	 (1,1,1,4),
	 (2,2,2,5),
	 (3,3,3,2),
	 (4,4,4,3),
	 (5,5,5,5);
INSERT INTO public.students (id,"Name",surname,age,"Group") VALUES
	 (1,'Иван','Иванов',18,'201'),
	 (2,'Петр','Петров',19,'202'),
	 (3,'Олег','Олегович',18,'202'),
	 (4,'Дмитрий','Дмитриевич',20,'200'),
	 (5,'Павел','Алексеевич',19,'201');
INSERT INTO public.subjects (id,"name",teacher) VALUES
	 (1,'Математика','Иванов И.И.'),
	 (2,'Физика','Петров П.Н.'),
	 (3,'Химия','Козлова М.С.'),
	 (4,'История','Федоров Ф.М.'),
	 (5,'Литература','Сидоров Г.С.');