Create database logistics_db; USE logistics_db;
Create table delivery_partners
 (partner_id int primary key,
 partner_name varchar(50));
 
 Create table shipments(
 shipment_id int primary key,
 destination_city varchar(50),
 promised_date date,
 actual_delivery_date date);
 
 Create table delivery_logs(
 log_id int primary key,
 shipment_id int,
 partner_id int,
 delivery_status varchar(20),
 customer_rating int,
 foreign key(shipment_id) references 
 shipments(shipment_id),
 foreign key (partner_id) references 
 delivery_partners(partner_id));
 