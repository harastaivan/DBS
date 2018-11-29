#!/bin/bash
echo "" > driver_group.sql
auto_increment=1
for racecar_id in {1..200}
do
	for i in {0..2}
	do
		echo "insert into driver_group (driver_group_id, racecar_racecar_id) values ($auto_increment, $racecar_id);" >> driver_group.sql
		auto_increment=$((auto_increment + 1))
	done
done
echo "commit;" >> driver_group.sql
