
insert into hospital(hospital_id,hospital_name,contact_no,e_mail,region)values('1','Popular',987654321,'popular@gmail.com','Mymensingh');
insert into hospital(hospital_id,hospital_name,contact_no,e_mail,region)values('2','Delta',987654301,'delta@gmail.com','Mymensingh');
insert into hospital(hospital_id,hospital_name,contact_no,e_mail,region)values('3','HealthandHope',987654300,'healthandHope@gmail.com','Mymensingh');
insert into hospital(hospital_id,hospital_name,contact_no,e_mail,region)values('4','IbneSina',987654000,'IbneSinar@gmail.com','Mymensingh');
insert into hospital(hospital_id,hospital_name,contact_no,e_mail,region)values('5','Rainbow',907654321,'Rainbow@yahoo.com','Mymensingh');
insert into hospital(hospital_id,hospital_name,contact_no,e_mail,region)values('6','Ayesha',987054321,'Ayesha@yahoo.com','Mymensingh');
insert into hospital(hospital_id,hospital_name,contact_no,e_mail,region)values('7','CityMedical',987604321,'CityMedical@gmail.com','Khulna');
insert into hospital(hospital_id,hospital_name,contact_no,e_mail,region)values('8','BangladeshMedical',980054321,'BangladeshMedical@gmail.com','Dhaka');
insert into hospital(hospital_id,hospital_name,contact_no,e_mail,region)values('9','IslamiaMedical',987650000,'IslamiaMedical@gmail.com','Dhaka');
insert into hospital(hospital_id,hospital_name,contact_no,e_mail,region)values('10','KhulnaMedical',907654301,'KMC@gmail.com','Khulna');

insert into Services(services_id,fee,hospital_id)values('1',500,'1');
insert into Services(services_id,fee,hospital_id)values('2',500,'2');
insert into Services(services_id,fee,hospital_id)values('3',800,'3');
insert into Services(services_id,fee,hospital_id)values('4',800,'4');
insert into Services(services_id,fee,hospital_id)values('5',800,'5');
insert into Services(services_id,fee,hospital_id)values('6',700,'6');
insert into Services(services_id,fee,hospital_id)values('7',700,'7');
insert into Services(services_id,fee,hospital_id)values('8',500,'8');
insert into Services(services_id,fee,hospital_id)values('9',500,'9');
insert into Services(services_id,fee,hospital_id)values('10',600,'10');

insert into doctor(doctor_id,doctor_name,contact_no,e_mail,specialization,hospital_id)values('3','Dr.tituNath',920007890,'titu012@gmail.com','Medicine','1');
insert into doctor(doctor_id,doctor_name,contact_no,e_mail,specialization,hospital_id)values('1','Dr.Dev',920007891,'dev321@gmail.com','Surgeon','2');
insert into doctor(doctor_id,doctor_name,contact_no,e_mail,specialization,hospital_id)values('2','Dr.MahimaSen',920007892,'mahima987@gmail.com','gynecologist','3');
insert into doctor(doctor_id,doctor_name,contact_no,e_mail,specialization,hospital_id)values('5','Dr.Mahmuda',920007893,'mahmuda99@gmail.com','gynecologist','4');
insert into doctor(doctor_id,doctor_name,contact_no,e_mail,specialization,hospital_id)values('4','Dr.DebasishRoy',920007894,'roy33@gmail.com','Medicine','5');
insert into doctor(doctor_id,doctor_name,contact_no,e_mail,specialization,hospital_id)values('6','Dr.Juthi',920007895,'juthi77@gmail.com','Medicine','6');
insert into doctor(doctor_id,doctor_name,contact_no,e_mail,specialization,hospital_id)values('8','Dr.Rozina',920007896,'rozina550@gmail.com','gynecologist','7');
insert into doctor(doctor_id,doctor_name,contact_no,e_mail,specialization,hospital_id)values('7','Dr.EmdadulIslam',920007897,'EmdadulIslam@gmail.com','Surgeon','8');
insert into doctor(doctor_id,doctor_name,contact_no,e_mail,specialization,hospital_id)values('9','Dr.PuzaBisshas',920007898,'PuzaBisshas98@gmail.com','Surgeon','9');
insert into doctor(doctor_id,doctor_name,contact_no,e_mail,specialization,hospital_id)values('10','Dr.Hosna',920007899,'Hosna789@gmail.com','Medicine','10');


insert into patient(patient_id,patient_name,gender,nationality,contact_no,blood_group)values('1','Jonaki','female','Bangladeshi',714558293,'O+');
insert into patient(patient_id,patient_name,gender,nationality,contact_no,blood_group)values('2','Nusrat','female','Bangladeshi',714558294,'A+');
insert into patient(patient_id,patient_name,gender,nationality,contact_no,blood_group)values('3','Jahan','female','Bangladeshi',714558295,'O+');
insert into patient(patient_id,patient_name,gender,nationality,contact_no,blood_group)values('4','Tanzila','female','Bangladeshi',714558296,'AB+');
insert into patient(patient_id,patient_name,gender,nationality,contact_no,blood_group)values('5','Surovi','female','Bangladeshi',714558297,'B+');
insert into patient(patient_id,patient_name,gender,nationality,contact_no,blood_group)values('6','Nafiz','male','Bangladeshi',714558298,'O+');
insert into patient(patient_id,patient_name,gender,nationality,contact_no,blood_group)values('7','Anis','male','Bangladeshi',714558299,'A-+');
insert into patient(patient_id,patient_name,gender,nationality,contact_no,blood_group)values('8','Jui','female','Bangladeshi',714558200,'B+');
insert into patient(patient_id,patient_name,gender,nationality,contact_no,blood_group)values('9','Shanto','male','Bangladeshi',714558201,'O+');
insert into patient(patient_id,patient_name,gender,nationality,contact_no,blood_group)values('10','Tushar','male','Bangladeshi',714558203,'O+');

insert into appointment(appointment_id,hospital_id,doctor_id,patient_id)values('1','1','3','1');
insert into appointment(appointment_id,hospital_id,doctor_id,patient_id)values('2','2','1','2');
insert into appointment(appointment_id,hospital_id,doctor_id,patient_id)values('3','3','2','3');
insert into appointment(appointment_id,hospital_id,doctor_id,patient_id)values('4','4','4','4');
insert into appointment(appointment_id,hospital_id,doctor_id,patient_id)values('5','5','5','5');
insert into appointment(appointment_id,hospital_id,doctor_id,patient_id)values('6','6','6','6');
insert into appointment(appointment_id,hospital_id,doctor_id,patient_id)values('7','7','7','7');
insert into appointment(appointment_id,hospital_id,doctor_id,patient_id)values('8','8','8','8');
insert into appointment(appointment_id,hospital_id,doctor_id,patient_id)values('9','9','9','9');
insert into appointment(appointment_id,hospital_id,doctor_id,patient_id)values('10','10','10','10');




select * from hospital where region='Mymensingh';
select patient_name from patient where blood_group='A+';
select doctor_name from doctor where hospital_id=(select hospital_id from hospital where contact_no=987654321);

update patient set blood_group='AB+' where patient_id='3';
select * from patient where patient_id='3';

insert into patient(patient_id,patient_name,gender,nationality,contact_no,blood_group)values('11','abc','male','Bangladeshi',714559203,'O+');
delete from patient where patient_id='11';

select doctor_name from doctor where specialization like 'M%' union select doctor_name from doctor where specialization like 'S%'; 
select patient_name from patient where blood_group like 'O%';

select count(*) from appointment;
select count(distinct region) as no_of_region from hospital;

select avg(fee) from Services;
select sum(fee) from Services;

select hospital_name from hospital where hospital_id=(select hospital_id from doctor where doctor_id=(select doctor_id from appointment where appointment_id='1'));

select * from patient where gender='female' and blood_group in (select blood_group from patient where blood_group like 'O+');

select * from hospital where hospital_id>all(select hospital_id from Services where fee>600);
select * from hospital where hospital_id>some(select hospital_id from Services where fee>600);


select * from patient where blood_group like 'A%';
select * from doctor where specialization like 'M%';

select * from doctor natural join appointment where doctor_id='1';
select doctor_name from doctor natural join appointment where doctor_id='1';

create view doctor_details as select doctor_name,e_mail,specialization from doctor;
select * from doctor_details;