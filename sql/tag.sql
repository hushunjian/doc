 select o1.tag_id,
SUM(o1.topic_count) kingdomCount,
SUM(o1.price_sum) tagPrice,
o2.uid_count tagPersons
from (
select
t4.tag_id tag_id, 
COUNT(distinct t1.id) topic_count,
SUM(distinct t1.price) price_sum
from topic t1, content t2, topic_tag_detail t3,(select id,tag,IF(id in (5,19,238,503,1175,1179,1180,1183,1184),id,pid) tag_id from topic_tag where id  in (5,19,238,503,1175,1179,1180,1183,1184) or pid in (5,19,238,503,1175,1179,1180,1183,1184)) t4
where t1.id = t2.forward_cid  and t4.id = t3.tag_id
and t2.type = 3
and t1.id = t3.topic_id
and t1.status = 0
and t3.status = 0
group by
t4.tag_id
) o1, 
(select m.tag_id,COUNT(m.uid)+FLOOR(SUM(m.read_count)/20) uid_count from(select distinct
t4.tag_id tag_id,
t1.uid,
t3.read_count
from topic_fragment t1, topic_tag_detail t2, content t3,(select id,tag,IF(id in (5,19,238,503,1175,1179,1180,1183,1184),id,pid) tag_id from topic_tag where id  in (5,19,238,503,1175,1179,1180,1183,1184) or pid in (5,19,238,503,1175,1179,1180,1183,1184)) t4
where  t4.id = t2.tag_id and
t1.topic_id = t2.topic_id
and t3.type = 3
and t1.topic_id = t3.forward_cid
and t2.status=0 ) m
 group by tag_id 
) o2
where o1.tag_id = o2.tag_id
group by 
o1. tag_id