#1
CREATE OR REPLACE FUNCTION num_passengers(p_flight_id int) RETURNS integer;

#2
CREATE OR REPLACE FUNCTION num_passengers(p_airport_code text, p_departure date) RETURNS integer;

#3
CREATE OR REPLACE FUNCTION num_passengers(p_flight_no text, p_departure date) RETURNS integer;

#4
CREATE OR REPLACE FUNCTION num_passengers(p_flight_no text) RETURNS numeric;

#5
CREATE OR REPLACE FUNCTION num_passengers(p_flight_id int) RETURNS numeric;
