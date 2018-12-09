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