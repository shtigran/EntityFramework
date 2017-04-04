
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/04/2017 22:29:35
-- Generated from EDMX file: C:\Users\Tigran\Source\Repos\EntityFramework\EntityFramework\EntityFramework\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [People];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PeopleSet'
CREATE TABLE [dbo].[PeopleSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Age] int  NOT NULL,
    [Details_Id] int  NOT NULL
);
GO

-- Creating table 'DetailsSet'
CREATE TABLE [dbo].[DetailsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Country] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'PeopleSet'
ALTER TABLE [dbo].[PeopleSet]
ADD CONSTRAINT [PK_PeopleSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DetailsSet'
ALTER TABLE [dbo].[DetailsSet]
ADD CONSTRAINT [PK_DetailsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Details_Id] in table 'PeopleSet'
ALTER TABLE [dbo].[PeopleSet]
ADD CONSTRAINT [FK_PeopleDetails]
    FOREIGN KEY ([Details_Id])
    REFERENCES [dbo].[DetailsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PeopleDetails'
CREATE INDEX [IX_FK_PeopleDetails]
ON [dbo].[PeopleSet]
    ([Details_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------