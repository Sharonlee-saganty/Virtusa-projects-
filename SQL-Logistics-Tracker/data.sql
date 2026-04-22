Insert into delivery_partners values
(1, 'FastExpress'),
(2, 'QuickShip'),
(3, 'SafeCourier'),
(4, 'SpeedTrack'),
(5, 'EcoShip');

Insert into shipments values
(101, 'Hyderabad', '2026-04-01', '2026-04-01'),
(102, 'Chennai', '2026-04-02', '2026-04-04'),
(103, 'Bangalore', '2026-04-03', '2026-04-03'),
(104, 'Mumbai', '2026-04-04', '2026-04-06'),
(105, 'Delhi', '2026-04-05', '2026-04-05'),
(106, 'Hyderabad', '2026-04-06', '2026-04-08'),
(107, 'Pune', '2026-04-07', '2026-04-07'),
(108, 'Kolkata', '2026-04-08', '2026-04-10'),
(109, 'Hyderabad', '2026-04-09', '2026-04-09'),
(110, 'Chennai', '2026-04-10', '2026-04-12'),
(111, 'Delhi', '2026-04-11', '2026-04-11'),
(112, 'Mumbai', '2026-04-12', '2026-04-14');
 
 
Insert into delivery_logs values
(1, 101, 1, 'Delivered', 5),
(2, 102, 2, 'Delivered', 3),
(3, 103, 1, 'Delivered', 4),
(4, 104, 3, 'Returned', 2),
(5, 105, 2, 'Delivered', 5),
(6, 106, 3, 'Delivered', 2),
(7, 107, 4, 'Delivered', 4),
(8, 108, 5, 'Delivered', 2),
(9, 109, 1, 'Delivered', 5),
(10, 110, 2, 'Returned', 1),
(11, 111, 4, 'Delivered', 4),
(12, 112, 5, 'Delivered', 3);
