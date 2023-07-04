CREATE TABLE aircrafts (
  id serial PRIMARY KEY, 
  name character varying(100)
);

CREATE TABLE routes (
  id serial PRIMARY KEY, 
  aircraft_id integer REFERENCES aircrafts(id) on update restrict, 
  _from character varying(100), 
  _to character varying(100)
);

insert into AIRCRAFTS (name) 
values 
  ('su 1234');
insert into AIRCRAFTS (name) 
values 
  ('air455');
insert into AIRCRAFTS (name) 
values 
  ('boing 234');
insert into AIRCRAFTS (name) 
values 
  ('boing 678');
insert into ROUTES (aircraft_id, _from, _to) 
values 
  (1, 'Russia', 'France');
insert into ROUTES (aircraft_id, _from, _to) 
values 
  (2, 'Israel', 'Russia');
insert into ROUTES (aircraft_id, _from, _to) 
values 
  (3, 'Germany', 'Australia');
insert into ROUTES (aircraft_id, _from, _to) 
values 
  (4, 'Russia', 'Thailand');
  
 UPDATE 
  AIRCRAFTS 
SET 
  id = id + 100 
WHERE 
  id = 1;
  
 ALTER TABLE 
  routes 
DROP 
  CONSTRAINT routes_aircraft_id_fkey;
  
 ALTER TABLE 
  routes 
ADD 
  CONSTRAINT routes_fk FOREIGN KEY (aircraft_id) REFERENCES aircrafts ON UPDATE CASCADE;
  
 UPDATE 
  AIRCRAFTS 
SET 
  id = id + 100 
WHERE 
  id = 1;
