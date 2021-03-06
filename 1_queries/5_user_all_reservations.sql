SELECT reservations.*,
  properties.*,
  AVG(rating) AS average_rating
FROM reservations
  INNER JOIN properties ON reservations.property_id = properties.id
  INNER JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
  AND end_date < now()::date
GROUP BY reservations.id,
  properties.id
ORDER BY start_date
LIMIT 10;