use studentDb;

create table gift_recipients(recipient_id int primary key auto_increment, name varchar(60), observation varchar(255));

describe gift_recipients;

create table gift(gift_id int primary key auto_increment, name varchar(60), category varchar(60), recipient_id int,
					constraint recipient_id foreign key (recipient_id) references gift_recipients(recipient_id));
                    
describe gift;

Insert into gift_recipients(name, observation) values("John", "Friend"),("Maria","Student"),("Markus","Teacher"),("Susanna","Friend"),
													 ("Anthony","Teacher"),("Zack","Student");

select * from gift_recipients;

Insert into gift(name,category,recipient_id) values("Iphone 15", "Tecnology",1),("Laptop","Tecnology",2),("TV","Electro",3),
												   ("Airfryer", "Electro",4), ("Printer","Tecnology",1), ("Monitor","Tecnology",2);
                                                   
select * from gift;

-- Left Outer Join -> Display all values from gift_recipients table with and without correspondences on gift table.
Select r.name, g.name, g.category, g.recipient_id from gift_recipients r left outer join gift g on r.recipient_id = g.recipient_id;

-- Right Outer Join -> Display all values from gift_recipients table with correspondences on gift table.
Select r.name, g.name, g.category, g.recipient_id from gift_recipients r right outer join gift g on r.recipient_id = g.recipient_id;

-- Full Outer Join -> Not supported 
Select r.name, g.name, g.category, g.recipient_id from gift_recipients r  join  gift g on r.recipient_id = g.recipient_id;