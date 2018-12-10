delete from RESULTS;
delete from PARTICIPATION;
delete from RACE;
delete from QUALIFYING;
delete from "Session";
delete from CIRCUIT_SPONSOR;
delete from MECHANIC_RACECAR;
delete from MECHANIC;
delete from DRIVER_SPONSOR;
delete from SPONSOR;
delete from DRIVER_DRIVER_GROUP;
delete from DRIVER;
delete from DRIVER_GROUP;
delete from RACECAR;
delete from CIRCUIT;
delete from TEAM;
commit;

-- Team
insert into TEAM (team_id, foundation_date, name, website_url) values (1, '25.03.2002', 'AF Corse', 'afcorse.it');
insert into TEAM (team_id, foundation_date, name, website_url) values (2, '18.04.2014', 'R-Motorsport', 'r-motorsport.com/index.html');
commit;

-- Circuit
insert into CIRCUIT (circuit_id, name, country, corners, length, car_capacity, viewers_capacity) values (1, 'Zolder', 'BE', 10, 4011, 26, 8010);
insert into CIRCUIT (circuit_id, name, country, corners, length, car_capacity, viewers_capacity) values (2, 'Monza', 'IT', 9, 5793, 40, 3440);
insert into CIRCUIT (circuit_id, name, country, corners, length, car_capacity, viewers_capacity) values (3, 'Brands Hatch', 'GB', 7, 4207, 36, 15474);
insert into CIRCUIT (circuit_id, name, country, corners, length, car_capacity, viewers_capacity) values (4, 'Silverstone', 'GB', 20, 5891, 38, 14533);
insert into CIRCUIT (circuit_id, name, country, corners, length, car_capacity, viewers_capacity) values (5, 'Paul Ricard', 'FR', 10, 3813, 35, 13401);
insert into CIRCUIT (circuit_id, name, country, corners, length, car_capacity, viewers_capacity) values (6, 'Misano', 'IT', 16, 4226, 31, 3671);
insert into CIRCUIT (circuit_id, name, country, corners, length, car_capacity, viewers_capacity) values (7, 'Spa', 'BE', 20, 7004, 32, 16098);
insert into CIRCUIT (circuit_id, name, country, corners, length, car_capacity, viewers_capacity) values (8, 'Hungaroring', 'HU', 16, 4381, 31, 18365);
insert into CIRCUIT (circuit_id, name, country, corners, length, car_capacity, viewers_capacity) values (9, 'Nurburgring', 'GE', 14, 5148, 39, 13587);
insert into CIRCUIT (circuit_id, name, country, corners, length, car_capacity, viewers_capacity) values (10, 'Barcelona', 'ES', 16, 4655, 35, 10329);
commit;

-- Racecar
insert into RACECAR (racecar_id, manufacturer, type, full_name, "number", class, power, weight, fuel_tank, front_tyres, back_tyres, engine_layout, displacement, length, width, wheelbase, team_team_id) values (1, 'Ferrari', '488 GT3', 'Ferrari 488 GT3', 7, 'GT3', 551, 1237, 100, null, null, 'V8', null, null, null, null, 1);
insert into RACECAR (racecar_id, manufacturer, type, full_name, "number", class, power, weight, fuel_tank, front_tyres, back_tyres, engine_layout, displacement, length, width, wheelbase, team_team_id) values (2, 'Lamborghini', 'Huracan GT3', 'Lamborghini Huracan GT3', 548, 'GT3', 600, 1237, 100, null, null, 'V10', null, null, null, null, 1);
insert into RACECAR (racecar_id, manufacturer, type, full_name, "number", class, power, weight, fuel_tank, front_tyres, back_tyres, engine_layout, displacement, length, width, wheelbase, team_team_id) values (3, 'Aston Martin', 'Vantage V12 GT3', 'Aston Martin Vantage V12 GT3', 701, 'GT3', 550, 1265, 100, null, null, 'V12', null, null, null, null, 2);
insert into RACECAR (racecar_id, manufacturer, type, full_name, "number", class, power, weight, fuel_tank, front_tyres, back_tyres, engine_layout, displacement, length, width, wheelbase, team_team_id) values (4, 'Audi', 'R8 LMS', 'Audi R8 LMS', 695, 'GT3', 568, 1235, 100, null, null, 'V10', null, null, null, null, 2);
insert into RACECAR (racecar_id, manufacturer, type, full_name, "number", class, power, weight, fuel_tank, front_tyres, back_tyres, engine_layout, displacement, length, width, wheelbase, team_team_id) values (5, 'Audi', 'R8 LMS', 'Audi R8 LMS', 695, 'GT3', 568, 1235, 100, null, null, 'V10', null, null, null, null, 1);
commit;

-- Driver_group
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (1, 1);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (2, 1);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (3, 1);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (4, 2);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (5, 2);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (6, 2);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (7, 3);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (8, 3);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (9, 3);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (10, 4);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (11, 4);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (12, 4);
commit;

-- Driver
insert into DRIVER (driver_id, first_name, last_name, birth_date, gender, nationality, website_url) values (1, 'Nicki', 'Thiim', '17.04.1989', 0, 'DK', 'danskyjr.com');
insert into DRIVER (driver_id, first_name, last_name, birth_date, gender, nationality, website_url) values (2, 'Jake', 'Dennis', '11.04.1988', 0, 'GB', null);
insert into DRIVER (driver_id, first_name, last_name, birth_date, gender, nationality, website_url) values (3, 'Rubens', 'Barrichello', '22.06.1980', 0, 'IT', 'barrichello.com');
insert into DRIVER (driver_id, first_name, last_name, birth_date, gender, nationality, website_url) values (4, 'Rubens2', 'Barrichello2', '22.06.1980', 0, 'IT', 'barrichello.com');
insert into DRIVER (driver_id, first_name, last_name, birth_date, gender, nationality, website_url) values (5, 'Rene', 'Rast', '11.03.1985', 0, 'DE', 'rast.com');
insert into DRIVER (driver_id, first_name, last_name, birth_date, gender, nationality, website_url) values (6, 'Rene2', 'Rast2', '11.03.1985', 0, 'DE', 'rast.com');
insert into DRIVER (driver_id, first_name, last_name, birth_date, gender, nationality, website_url) values (7, 'Alex', 'Riberas', '11.03.1985', 0, 'DE', 'riberas.com');
insert into DRIVER (driver_id, first_name, last_name, birth_date, gender, nationality, website_url) values (8, 'Alex2', 'Riberas2', '11.03.1985', 0, 'DE', 'riberas.com');

commit;

-- Driver_driver_group
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (1, 1);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (2, 2);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (1, 3);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (2, 3);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (3, 4);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (4, 5);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (3, 6);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (4, 6);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (5, 7);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (6, 8);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (5, 9);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (6, 9);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (7, 10);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (8, 11);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (7, 12);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (8, 12);
commit;

-- Sponsor
insert into SPONSOR (SPONSOR_ID, NAME, WEBSITE) VALUES (1, 'Pirelli', 'pirelli.com');
insert into SPONSOR (SPONSOR_ID, NAME, WEBSITE) VALUES (2, 'Blancpain', 'blancpain.com');
commit;

-- Driver_sponsor
insert into DRIVER_SPONSOR (DRIVER_DRIVER_ID, SPONSOR_SPONSOR_ID) VALUES (2, 1);
insert into DRIVER_SPONSOR (DRIVER_DRIVER_ID, SPONSOR_SPONSOR_ID) values (2, 2);
insert into DRIVER_SPONSOR (DRIVER_DRIVER_ID, SPONSOR_SPONSOR_ID) values (3, 2);
insert into DRIVER_SPONSOR (DRIVER_DRIVER_ID, SPONSOR_SPONSOR_ID) values (4, 1);
commit;

-- Mechanic
insert into MECHANIC (mechanic_id, first_name, last_name) values (1, 'Tucker', 'Minnock');
insert into MECHANIC (mechanic_id, first_name, last_name) values (2, 'Jarrad', 'Kmieciak');
insert into MECHANIC (mechanic_id, first_name, last_name) values (3, 'Siward', 'Reddish');
insert into MECHANIC (mechanic_id, first_name, last_name) values (4, 'Tanny', 'McGonnell');
insert into MECHANIC (mechanic_id, first_name, last_name) values (5, 'Barnie', 'Wybern');
insert into MECHANIC (mechanic_id, first_name, last_name) values (6, 'Edvard', 'Tremmel');
insert into MECHANIC (mechanic_id, first_name, last_name) values (7, 'Dionysus', 'Abthorpe');
insert into MECHANIC (mechanic_id, first_name, last_name) values (8, 'Berkly', 'Blaksland');
insert into MECHANIC (mechanic_id, first_name, last_name) values (9, 'Pincas', 'Upchurch');
insert into MECHANIC (mechanic_id, first_name, last_name) values (10, 'Oswell', 'Whilde');
commit;

-- Mechanic_racecar
insert into MECHANIC_RACECAR (RACECAR_RACECAR_ID, MECHANIC_MECHANIC_ID) VALUES (1, 1);
insert into MECHANIC_RACECAR (RACECAR_RACECAR_ID, MECHANIC_MECHANIC_ID) VALUES (1, 2);
insert into MECHANIC_RACECAR (RACECAR_RACECAR_ID, MECHANIC_MECHANIC_ID) VALUES (2, 3);
insert into MECHANIC_RACECAR (RACECAR_RACECAR_ID, MECHANIC_MECHANIC_ID) VALUES (2, 4);
insert into MECHANIC_RACECAR (RACECAR_RACECAR_ID, MECHANIC_MECHANIC_ID) VALUES (3, 5);
insert into MECHANIC_RACECAR (RACECAR_RACECAR_ID, MECHANIC_MECHANIC_ID) VALUES (3, 6);
insert into MECHANIC_RACECAR (RACECAR_RACECAR_ID, MECHANIC_MECHANIC_ID) VALUES (4, 7);
insert into MECHANIC_RACECAR (RACECAR_RACECAR_ID, MECHANIC_MECHANIC_ID) VALUES (4, 8);
commit;

-- Circuit_sponsor
insert into CIRCUIT_SPONSOR (SPONSOR_SPONSOR_ID, CIRCUIT_CIRCUIT_ID) VALUES (1, 2);
insert into CIRCUIT_SPONSOR (SPONSOR_SPONSOR_ID, CIRCUIT_CIRCUIT_ID) VALUES (1, 3);
insert into CIRCUIT_SPONSOR (SPONSOR_SPONSOR_ID, CIRCUIT_CIRCUIT_ID) VALUES (1, 4);
insert into CIRCUIT_SPONSOR (SPONSOR_SPONSOR_ID, CIRCUIT_CIRCUIT_ID) VALUES (2, 1);
insert into CIRCUIT_SPONSOR (SPONSOR_SPONSOR_ID, CIRCUIT_CIRCUIT_ID) VALUES (2, 5);
insert into CIRCUIT_SPONSOR (SPONSOR_SPONSOR_ID, CIRCUIT_CIRCUIT_ID) VALUES (2, 6);
commit;

-- Session
insert into "Session" (SESSION_ID, NAME, BEGIN_DATE, END_DATE, CIRCUIT_CIRCUIT_ID, SESSION_TYPE) VALUES (1, 'Spa 24 Hour Qualifying', to_date('15.6.2017 14:00', 'dd.mm.yyyy HH24:mi'), to_date('15.6.2017 16:00', 'dd.mm.yyyy HH24:mi'), 7, 'Qualifying');
insert into "Session" (SESSION_ID, NAME, BEGIN_DATE, END_DATE, CIRCUIT_CIRCUIT_ID, SESSION_TYPE) VALUES (2, 'Spa 24 Hour Main Race', to_date('16.6.2017 15:00', 'dd.mm.yyyy HH24:mi'), to_date('17.6.2017 15:00', 'dd.mm.yyyy HH24:mi'), 7, 'Race');
insert into "Session" (SESSION_ID, NAME, BEGIN_DATE, END_DATE, CIRCUIT_CIRCUIT_ID, SESSION_TYPE) VALUES (3, 'Misano Qualifying', to_date('22.3.2017 12:00', 'dd.mm.yyyy HH24:mi'), to_date('22.3.2017 14:00', 'dd.mm.yyyy HH24:mi'), 7, 'Qualifying');
insert into "Session" (SESSION_ID, NAME, BEGIN_DATE, END_DATE, CIRCUIT_CIRCUIT_ID, SESSION_TYPE) VALUES (4, 'Misano Sprint Race', to_date('23.3.2017 15:00', 'dd.mm.yyyy HH24:mi'), to_date('23.3.2017 18:00', 'dd.mm.yyyy HH24:mi'), 7, 'Race');
commit;

-- Qualifying
insert into QUALIFYING (SESSION_ID, TRUE_DURATION) VALUES (1, 100);
insert into QUALIFYING (SESSION_ID, TRUE_DURATION) VALUES (3, 60);
commit;

-- Race
insert into RACE (SESSION_ID, FORMATION_LAP, LAPS) VALUES (2, 1, 626);
insert into RACE (SESSION_ID, FORMATION_LAP, LAPS) VALUES (4, 1, 102);
commit;

insert into PARTICIPATION (PARTICIPATION_ID, DRIVER_GROUP_DRIVER_GROUP_ID, QUALIFYING_SESSION_ID, RACE_SESSION_ID, REGISTRATION_DATE) VALUES (1, 3, 1, 2, '1.5.2017');
insert into PARTICIPATION (PARTICIPATION_ID, DRIVER_GROUP_DRIVER_GROUP_ID, QUALIFYING_SESSION_ID, RACE_SESSION_ID, REGISTRATION_DATE) VALUES (2, 6, 1, 2, '1.5.2017');
insert into PARTICIPATION (PARTICIPATION_ID, DRIVER_GROUP_DRIVER_GROUP_ID, QUALIFYING_SESSION_ID, RACE_SESSION_ID, REGISTRATION_DATE) VALUES (3, 9, 1, 2, '1.5.2017');
insert into PARTICIPATION (PARTICIPATION_ID, DRIVER_GROUP_DRIVER_GROUP_ID, QUALIFYING_SESSION_ID, RACE_SESSION_ID, REGISTRATION_DATE) VALUES (4, 12, 1, 2, '1.5.2017');
commit;

insert into RESULTS (BEST_QUALIFYING_LAPTIME, STARTING_POSITION, PITS_COUNT, FINAL_POSITION, POINTS, INCIDENT_COUNT, PARTICIPATION_PARTICIPATION_ID) VALUES ('2:20.543', 2, 12, 1, 500, 10, 1);
insert into RESULTS (BEST_QUALIFYING_LAPTIME, STARTING_POSITION, PITS_COUNT, FINAL_POSITION, POINTS, INCIDENT_COUNT, PARTICIPATION_PARTICIPATION_ID) VALUES ('2:20.152', 3, 14, 2, 400, 10, 4);
insert into RESULTS (BEST_QUALIFYING_LAPTIME, STARTING_POSITION, PITS_COUNT, FINAL_POSITION, POINTS, INCIDENT_COUNT, PARTICIPATION_PARTICIPATION_ID) VALUES ('2:21.002', 1, 13, 3, 300, 10, 2);
insert into RESULTS (BEST_QUALIFYING_LAPTIME, STARTING_POSITION, PITS_COUNT, FINAL_POSITION, POINTS, INCIDENT_COUNT, PARTICIPATION_PARTICIPATION_ID) VALUES ('2:21.104', 4, 12, 4, 200, 10, 3);
commit;
