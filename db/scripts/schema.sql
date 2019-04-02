create table if not exists groups(
id integer primary key auto_increment,
shg_name_in_english varchar(100),
shg_name_in_regional_language varchar(200) character set utf8 collate utf8_unicode_ci,
regional_language_id integer,
group_type_id integer,
group_address_id integer,
block_detail_id integer,
promoter_id integer,
date_of_formation date,
date_of_co_option_revival date,
individual_monthly_saving decimal(12,3),
voluntary_saving decimal(12,3),
meeting_frequency_id integer,
federation_name varchar(60),
bank_detail_id integer,
group_activity_id integer,
standard_bookkeeping_practice_followed boolean,
micro_plan_prepared boolean,
basic_training_recieved boolean,
bookkeeper_name varchar(60),
master_data_entered_by_patron_id integer
);

create table if not exists group_addresses(
id integer primary key auto_increment,
state_id integer,
district_id integer,
location_type_id integer,
village varchar(100),
pincode varchar(10)
);

create table if not exists location_types(
id integer primary key auto_increment,
location_type_name varchar(60)
);

create table if not exists states(
id integer primary key auto_increment,
state_name varchar (60)
);

create table if not exists districts(
id integer primary key auto_increment,
state_id integer,
district_name varchar(100)
);

create table if not exists regional_languages(
id integer primary key auto_increment,
regional_language_name_in_english varchar(60),
regional_language varchar(200) character set utf8 collate utf8_unicode_ci
);


create table if not exists group_types(
id integer primary key auto_increment,
group_type_name varchar(30)
);

create table if not exists promoters(
id integer primary key auto_increment,
promoter_type_id integer,
promoter_name varchar(60),
promoter_address varchar(100),
promoter_phone_number varchar(60),
state_id integer, 
district_id integer
);

create table if not exists promoter_types(
id integer primary key auto_increment,
promoter_type_name varchar(60)
);

create table if not exists regional_languages(
id integer primary key auto_increment,
regional_language_name_in_english varchar(60),
regional_language_name varchar(100) character set utf8 collate utf8_unicode_ci
);

create table if not exists block_details(
id integer primary key auto_increment,
block_description varchar(60)
);

create table if not exists meeting_frequencies(
id integer primary key auto_increment,
schedule varchar(60)
);

create table if not exists bank_details(
id integer primary key auto_increment,
bank_name varchar(60),
branch_name varchar(60),
sb_account_number varchar(30),
ifsc_code varchar(30),
account_opening_date date
);

create table if not exists group_activities(
id integer primary key auto_increment,
activity_name varchar(30)
);

create table if not exists patrons(
id integer primary key auto_increment,
designation varchar(60)
);

insert into patrons(designation) values('President');
insert into patrons(designation) values('Secretary');
insert into patrons(designation) values('Animator');
insert into patrons(designation) values('Coordinator');
insert into patrons(designation) values('Accountant');


insert into group_activities(activity_name) values('agri');
insert into group_activities(activity_name) values('non agri');
insert into group_activities(activity_name) values('nil');

insert into meeting_frequencies(schedule) values('weekly');
insert into meeting_frequencies(schedule) values('fortnightly');
insert into meeting_frequencies(schedule) values('monthly');


insert into promoter_types(promoter_type_name) values('NGO');
insert into promoter_types(promoter_type_name) values('SRLM');
insert into promoter_types(promoter_type_name) values('State Government Dept');
insert into promoter_types(promoter_type_name) values('Farmers Club');
insert into promoter_types(promoter_type_name) values('Banks');
insert into promoter_types(promoter_type_name) values('Federation');
insert into promoter_types(promoter_type_name) values('PACS');
insert into promoter_types(promoter_type_name) values('Others');


insert into group_types(group_type_name) values('New');
insert into group_types(group_type_name) values('Pre_NRLM');
insert into group_types(group_type_name) values('Revived');


insert into regional_languages(regional_language_name_in_english,regional_language) values('Tamil','தமிழ் ');
insert into regional_languages(regional_language_name_in_english,regional_language) values('Malayalam','മലയാളം');
insert into regional_languages(regional_language_name_in_english,regional_language) values('Telugu','తెలుగు');
insert into regional_languages(regional_language_name_in_english,regional_language) values('Kannada','ಕನ್ನಡ');
insert into regional_languages(regional_language_name_in_english,regional_language) values('Marathi','मराठी');
insert into regional_languages(regional_language_name_in_english,regional_language) values('Gujarathi','ગુજરાત');

insert into block_details(block_description) values('block');
insert into block_details(block_description) values('taluk');
insert into block_details(block_description) values('tehsil');
