#delayed shipment query

select * from shipments where 
actual_delivery_date >promised_date;

# performance ranking 
select dp.partner_name ,
count(dl.delivery_status) as total_orders,
sum(dl.delivery_status ="Delivered") as successful_deliveries,
sum(dl.delivery_status ="Returned") as returned_deliveries
from delivery_partners dp
join delivery_logs dl on dp.partner_id = dl.partner_id
group by dp.partner_name;

#zone filter
select destination_city , count(*) as total_orders from shipments 
group by destination_city 
order by total_orders desc 
limit 1;

#scorecard

select dp.partner_name ,
count(*) as total_orders,
sum(s.actual_delivery_date > s.promised_date) as delayed_orders
from delivery_partners dp
join delivery_logs dl on dp.partner_id = dl.partner_id
join shipments s on dl.shipment_id =s.shipment_id
group by dp.partner_name
order by delayed_orders ASC;
