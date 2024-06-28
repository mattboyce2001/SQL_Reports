select 
   
  a.daterecorded,
a.action,
  a.notes as rolename,
 u.username
from tbadminlog a
    left join tbuser u on u.userid = a.userid
    --left join tbuser u1 on u1.userid = a.DelegatedUserId
where
a.notes = 'Administrator' and adminlogsectionid = 4 and u.username != 'mahesh.bitla@thycotic.com'
