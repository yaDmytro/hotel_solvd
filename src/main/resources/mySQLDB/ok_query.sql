USE hotel;

INSERT INTO country(country_id,country_name)
VALUES(1, "Ukraine"), (2, "Poland"), (3, "Lithuania"), (4, "Estonia"), (5, "Finland");

INSERT INTO city(city_id, city_name, postal_code, country_id)
VALUES(1, "Kyiv", 01032, 1), (2, "Warsaw", 04080, 2), (3, "Vilnus", 04340, 3), (4, "Tallin", 10115, 4), (5, "Helsinki", 00100, 5);

INSERT INTO hotel_category(category_id, category_name)
VALUES(1, "motel"), (2, "aparthotel"), (3, "resort"), (4, "city hotel"), (5, "conference center");

INSERT INTO hotel_rating(hotel_rating_id, star_rating)
VALUES(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

INSERT INTO room_type(room_type_id, type_name)
VALUES(1, "single room"), (2, "double room"), (3, "quad room"), (4, "twin room"), (5, "studio");

INSERT INTO hotel(hotel_id, hotel_name, hotel_description, city_id, category_category_id, hotel_rating_id)
VALUES(1, "Kyiv's Bobr aparthotel", "This is aparthotle in Kyiv city center", 1, 2, 5), 
	(2, "Kyiv's Bobr motel", "This is motel near Kyiv train center", 1, 1, 4), 
    (3, "Warsaw's Bobr city hotel", "The Bobr city hotel is located in bussiness area of Warsaw", 2, 4, 5), 
    (4, "Tallins Bobr conference center hotel", "Tallins Bobr hotel is located in conference center in city center", 4, 5, 4), 
    (5, "Helsinki's Bobr resort", "Helsinki's Bobr resort is hotel for familiy holidays", 5, 3, 4);

INSERT INTO hotel_rooms(hotel_rooms_id, hotel_id, room_floor, room_floor_count)
VALUES(1, 1, 4, 40), (2, 2, 2, 36), (3, 3, 5, 50), (4, 4, 6, 54), (5, 5, 2, 60);

INSERT INTO room(room_id, room_name, room_description, hotel_id, room_type_id, current_price)
VALUES(1, "Single room", "Single room in Kyiv's Bobr aparthotel", 1, 1, 550.0),
	  (2, "Double room", "Double room in Kyiv's Bobr aparthotel", 1, 2, 950.0),
      (3, "Family room", "Family room in Kyiv's Bobr aparthotel", 1, 3, 1150.0),
      (101, "Single room", "Single room in Kyiv's Bobr motel", 2, 1, 650.0),
      (102, "Double room", "Double room in Kyiv's Bobr motel", 2, 2, 1050.0),
      (103, "Family room", "Family room in Kyiv's Bobr motel", 2, 3, 1450.0),
      (201, "Single room", "Single room in Warsaw's Bobr city hotel", 3, 1, 1050.0),
      (202, "Double room", "Double room in Warsaw's Bobr city hotel", 3, 2, 1750.0),
      (203, "Luxary room", "Luxary room in Warsaw's Bobr city hotel", 3, 4, 3000.0),
      (301, "Single room", "Single room in Tallins Bobr conference center hotel", 4, 1, 1050.0),
      (302, "Double room", "Double room in Tallins Bobr conference center hotel", 4, 2, 1800.0),
      (303, "Luxary room", "Luxary room in Tallins Bobr conference center hotel", 4, 4, 1050.0),
      (401, "Single room", "Single room in Helsinki's Bobr resort", 5, 1, 650.0),
      (402, "Double room", "Double room in Helsinki's Bobr resort", 5, 2, 1050.0),
      (403, "Family room", "Family room in Helsinki's Bobr resort", 5, 3, 1450.0);
      
INSERT INTO guest(first_name, last_name, email, phone, adress, details)
VALUES("Olena", "Vorona", "olena.vorona@ukr.net", "380544875596", "Poland, Vrozlav, Sikorsky st.12, app 51", "I need a room for 3 members in Finland"),
	  ("Ben", "Hodges", "ben.hodges@gmail.com", "15059983793", "USA, Washington DC, 14th AVE, room 451", "I need a single in Kyiv"),
      ("Denys", "Kharchenko", "d.kharchenko@yahoo.com", "380412587416", "Ukraine, Kyiv, Shevchenka st. 48/1, room 71", "I need a family room in Warsaw"),
      ("Daryna", "Mazurenko", "daryna.mazurenko@ukr.net", "380758562137", "Ukraine, Poltava, Skovorody st. 14, room 88", "I need a luxary room in Tallin"),
      ("Roy", "Geller", "roy.geller@gmail.com", "18884521505", "UK, London, Baker st. 55", "I need a family room in motel in Kyiv");
      
INSERT INTO reservation_status_catalog(reservation_status_catalog_id, status_name)
VALUES(1, "reserved"), (2, "pending"), (3, "on hold"), (4, "canceved");

INSERT INTO reservation_status_event(reservation_status_event_id, reservation_id, reservation_status_catalog_id, details, ts_created)
VALUES(1, 1, 1, "cretad reservation for 3 members in Finland", "2022-09-15 13:25:08"),
	  (2, 2, 2, "cretad reservation for 3 members in Kyiv", "2022-09-20 12:25:08"),
      (3, 3, 3, "cretad reservation for 3 members in Warsaw", "2022-09-19 11:25:08"),
      (4, 4, 1, "cretad reservation for 3 members in Tallin", "2022-09-24 10:25:08"),
      (5, 5, 2, "cretad reservation for 3 members in Kyiv", "2022-09-24 10:25:08");
      
INSERT INTO room_reserved(reserved_id, reservation_id, room_id, price)
VALUES(1, 1, 403, 1450.0),
	  (2, 2, 1, 550.0),
      (3, 3, 203, 3000.0),
      (4, 4, 303, 1050.0),
      (5, 5, 103, 1450.0);
      
INSERT INTO syncronization(syncronization_id, reservation_id, channel_temp_id, message_sent, message_received, ts)
VALUES(1, 1, 1, "message sent", "message received", "2022-09-15 13:25:08"),
	  (2, 2, 2, "message sent", "message received", "2022-09-20 12:25:08"),
      (3, 3, 1, "message sent", "message received", "2022-09-19 11:25:08"),
      (4, 4, 3, "message sent", "message received", "2022-09-24 10:25:08"),
      (5, 5, 4, "message sent", "message received", "2022-09-21 09:25:08");       

INSERT INTO reservation(reservation_id, guest_id, start_date, end_date, ts_created, ts_upload, discount_percent, total_price)
VALUES(1, 1, "2022-09-16", "2022-09-19", "2022-09-15 19:25:08", "2022-09-15 13:25:08", 10, 1450.0),
	  (2, 2, "2022-09-17", "2022-09-21", "2022-09-16 13:23:08", "2022-09-20 12:25:08", 0, 550.0),
      (3, 3, "2022-09-17", "2022-09-20", "2022-09-06 11:12:18", "2022-09-19 11:25:08", 10, 3000.0),
      (4, 4, "2022-09-20", "2022-09-25", "2022-09-19 09:22:08", "2022-09-24 10:25:08", 0, 1050.0),
      (5, 5, "2022-09-21", "2022-09-30", "2022-09-20 18:25:28", "2022-09-21 09:25:08", 10, 1450.0);

INSERT channel_temp(channel_temp_id, channel_name, details)
VALUES(1, "Airbnb", "mobile application"),
	  (2, "Booking", "web site"),
      (3, "FlipKey", "mob application"),
      (4, "HomeAway", "web sity"),
      (5, "Expedia", "web site");
      
INSERT channel_used(room_id, channel_temp_id)
VALUES(403, 1), (1, 2), (203, 1), (303, 3), (103, 4);

INSERT invoice_guest(invoice_guest_id, guest_id, reservation_id, invoice_amount, ts_issued, ts_paid, ts_canceled)
VALUES(1, 1, 1, 2000, "2022-09-15 13:25:08", "2022-09-15 13:25:08", "2022-09-15 13:25:08"),
	  (2, 2, 2, 1500, "2022-09-20 12:25:08", "2022-09-20 12:25:08", "2022-09-20 12:25:08"),
      (3, 3, 3, 1255, "2022-09-19 11:25:08", "2022-09-19 11:25:08", "2022-09-19 11:25:08"),
      (4, 4, 4, 1300, "2022-09-24 10:25:08", "2022-09-24 10:25:08", "2022-09-24 10:25:08"),
      (5, 5, 5, 1000, "2022-09-21 09:25:08", "2022-09-21 09:25:08", "2022-09-21 09:25:08");
      
UPDATE reservation
SET reservation.total_price = reservation.total_price - (reservation.discount_percent/100)*reservation.total_price;

UPDATE room
SET current_price = current_price - 0.1 * current_price
WHERE current_price BETWEEN 550 and 1200;

UPDATE hotel_category
SET category_name = "apartment hotel" WHERE category_id = 2;

UPDATE reservation_status_catalog 
SET status_name = "canceled" WHERE reservation_status_catalog_id = 4;

UPDATE hotel
SET hotel_name = "Helsinki's Bobr resort"  WHERE hotel_id = 5;

DELETE FROM channel_temp WHERE channel_name = "Expedia";

INSERT INTO country(country_id,country_name)
VALUES(6, "Ireland");

DELETE FROM country WHERE country_name = "Ireland";

INSERT INTO reservation_status_catalog(reservation_status_catalog_id, status_name)
VALUES(6, "attention");

DELETE FROM reservation_status_catalog WHERE status_name = "attention";

INSERT INTO room_type(room_type_id, type_name)
VALUES(6, "super king");

DELETE FROM room_type WHERE type_name = "super king";

INSERT INTO hotel_category(category_id, category_name)
VALUES(6, "spa resort");

DELETE FROM hotel_category WHERE category_name = "spa resort";

SELECT country_name, city_name 
FROM country INNER JOIN city ON country.country_id = city.country_id
ORDER BY country_name;

SELECT city_name, hotel_name, count(hotel_name) AS Кількість
FROM city RIGHT JOIN hotel ON city.city_id = hotel.city_id
GROUP BY city_name
ORDER BY Кількість;

SELECT city_name, hotel_name, count(hotel_name) AS Кількість
FROM city LEFT JOIN hotel ON city.city_id = hotel.city_id
GROUP BY city_name
ORDER BY Кількість;

SELECT city_name, star_rating, hotel_name
FROM 
	city
    INNER JOIN hotel ON city.city_id = hotel.city_id
    INNER JOIN hotel_rating ON hotel.hotel_rating_id = hotel_rating.hotel_rating_id
WHERE city_name IN ("Kyiv", "Warsaw", "Tallin") AND (star_rating= 4 OR star_rating = 5)  
ORDER BY star_rating;

SELECT city_name,  hotel_name, (room_floor * room_floor_count) AS Кількість_кімнат
FROM 
	city
    INNER JOIN hotel ON city.city_id = hotel.city_id
    INNER JOIN hotel_rooms ON hotel.hotel_id = hotel_rooms.hotel_rooms_id
WHERE (room_floor * room_floor_count) > 100
ORDER BY city_name;




