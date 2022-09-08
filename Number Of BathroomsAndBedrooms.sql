SELECT AVG(bathrooms), AVG(bedrooms), city, property_type
FROM airbnb_search_details
GROUP BY city, property_type;