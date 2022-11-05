-- Q1
SELECT AccountNo,
       MAX(TransactionAmount) AS max_amt
FROM tableAmt
GROUP BY AccountNo

-- Q2
WITH temp AS(
   SELECT AccountNo,
          MAX(TransactionAmount) AS max_amt
   FROM tableAmt
   GROUP BY AccountNo, TransactionDate
)
SELECT AccountNo,
       TransactionDate
FROM temp

-- Q3
WITH temp AS(
SELECT AccountNo,
       TransactionAmount
FROM tableAmt
GROUP BY TransactionDate DESC) 

SELECT sum(TransactionAmount)
FROM temp
GROUP BY AccountNo