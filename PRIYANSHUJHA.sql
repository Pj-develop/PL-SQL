prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_default_workspace_id=>72229698503962802099
);
end;
/
prompt  WORKSPACE 72229698503962802099
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   04:03 Monday May 8, 2023
--   Exported By:     PRIYANSHU.K4444@GMAIL.COM
--   Export Type:     Workspace Export
--   Version:         23.1.0-16
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_230100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>72229698503962802099);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace PRIYANSHUJHA...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 72229766159321815460
 ,p_provisioning_company_id => 72229698503962802099
 ,p_short_name => 'PRIYANSHUJHA'
 ,p_display_name => 'PRIYANSHUJHA'
 ,p_first_schema_provisioned => 'WKSP_PRIYANSHUJHA'
 ,p_company_schemas => 'WKSP_PRIYANSHUJHA'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'PRIYANSH'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'PRIYANSHUJHA'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111224556075029,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111140893075029,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111073851075029,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '72229698422280802099',
  p_user_name                    => 'PRIYANSHU.K4444@GMAIL.COM',
  p_first_name                   => 'Priyanshu',
  p_last_name                    => 'Jha',
  p_description                  => '',
  p_email_address                => 'priyanshu@example.com',
  p_web_password                 => 'A561F8C70625A9FF3A68EC77F64B22DA01644897C618C02DB9B1109B14FA3173F9864E0D2FDE8D2CB1ACFA7C3E9618697C12B69D7A2925E7EAC38551631975FB',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '111073851075029:111140893075029:111224556075029:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_PRIYANSHUJHA',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304120548','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
Q1 : 

CREATE TABLE accounts (
  usr_id NUMBER PRIMARY KEY,
  usr_name VARCHAR2(50) NOT NULL,
usr_contact VARCHAR2(50) NOT NULL,
  user_age NUMBER NOT NULL
);

DECLARE
  usr_id NUMBER;
  user_age NUMBER;
  usr_name VARCHAR2(50);
  usr_contact VARCHAR(50);
  age_exception EXCEPTION;
BEGIN
  usr_id:=:usr_id;
  usr_name:=:usr_name;
  usr_contact:=:usr_contact;
  user_age :=:user_age;

  IF user_age >= 18 THEN
    INSERT INTO accounts VALUES (usr_id, usr_name, usr_contact, user_age);
    dbms_output.put_line('Account created successfully!');
  ELSE
    RAISE age_exception;
  END IF;
  COMMIT;
  
EXCEPTION
  WHEN age_exception THEN
    dbms_output.put_line('Error: Age cannot be less than 18.');
END;

























Q2:
create table school(
    t_id number primary key,
    t_name varchar2(20),
    t_age number,
    t_salary number,
    t_exp number,
    bonus_diwali number
)

DECLARE
  t_id NUMBER;
  diwali_bonus NUMBER;
  new_salary NUMBER;
  t_exp NUMBER;
BEGIN
  t_id:=:t_id;
  SELECT t_salary, t_exp INTO new_salary, t_exp FROM school WHERE t_id = t_id AND ROWNUM = 1;
  
  -- Calculate bonus based on years of experience
  IF t_exp <= 1 THEN
    diwali_bonus := 2000;
  ELSIF t_exp = 2 THEN
    diwali_bonus := 3000;
  ELSE
    diwali_bonus := 4000;
  END IF;
  
  -- Add bonus to employee's salary
  new_salary := new_salary + diwali_bonus;
  
  -- Update employee's salary and bonus_diwali columns
  UPDATE school SET t_salary = new_salary, bonus_diwali = diwali_bonus WHERE t_id = t_id;
  
  dbms_output.put_line('Bonus of ' || diwali_bonus || ' added to teacher with ID ' || t_id);
  
  -- Commit changes to the database
  COMMIT;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('Error: Teacher with ID ' || t_id || ' not found.');
END;


select * from school;


Q3 :
CREATE TABLE department (
  dept_ID NUMBER,
  department_name VARCHAR2(50)
);

INSERT INTO department (dept_ID, department_name) VALUES (10, 'Administration');
INSERT INTO department (dept_ID, department_name) VALUES (20, 'Marketing');
INSERT INTO department (dept_ID, department_name) VALUES (30, 'Purchasing');
INSERT INTO department (dept_ID, department_name) VALUES (40, 'HUMAN RESOURCE');
INSERT INTO department (dept_ID, department_name) VALUES (50, 'SHIPPING');
INSERT INTO department (dept_ID, department_name) VALUES (60, 'IT');
INSERT INTO department (dept_ID, department_name) VALUES (70, 'PUBLIC_RELATION');
INSERT INTO department (dept_ID, department_name) VALUES (80, 'SALES');


SELECT DEPT_ID,DEPARTMENT_NAME FROM DEPARTMENT
   order by dept_id
   fetch first 5 rows only;


SELECT DEPT_ID,DEPARTMENT_NAME FROM DEPARTMENT
   order by dept_id desc
   fetch first 5 rows only;

/
set verify on feedback on define on
prompt  ...done
