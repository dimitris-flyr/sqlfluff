ALTER ROLE davide WITH PASSWORD 'hu8jmn3';
ALTER ROLE davide WITH PASSWORD NULL;
ALTER ROLE chris VALID UNTIL 'May 4 12:00:00 2015 +1';
ALTER ROLE fred VALID UNTIL 'infinity';
ALTER ROLE worker_bee SET maintenance_work_mem = '100000';
ALTER ROLE fred IN DATABASE devel SET client_min_messages TO DEFAULT;
ALTER ROLE miriam CREATEROLE CREATEDB;
ALTER USER davide WITH PASSWORD 'hu8jmn3';
ALTER USER davide WITH PASSWORD NULL;
ALTER USER chris VALID UNTIL 'May 4 12:00:00 2015 +1';
ALTER USER fred VALID UNTIL 'infinity';
ALTER USER worker_bee SET maintenance_work_mem = '100000';
ALTER USER fred IN DATABASE devel SET client_min_messages TO DEFAULT;
ALTER USER miriam CREATEROLE CREATEDB;

-- more SET tests:
ALTER ROLE fred SET testing FROM CURRENT;
ALTER ROLE fred IN DATABASE devel SET testing FROM CURRENT;
ALTER ROLE fred IN DATABASE devel SET testing TO 1234;
ALTER ROLE fred IN DATABASE devel SET testing = 1234;
ALTER ROLE fred IN DATABASE devel SET testing TO DEFAULT;
ALTER ROLE fred IN DATABASE devel SET testing = DEFAULT;
ALTER ROLE fred IN DATABASE devel SET testing = TRUE;
ALTER ROLE fred IN DATABASE devel SET testing = FALSE;
ALTER ROLE fred IN DATABASE devel SET testing = 'string value';
ALTER ROLE fred IN DATABASE devel SET testing = on, off, auto;

ALTER ROLE fred RESET ALL;
ALTER ROLE fred RESET testing;
ALTER ROLE fred IN DATABASE devel RESET ALL;
ALTER ROLE fred IN DATABASE devel RESET testing;
