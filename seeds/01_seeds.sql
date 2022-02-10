INSERT INTO users (name, email, password)
VALUES (
    'Elon Musk',
    'em@example.com',
    '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
  ),
  (
    'Jeff Bezos',
    'jb@example.com',
    '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
  ),
  (
    'Bill Gates',
    'bg@example.com',
    '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
  );
INSERT INTO properties (
    owner_id,
    title,
    description,
    thumbnail_photo_url,
    cover_photo_url,
    cost_per_night,
    parking_spaces,
    number_of_bathrooms,
    number_of_bedrooms,
    country,
    street,
    city,
    province,
    post_code
  )
VALUES (
    1,
    'The Rocketship',
    'description',
    'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350',
    'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg',
    30000,
    10,
    5,
    5,
    'Canada',
    '123 Elon Street',
    'Musk City',
    'British Columbia',
    '123 TSL'
  ),
  (
    2,
    'The Forest',
    'description',
    'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350',
    'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg',
    50000,
    15,
    2,
    1,
    'Canada',
    '123 Jeff Street',
    'Bezos City',
    'Quebec',
    '123 AMZ'
  ),
  (
    3,
    'The Fence',
    'description',
    'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cs=tinysrgb&h=350',
    'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg',
    250000,
    8,
    8,
    8,
    'Canada',
    '123 Bill Street',
    'Gates City',
    'Alberta',
    '123 GAT'
  );
INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2022-02-09', '2022-02-10', 2, 1),
  ('2022-02-10', '2022-02-15', 3, 2),
  ('2022-02-16', '2022-02-25', 1, 3);
INSERT INTO property_reviews (
    guest_id,
    property_id,
    reservation_id,
    rating,
    message
  )
VALUES (1, 2, 1, 4, 'messages'),
  (2, 3, 2, 5, 'messages'),
  (3, 1, 3, 1, 'messages');