--PRC_GET_ARTIST 's'


create PROC PRC_GET_ARTIST
(
@NAME  VARCHAR(100)
)AS 
BEGIN


select name,mbid into #tmpartist from Artists  where name like '%'+@NAME+'%'

select t.name ,r.title ,e.name as 'album' from Recordings R 
Join #tmpartist T on r.mbid = t.mbid
join TblEvents E on  r.recordid = E.mbid


DROP TABLE #tmpartist
END

