drop table appointment;
drop table patient;
drop table doctor;
drop table Services;
drop table hospital;


Create table hospital(
hospital_id varchar(7),
hospital_name varchar(20),
contact_no numeric(9,0),
e_mail varchar(40),
region varchar(20),
primary key(hospital_id)
);

Create table Services(
services_id varchar(40),
fee number(10),
hospital_id varchar(7),
primary key(services_id),
foreign key(hospital_id) references hospital(hospital_id)
);

Create table doctor(
doctor_id varchar(7),
doctor_name varchar(30),
contact_no numeric(9,0),
e_mail varchar(40),
specialization varchar(20),
hospital_id varchar(7),
primary key(doctor_id),
foreign key(hospital_id) references hospital(hospital_id)
);
Create table patient(
patient_id varchar(7),
patient_name varchar(30),
gender varchar(7),
nationality varchar(30),
contact_no numeric(9,0),
blood_group varchar(3),
primary key(patient_id)
);

Create table appointment(
appointment_id varchar(7),
hospital_id varchar(7),
doctor_id varchar(7),
patient_id varchar(7),
foreign key(hospital_id) references hospital(hospital_id),
foreign key(doctor_id) references doctor(doctor_id),
foreign key(patient_id) references patient(patient_id)
);

alter table patient add e_mail varchar(40);
alter table patient modify e_mail varchar(30);
alter table patient rename column e_mail to e_mail2;
