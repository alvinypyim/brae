/** Change the **** to the password */

CREATE USER 'brae'@'localhost' IDENTIFIED BY '***';

GRANT USAGE ON * . * TO 'brae'@'localhost' IDENTIFIED BY '***' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;

GRANT ALL PRIVILEGES ON `brae\_development` . * TO 'brae'@'localhost';

GRANT ALL PRIVILEGES ON `brae\_test` . * TO 'brae'@'localhost';

GRANT ALL PRIVILEGES ON `brae\_production` . * TO 'brae'@'localhost';
