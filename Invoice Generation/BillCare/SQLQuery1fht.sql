CREATE TABLE [db_users] (
    [Id]       INT        IDENTITY (1, 1) NOT NULL,
    [first_name] NCHAR (30) NOT NULL,
	[last_name] NCHAR (30) NOT NULL,
    [email]    NCHAR (40) NOT NULL,
    [password] NCHAR (30) NOT NULL,
    [country]  NCHAR (30) NOT NULL,
	[state]  NCHAR (30) NOT NULL,
	[city]  NCHAR (30) NOT NULL,
	[street_1]  NCHAR (80) NULL,
	[street_2]  NCHAR (80) NULL,
	[pincode]  NCHAR (8) NOT NULL,
	[phone]  NCHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);