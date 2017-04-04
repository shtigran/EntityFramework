
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/04/2017 23:11:34
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

IF OBJECT_ID(N'[dbo].[FK_PeopleDetails]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PeopleSet] DROP CONSTRAINT [FK_PeopleDetails];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[PeopleSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PeopleSet];
GO
IF OBJECT_ID(N'[dbo].[DetailsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetailsSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PeopleSet'
CREATE TABLE [dbo].[PeopleSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Age] int  NOT NULL
);
GO

-- Creating table 'DetailsSet'
CREATE TABLE [dbo].[DetailsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Country] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL,
    [People1_Id] int  NOT NULL
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

-- Creating foreign key on [People1_Id] in table 'DetailsSet'
ALTER TABLE [dbo].[DetailsSet]
ADD CONSTRAINT [FK_PeopleDetails1]
    FOREIGN KEY ([People1_Id])
    REFERENCES [dbo].[PeopleSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PeopleDetails1'
CREATE INDEX [IX_FK_PeopleDetails1]
ON [dbo].[DetailsSet]
    ([People1_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------