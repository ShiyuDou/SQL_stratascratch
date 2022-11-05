/*
1. sum(unit_price * quantity) group by book
2. print bookId and #sum
3. #sum = 0 assign 0
*/

SELECT b.book_id, COALESCE(SUM(d.quantity * b.unit_price), 0) AS revenue
FROM amazon_books_order_details d 
FULL JOIN amazon_books b ON d.book_id = b.book_id
GROUP BY b.book_id