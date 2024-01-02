SELECT
    -- Total Loan Disbursement
    SUM(LoanOriginalAmount) AS TotalLoanAmount,

    -- Average Borrower APR and Rate
    AVG(BorrowerAPR) AS AvgBorrowerAPR,
    AVG(BorrowerRate) AS AvgBorrowerRate,

    -- Net Principal and Loss Recovery Metrics
    SUM(LP_NetPrincipalLoss) AS NetPrincipalLoss,
    SUM(LP_NonPrincipalRecoveryPayments) AS NonPrincipalRecovery,
    (SUM(LP_NetPrincipalLoss) / SUM(LoanOriginalAmount)) * 100 AS PercentageNetPrincipalLoss,

    -- Average Monthly Loan Payment
    AVG(MonthlyLoanPayment) AS AvgMonthlyPayment,

    -- Gross Profitability Metrics
    SUM(LP_InterestandFees) AS TotalInterestFees,
    SUM(LP_ServiceFees + LP_CollectionFees) AS TotalServiceCollectionFees
FROM `testing_db`.`prosperloandata_temp`
WHERE LoanOriginationDate > '2009-12-31';
