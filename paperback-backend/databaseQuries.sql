create table catagory(
   
     id IDENTITY,
     name varchar(50),
     description varchar(500),
     image_url varchar(255),
     is_active boolean,
     constraint pk_id_catagory primary key(id)
     );
     