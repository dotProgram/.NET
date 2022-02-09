CREATE TABLE [userBusinessDetails] (
    [Id]       INT        IDENTITY (1, 1) NOT NULL,
    [company_name] NCHAR (30) NOT NULL,
	[business_type] NCHAR (30) NOT NULL,
    [financial_year]    NCHAR (10) NOT NULL,
   
    [b_country]  NCHAR (30) NOT NULL,
	
    PRIMARY KEY CLUSTERED ([Id] ASC)
);