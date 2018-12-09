delete from DRIVER_SPONSOR;
delete from SPONSOR;
delete from DRIVER_DRIVER_GROUP;
delete from DRIVER;
delete from DRIVER_GROUP;
delete from RACECAR;
delete from CIRCUIT;
delete from TEAM;

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
commit;

-- Driver_group
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (1, 3);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (2, 2);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (3, 1);
insert into DRIVER_GROUP (DRIVER_GROUP_ID, RACECAR_RACECAR_ID) values (4, 4);
commit;

-- Driver
insert into DRIVER (driver_id, first_name, last_name, birth_date, gender, nationality, website_url) values (1, 'Nicki', 'Thiim', '17.04.1989', 0, 'DK', 'danskyjr.com');
insert into DRIVER (driver_id, first_name, last_name, birth_date, gender, nationality, website_url) values (2, 'Rubens', 'Barrichello', '22.06.1980', 0, 'IT', 'barrichello.com');
insert into DRIVER (driver_id, first_name, last_name, birth_date, gender, nationality, website_url) values (3, 'Rene', 'Rast', '11.03.1985', 0, 'DE', 'rast.com');
insert into DRIVER (driver_id, first_name, last_name, birth_date, gender, nationality, website_url) values (4, 'Jake', 'Dennis', '11.04.1988', 0, 'GB', null);
commit;

-- Driver_driver_group
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (1, 1);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (1, 2);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (4, 2);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (2, 3);
insert into DRIVER_DRIVER_GROUP (DRIVER_DRIVER_ID, DRIVER_GROUP_DRIVER_GROUP_ID) VALUES (3, 4);
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
