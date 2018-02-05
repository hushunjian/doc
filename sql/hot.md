###首页内容列表sql
select distinct a.id,3,a.long_time as longTime from(
/*我加入的王国的国王的所有王国*/		
select t.id,t.long_time,t.uid from topic t,( select distinct t.uid from topic t,live_favorite lf where t.id =lf.topic_id and lf.uid = 298 ) m where t.uid = m.uid
union
/*我的好友的王国*/
select t.id,t.long_time,t.uid from topic t,user_friend uf where t.uid = uf.target_uid and uf.status=0 and uf.source_uid = 298
union
/*我好友的好友中，属于我所在行业的(不包括情绪王国)*/
select t.id,t.long_time,t.uid from topic t,
(select uf.target_uid from user_friend uf,( select uf.target_uid from user_friend uf where uf.source_uid = 298) uf1 where uf.source_uid =uf1.target_uid ) s
,user_profile up
where t.uid = s.target_uid and s.target_uid = up.uid and up.industry_id = 3 and t.sub_type !=1
union
/*我好友推荐的好友的王国(不包括情绪王国)*/
select t.id,t.long_time,t.uid from user_friend uf,user_friend_apply ufa,topic t where uf.source_uid = ufa.target_uid and t.uid = uf.target_uid and ufa.source_uid = 298  and t.sub_type !=1
union
/*热点王国*/
select t.id,t.long_time,t.uid  from high_quality_content h, content c,topic t where c.forward_cid = t.id  and c.status != 1
and c.rights=1 and c.type=3 and c.id=h.cid 
) a
where a.uid not in (1234,1344)
and a.id not in(
      	select data from user_dislike where uid=298 and is_like=0 and type=1
      	union all
      				select topic_id as data from topic_tag_detail where status=0 and tag_id in
		(select tag_id from user_tag where uid = 298 and type = 2)
      ) 
UNION ALL
select u.tag_id as id,16,UNIX_TIMESTAMP(MAX(i.create_time))*1000 as longTime
from user_tag u, topic_tag_detail d, topic_image i,topic t, tmp_topic_exhibition e
where u.tag_id=d.tag_id and d.status=0 and e.topic_image_id = i.id
and d.topic_id=e.topic_id and t.id = e.topic_id
and u.uid=298 and u.type=1 group by u.tag_id
order by longtime desc				   
limit 20



	
	



	
	