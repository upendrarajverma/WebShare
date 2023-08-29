create database WebShare;

create table Users(
UserID int not null primary key identity(1,1),
First_Name varchar(100) not null,
Last_Name varchar (100) null,
Email varchar(100) not null,
Password varchar(max) not null,
MobileNo varchar(10) not null,
ProfilePic varchar(max) null,
Address varchar(max) null,
State varchar(50) null,
Country varchar(50) null,
IsActive bit not null,
IsDeleted bit not null,
CreatedDate datetime not null,
CreatedBy int not null,
UpdatedDate datetime not null,
UpdatedBy int not null,
)


alter table users add constraint [def_UserActive_1] default((1)) for [IsActive];
alter table users add constraint [def_UserDeleted_2] default((0)) for [IsDeleted];
alter table users add constraint [def_UserCreatedDate_3] default(getdate()) for [CreatedDate];
alter table users add constraint [def_UserUpdatedDate_4] default(getdate()) for [UpdatedDate];
alter table users add constraint [def_UserCreatedBy_5] default((1)) for [CreatedBy];
alter table users add constraint [def_UserUpdatedBy_6] default((1)) for [UpdatedBy];



--CREATE PROCEDURE [Sp_LoginUser]
--	-- Add the parameters for the stored procedure here
--	@Action varchar(10),
--	@Email varchar(100)=null,
--	@Password varchar(max)=null,
--	@MobileNo varchar(10) = null

--AS
--BEGIN
--	-- SET NOCOUNT ON added to prevent extra result sets from
--	-- interfering with SELECT statements.
--	SET NOCOUNT ON;

--    -- Insert statements for procedure here
--	if @Action = 'Login'
--		select [UserID] from Users where
--			[Email] = @Email or [MobileNo] = @MobileNo and [Password] = @Password
--END