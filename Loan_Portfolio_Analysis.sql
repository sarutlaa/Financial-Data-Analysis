-- Loan Portfolio Metrics

/* Total Loan Disbursment : This metric provides insight into the overall amount of loans represented in the table.*/
SELECT SUM(LoanOriginalAmount) AS TotalLoanAmount
FROM prosperLoanData_temp;

/*  Average Loan amount by Prosper Rating : This kind of query is useful for analyzing the average loan amounts associated with different Prosper Ratings. */
SELECT ProsperRatingAlpha, AVG(LoanOriginalAmount) AS AvgLoanAmount
FROM prosperLoanData_temp
GROUP BY ProsperRatingAlpha;
