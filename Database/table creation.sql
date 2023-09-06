create table Areas
(

Name varchar(100),
aliases varchar(100), type varchar(100), ISO_codes varchar(100), begin_Dates date, end_dates date, disambiguation_comment varchar(300), 
MBID int not null identity(1,1)

)
create table Artists
(

    Name varchar(100), 
	sort_name varchar(100), 
	areas varchar(100), 
	IPI varchar(100), 
	ISNI varchar(100), 
	aliases varchar(100), Artist_type varchar(100), 
	begin_dates date
	, End_dates date, 
	disambiguation_comment varchar(300), 
	MBID int  not null
)
|create table  TblEvents(
    Name varchar(100), aliases varchar(100), type varchar(100), begin_dates date, end_dates date, time datetime, setlist varchar(100), disambiguation_comment varchar(300), 
	MBID int not null
	)
create table  Genres
(
    Name varchar(100), aliases varchar(100), disambiguation_comment varchar(300), MBID int 

)
create table  Instruments
(
    Name varchar(100), description varchar(100), aliases varchar(100), type varchar(100), disambiguation_comment varchar(100), MBID int 

	)
	create table Labels (
    Name varchar(100), area varchar(100), IPI varchar(100), ISNI varchar(100), aliases varchar(100), type varchar(100), code varchar(100), begin_dates date ,end_dates date, disambiguation_comment varchar(300), MBID int 

	)
	create table Mediums
	(
    Format varchar(100), list_of_tracks varchar(200) 
	)
	create table Places
	(
    Name varchar(100), aliases varchar(100), area varchar(100), type varchar(100), code varchar(100), begin_Dates date, end_Dates date, disambiguation_comment varchar(300), MBID int 
	)
	create table Recordings
	(
    Title varchar(100), artist_credit varchar(100) , duration varchar(100), ISRC varchar(100), PUIDs varchar(100), disambiguation_comment varchar(300), MBID int , recordid int not null identity (1,1)
	)
	create table ReleaseGroups
	(
    Title varchar(100), artist_credit varchar(100), type varchar(100), disambiguation_comment varchar(300), MBID int 

	)
	create table 	Releases
	(
    Title varchar(100), artist_credit varchar(100), type varchar(100), status varchar(100), language varchar(100), dates  date, country varchar(100), label varchar(100), catalog_number varchar(100), barcode varchar(100), medium varchar(100), disc_ID varchar(100) , data_ASIN varchar(100), disambiguation_comment varchar(300), MBID int 
	)
	create table Series
	(
    Name varchar(100), aliases varchar(100), type varchar(100), disambiguation_comment varchar(300), MBID int
	)
	create table Works
	(
    Title varchar(100), ISWC varchar(100), disambiguation_comment varchar(300), MBID  int 

	)
	