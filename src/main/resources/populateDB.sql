-- insert developer

INSERT INTO public.developer(dev_name, dev_age, dev_gender) VALUES ('Roman',20,'Male');
INSERT INTO public.developer(dev_name, dev_age, dev_gender) VALUES ('Ksenia',24,'Female');
INSERT INTO public.developer(dev_name, dev_age, dev_gender) VALUES ('Anton',25,'Male');
INSERT INTO public.developer(dev_name, dev_age, dev_gender) VALUES ('Maksim',19,'Male');
INSERT INTO public.developer(dev_name, dev_age, dev_gender) VALUES ('Lena',21,'Female');

-- insert skill

INSERT INTO public.skill(skills_name, skills_lvl) VALUES ('Java','Junior');
INSERT INTO public.skill(skills_name, skills_lvl) VALUES ('Java','Middle');
INSERT INTO public.skill(skills_name, skills_lvl) VALUES ('Java','Senior');
INSERT INTO public.skill(skills_name, skills_lvl) VALUES ('C++','Junior');
INSERT INTO public.skill(skills_name, skills_lvl) VALUES ('C++','Middle');
INSERT INTO public.skill(skills_name, skills_lvl) VALUES ('C++','Senior');
INSERT INTO public.skill(skills_name, skills_lvl) VALUES ('C#','Junior');
INSERT INTO public.skill(skills_name, skills_lvl) VALUES ('C#','Middle');
INSERT INTO public.skill(skills_name, skills_lvl) VALUES ('C#','Senior');
INSERT INTO public.skill(skills_name, skills_lvl) VALUES ('JS','Junior');
INSERT INTO public.skill(skills_name, skills_lvl) VALUES ('JS','Middle');
INSERT INTO public.skill(skills_name, skills_lvl) VALUES ('JS','Senior');

-- insert project
INSERT INTO public.project(project_name, project_description)
VALUES ('BlockChain_Exchange','Commercial platform for the exchange of electronic money');
INSERT INTO public.project(project_name, project_description)
VALUES ('Internet_Shop','Platform for sellers');
INSERT INTO public.project(project_name, project_description)
VALUES ('Education_portal','Student portal for class schedule');
INSERT INTO public.project(project_name, project_description)
VALUES ('Hospital_in_phone','One-button emergency call');
INSERT INTO public.project(project_name, project_description)
VALUES ('GPS_Navigator','Best Navigator');

-- insert companies
INSERT INTO public.companies(company_name, company_location) VALUES ('FORTUNA','Serbia');
INSERT INTO public.companies(company_name, company_location) VALUES ('L&V','Ukraine');
INSERT INTO public.companies(company_name, company_location) VALUES ('Chevrolet','USA');

--insert customer
INSERT INTO public.customer(customer_name, customer_second_name) VALUES ('Vlad','Ofinnerskiy');
INSERT INTO public.customer(customer_name, customer_second_name) VALUES ('Oleg','Ionov');
INSERT INTO public.customer(customer_name, customer_second_name) VALUES ('Misha','Kravchenko');

-- insert dev_skills
INSERT INTO public.dev_skills(dev_id, skills_id) VALUES (1,1);
INSERT INTO public.dev_skills(dev_id, skills_id) VALUES (1,10);
INSERT INTO public.dev_skills(dev_id, skills_id) VALUES (2,5);
INSERT INTO public.dev_skills(dev_id, skills_id) VALUES (2,6);
INSERT INTO public.dev_skills(dev_id, skills_id) VALUES (2,7);
INSERT INTO public.dev_skills(dev_id, skills_id) VALUES (2,3);
INSERT INTO public.dev_skills(dev_id, skills_id) VALUES (3,2);
INSERT INTO public.dev_skills(dev_id, skills_id) VALUES (4,9);
INSERT INTO public.dev_skills(dev_id, skills_id) VALUES (5,12);

-- insert dev_project
INSERT INTO public.dev_projects(dev_id, project_id) VALUES (1,1);
INSERT INTO public.dev_projects(dev_id, project_id) VALUES (1,5);
INSERT INTO public.dev_projects( dev_id, project_id) VALUES (2,2);
INSERT INTO public.dev_projects(dev_id, project_id) VALUES (3,3);
INSERT INTO public.dev_projects(dev_id, project_id) VALUES (4,4);
INSERT INTO public.dev_projects(dev_id, project_id) VALUES (5,5);
INSERT INTO public.dev_projects(dev_id, project_id) VALUES (2,3);

--insert companies_project
INSERT INTO public.companies_project(companies_id, project_id) VALUES (3,3);
INSERT INTO public.companies_project(companies_id, project_id) VALUES (2,2);
INSERT INTO public.companies_project(companies_id, project_id) VALUES (1,5);
INSERT INTO public.companies_project(companies_id, project_id) VALUES (2,1);

--insert customer_projects
INSERT INTO public.customer_projects(customer_id, project_id) VALUES (1,2);
INSERT INTO public.customer_projects(customer_id, project_id) VALUES (1,3);
INSERT INTO public.customer_projects(customer_id, project_id) VALUES (3,4);
INSERT INTO public.customer_projects(customer_id, project_id) VALUES (2,5);
INSERT INTO public.customer_projects(customer_id, project_id) VALUES (3,1);

--update salary into developer
UPDATE developer SET salary=500 WHERE dev_id=1;
UPDATE developer SET salary=900 WHERE dev_id=2;
UPDATE developer SET salary=1000 WHERE dev_id=3;
UPDATE developer SET salary=3200 WHERE dev_id=4;
UPDATE developer SET salary=2300 WHERE dev_id=5;

--update cost into project
UPDATE project SET cost=65000 WHERE project_id = 1;
UPDATE project SET cost=14000 WHERE project_id = 2;
UPDATE project SET cost=11000 WHERE project_id = 3;
UPDATE project SET cost=56000 WHERE project_id = 4;
UPDATE project SET cost=10200 WHERE project_id = 5;