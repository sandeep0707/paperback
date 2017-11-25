create table catagory(
   
     id auto increment,
     name varchar(50),
     description varchar(500),
     image_url varchar(255),
     is_active boolean,
     constraint pk_id_catagory primary key(id)
     );
     CREATE TABLE user_detail (
	id auto increment,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(60),
	email VARCHAR(100),
	contact_number VARCHAR(15),	
	CONSTRAINT pk_user_id PRIMARY KEY(id)
);

CREATE TABLE product (
	id auto increment,
	code VARCHAR(20),
	name VARCHAR(50),
	author VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10,2),
	is_active BOOLEAN,
	catagory_id INT,
    publisher_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	CONSTRAINT pk_product_id PRIMARY KEY (id),
 	CONSTRAINT fk_product_catagory_id FOREIGN KEY (catagory_id) REFERENCES catagory (id),
	CONSTRAINT fk_product_publisher_id FOREIGN KEY (publisher_id) REFERENCES user_detail(id),	
);	

CREATE TABLE cart (
	id int not null auto_increment,
	user_id int,
	book_code varchar(255),
    book_action varchar(30),
	CONSTRAINT fk_cart_user_id FOREIGN KEY (user_id ) REFERENCES user_detail (id),
	CONSTRAINT pk_cart_id PRIMARY KEY (id)
);