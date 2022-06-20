-- create database resturant;
-- use resturant;


--  create table supliers
--  (supliers_id int  primary key AUTO_INCREMENT,
--  phone int(10));
 
--   insert into supliers values
--   (0, 0504058997),
--  (0, 0542417995)


-- create table restaurants
--  (restaurants_id int ,
--  city varchar(20),
--  typeof_food varchar(50),
--  supplier int, 
--  PRIMARY KEY (restaurants_id),
--  FOREIGN KEY (supplier) REFERENCES supliers(supliers_id));





--   ALTER TABLE restaurants
--   add COLUMN suppliers int(30);



 





-- INSERT INTO restaurants (delivers)
-- VALUES (1,2,1,1,2);






--  insert into restaurants values
--   (1, "Tel-Aviv", "burger",1),
--   ( 2,"Tel-Aviv",  "Sushi",2 ),
--    (3, "Ramat-Gan",  "Wok",2),
--   ( 4,"Herziliya",  "Italian",2),
--    (5, "Ramat-Gan",  "Seafood",1)


 
--  ALTER TABLE restaurants
--  add COLUMN suppliers int(30) ;

   
   

 
--  create table delivers
--   (deliver_id int ,
--   phone int,
--   ordernum int,
--   PRIMARY KEY (deliver_id),
--     FOREIGN KEY (ordernum) REFERENCES orders(order_id));

 --  insert into delivers values
--      (1,0504857663,1),
--       (2,0504858963,1),
--        (3,0505677663,4),
--      (4, 0542395789,2);
  
 --  create table users
  --  (user_id int AUTO_INCREMENT,
  --  phone int(10),
 --   favorite_restaurant int, 
  --   (user_id),
  --  FOREIGN KEY (favorite_restaurant) REFERENCES restaurants(restaurants_id));

    --  insert into users values
--       (0,0568742559,1),
--        (0, 0568741995,1 ),
--       (0,0568742559,5),
--       ( 0,0568741995,4 ),
--       (0,0568742559,3),
--       (0, 0568741995,2);

  --   DROP TABLE orders;



   -- create table orders
--     (order_id int AUTO_INCREMENT,
--     
--     delivery_man int, 
--    PRIMARY KEY (order_id),
--     FOREIGN KEY (delivery_man) REFERENCES restaurants(restaurants_id));
  
--     insert into orders values
--        (0,1),
--         (0,2  ),
--        (0,3),
--        ( 0,1 ),
--        (0,1),
--        (0, 2);
  
 --  	create table orders
--     (order_id int  primary key AUTO_INCREMENT,
--     ordered_from int,
--     delivery_man int,
--     user_num int);


--      ALTER TABLE Orders
--   ADD FOREIGN KEY (ordered_from) REFERENCES restaurants(restaurants_id);



--    CREATE TABLE allorders (
--  order_id int AUTO_INCREMENT, 
--  ordered_from int,
--  delivery_man int, 
--  user_num int, 
--  PRIMARY KEY (order_id), 
--  FOREIGN KEY (ordered_from) REFERENCES restaurants(restaurants_id), 
--  FOREIGN KEY (delivery_man) REFERENCES delivers(deliver_id), 
--  FOREIGN KEY (user_num) REFERENCES users(user_id)
-- );
   
   
   
   
   
   
   
   ALTER TABLE orders
	DROP FOREIGN KEY order_id;
   
   
   
--    doest work


--    create table orderss
--    (
--    order_id int AUTO_INCREMENT,
--     ordered_from int,
--     delivery_man int,
--     user_num int,
--     PRIMARY KEY (order_id),
--    INDEX (ordered_from),
--    INDEX (delivery_man),
--     INDEX (user_num),
--    FOREIGN KEY (ordered_from) REFERENCES restaurants(restaurants_id),
--    FOREIGN KEY (delivery_man) REFERENCES delivers(deliver_id),
--     FOREIGN KEY (user_num) REFERENCES delivers(user_id)
--  );
   
   
   
   
   
  --      create table orderss
--      (
--      order_id int  primary key AUTO_INCREMENT,
--       ordered_from int,
--        PRIMARY KEY (order_id),
--        FOREIGN KEY (ordered_from) REFERENCES restaurants(restaurants_id),
--        delivery_man int, 
--        PRIMARY KEY (order_id),
--        FOREIGN KEY (delivery_man) REFERENCES delivers(deliver_id),
--        user_num int, 
--        PRIMARY KEY (order_id),
--        FOREIGN KEY (user_num) REFERENCES users(user_id));

 





 
 

