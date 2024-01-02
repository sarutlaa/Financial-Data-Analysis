-- Financial Performance and Borrower Metrics

/* Average Borrower APR and Rate: The average cost of borrowing for the loans represented in the table.*/
SELECT AVG(BorrowerAPR) AS AvgBorrowerAPR, AVG(BorrowerRate) AS AvgBorrowerRate
FROM prosperLoanData_temp;

/* Monthly Loan Performance Overview*/
SELECT 
    DATE_FORMAT(LoanOriginationDate, '%Y-%m-01') AS Month,
    DATE_FORMAT(LoanOriginationDate, '%Y') AS Year,
    SUM(LoanOriginalAmount) AS TotalDisbursement,
    ROUND(SUM(LP_CustomerPayments), 0) AS TotalPaid,
    ROUND(AVG(EstimatedReturn), 2) AS AverageProfit,
    ROUND(AVG(EstimatedLoss), 2) AS AverageLossRate,
    ROUND(AVG(DebtToIncomeRatio),2) as debtincome
FROM prosperloandata_temp
WHERE LoanOriginationDate > '2009-12-31'
GROUP BY 1, 2
ORDER BY 1;

