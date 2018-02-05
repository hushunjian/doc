#用户所有喜欢的标签
select distinct t.id as
tagId,t.tag as tagName,
t.cover_img as coverImg
from
topic_tag t,
(select tag_id from user_tag where uid=295 and type =1) userlike
,topic_tag_detail d
where t.id=userlike.tag_id and t.status = 0
and d.tag_id = t.id 
and d.topic_id in (select distinct t.id from topic t,topic_fragment f where t.id = f.topic_id and f.create_time > DATE_ADD(NOW(),interval -5 day))
and t.id in(select tag_id from topic_tag_detail group by tag_id having COUNT(topic_id)>5)
	    
	    
#用户所有的行为标签	        
select  distinct tt.id as tagId,tt.tag as tagName,tt.cover_img as coverImg,ut.score from topic_tag tt,user_tag ut,topic_tag_detail d
where tt.id = ut.tag_id and ut.type = 0 and ut.uid = 295 and ut.score>20
and d.tag_id = tt.id 
and d.topic_id in (select distinct t.id from topic t,topic_fragment f where t.id = f.topic_id and f.create_time > DATE_ADD(NOW(),interval -5 day))
and tt.id in(select tag_id from topic_tag_detail group by tag_id having COUNT(topic_id)>5)	         
order by ut.score limit 10



#优先推荐自己喜欢的父标签的子级体系标签
select distinct m.tagId,m.tagName,m.cover_img from( select t.id as tagId,t.tag as tagName,t.cover_img from topic_tag t,user_tag u where  u.type=1 and t.is_sys = 1 and t.status=0 and u.tag_id = t.pid and uid= 295
union 
select t.id as tagId,t.tag as tagName,t.cover_img from topic_tag t where t.is_sys = 1 and t.status=0) m,topic_tag_detail d
where 
d.tag_id = m.tagId
and d.topic_id in (select distinct t.id from topic t,topic_fragment f
where t.id = f.topic_id and f.create_time > DATE_ADD(NOW(),interval -1 day))
and m.tagId in(select tag_id from topic_tag_detail group by tag_id having
COUNT(topic_id)>5)
	    
