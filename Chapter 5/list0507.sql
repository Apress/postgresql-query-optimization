---#1
SELECT * FROM account WHERE lower(last_name)=’daniels’;
---#2
SELECT * FROM account WHERE last_name=’Daniels’;
---#3
SELECT * FROM account WHERE last_name=’daniels’;
---#4
SELECT * FROM account WHERE lower(last_name)=’Daniels’;
