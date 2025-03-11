use project;
create table admin
(
	a_id int(4) primary key ,
    a_name varchar(20),
    a_pwd varchar(15),
    a_mob varchar(15),
    a_email varchar(30)
);
use project;
create table category
(
	c_id int(4) primary key ,
    c_name varchar(20),
    c_descrip varchar(100),
    c_image varchar(100)
    
);
create table sub_cate
(
	s_id int(4) primary key ,
    c_id int(4) references category,
    s_name varchar(20),
    s_descrip varchar(100)
);
create table ser_prov
(
	p_id int(4) primary key ,
    c_id int(4) references category,
    p_name varchar(20),
    p_pwd varchar(16),
    p_for_ans varchar(20),
    p_mob varchar(15),
    p_email varchar(30),
    p_add varchar(100)
);
create table ser_det
(
	ps_id int(4) primary key ,
    p_id int(4) references ser_pro,
    ps_srno int(6)  ,
    ps_item varchar(20),
    ps_descrip varchar(100),
    ps_image varchar(100)
    
);
create table client
(
	cl_id int(4) primary key ,
    cl_name varchar(20),
    cl_pwd varchar(16),
    cl_for_ans varchar(20),
    cl_mob varchar(15),
    cl_email varchar(30),
    cl_add varchar(100)
);







