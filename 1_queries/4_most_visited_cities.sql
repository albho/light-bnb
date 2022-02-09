SELECT city,
  COUNT(reservations) AS total_reservations
FROM properties
  INNER JOIN reservations ON properties.id = reservations.property_id
GROUP BY city
ORDER BY total_reservations DESC;