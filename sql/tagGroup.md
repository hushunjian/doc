## 用户所有喜欢的标签SQL
### 3.0.5(product)
SELECT DISTINCT t.id AS tagId,
                t.tag AS tagName,
                t.cover_img AS coverImg
FROM topic_tag t,

  (SELECT tag_id
   FROM user_tag
   WHERE UID=295
     AND TYPE =1) userlike,
     topic_tag_detail d
WHERE t.id=userlike.tag_id
  AND t.status = 0
  AND d.tag_id = t.id
  AND d.topic_id IN
    (SELECT DISTINCT t.id
     FROM topic t,
          topic_fragment f
     WHERE t.id = f.topic_id
       AND f.create_time > DATE_ADD(NOW(),interval -5 DAY))
  AND t.id IN
    (SELECT tag_id
     FROM topic_tag_detail
     GROUP BY tag_id
     HAVING COUNT(topic_id)>5)
## 用户所有的行为标签
###3.0.5(product)
SELECT DISTINCT t.id AS tagId,
                t.tag AS tagName,
                t.cover_img AS coverImg
FROM topic_tag t,

  (SELECT tag_id
   FROM user_tag
   WHERE UID=295
     AND TYPE =1) userlike,
     topic_tag_detail d
WHERE t.id=userlike.tag_id
  AND t.status = 0
  AND d.tag_id = t.id
  AND d.topic_id IN
    (SELECT DISTINCT t.id
     FROM topic t,
          topic_fragment f
     WHERE t.id = f.topic_id
       AND f.create_time > DATE_ADD(NOW(),interval -5 DAY))
  AND t.id IN
    (SELECT tag_id
     FROM topic_tag_detail
     GROUP BY tag_id
     HAVING COUNT(topic_id)>5)
##优先推荐自己喜欢标签的子级体系标签
###3.0.5(product)
SELECT DISTINCT 
  m.tagId,
  m.tagName,
  m.cover_img 
FROM
  (SELECT 
    t.id AS tagId,
    t.tag AS tagName,
    t.cover_img 
  FROM
    topic_tag t,
    user_tag u 
  WHERE u.type = 1 
    AND t.is_sys = 1 
    AND t.status = 0 
    AND u.tag_id = t.pid 
    AND uid = 295 
  UNION
  SELECT 
    t.id AS tagId,
    t.tag AS tagName,
    t.cover_img 
  FROM
    topic_tag t 
  WHERE t.is_sys = 1 
    AND t.status = 0) m,
  topic_tag_detail d 
WHERE d.tag_id = m.tagId 
  AND d.topic_id IN 
  (SELECT DISTINCT 
    t.id 
  FROM
    topic t,
    topic_fragment f 
  WHERE t.id = f.topic_id 
    AND f.create_time > DATE_ADD(NOW(), INTERVAL - 1 DAY)) 
  AND m.tagId IN 
  (SELECT 
    tag_id 
  FROM
    topic_tag_detail 
  GROUP BY tag_id 
  HAVING COUNT(topic_id) > 5)
## 查询所有标签下王国信息
###3.0.5(product)
  	 select 
  o1.tag_id,
  SUM(o1.topic_count) kingdomCount,
  SUM(o1.price_sum) tagPrice,
  o2.uid_count tagPersons 
FROM
  (SELECT 
    t4.tag_id tag_id,
    COUNT(DISTINCT t1.id) topic_count,
    SUM(DISTINCT t1.price) price_sum 
  FROM
    topic t1,
    content t2,
    topic_tag_detail t3,
    (SELECT 
      id,
      id AS tag_id 
    FROM
      topic_tag 
    WHERE id IN (5, 19, 238, 503, 1175, 1179, 1180, 1183, 1184) 
    UNION
    SELECT 
      id,
      pid AS tag_id 
    FROM
      topic_tag 
    WHERE pid IN (5, 19, 238, 503, 1175, 1179, 1180, 1183, 1184)) t4 
  WHERE t1.id = t2.forward_cid 
    AND t4.id = t3.tag_id 
    AND t2.type = 3 
    AND t1.id = t3.topic_id 
    AND t1.status = 0 
    AND t3.status = 0 
  GROUP BY t4.tag_id) o1,
  (SELECT x.tag_id,x.userCount+FLOOR(y.readcount / 20) uid_count
FROM (
SELECT m2.tag_id,COUNT(DISTINCT t1.uid) AS userCount
FROM (
SELECT t2.topic_id,t4.tag_id
FROM topic_tag_detail t2,(
  SELECT id,id AS tag_id FROM topic_tag WHERE id IN (5, 19, 238, 503, 1175, 1179, 1180, 1183, 1184) 
  UNION
  SELECT id,pid AS tag_id FROM topic_tag WHERE pid IN (5, 19, 238, 503, 1175, 1179, 1180, 1183, 1184)
) t4
WHERE t2.status=0
AND t2.tag_id=t4.id 

GROUP BY t4.tag_id,t2.topic_id
) m2,topic_fragment t1
WHERE m2.topic_id=t1.topic_id
AND t1.status=1
GROUP BY m2.tag_id
) X,(
SELECT m.tag_id,SUM(t3.read_count) AS readcount
FROM (
SELECT t2.topic_id,t4.tag_id
FROM topic_tag_detail t2,(
  SELECT id,id AS tag_id FROM topic_tag WHERE id IN (5, 19, 238, 503, 1175, 1179, 1180, 1183, 1184) 
  UNION
  SELECT id,pid AS tag_id FROM topic_tag WHERE pid IN (5, 19, 238, 503, 1175, 1179, 1180, 1183, 1184)
) t4
WHERE t2.status=0
AND t2.tag_id=t4.id 

GROUP BY t4.tag_id,t2.topic_id
) m,content t3
WHERE m.topic_id=t3.forward_cid AND t3.type=3
GROUP BY m.tag_id
) Y
WHERE x.tag_id=y.tag_id) o2 
  WHERE o1.tag_id = o2.tag_id 
  GROUP BY o1.tag_id 
  
###3.1.0(product)   
  	 select 
  o1.tag_id,
  SUM(o1.topic_count) kingdomCount,
  SUM(o1.price_sum) tagPrice,
  o2.uid_count tagPersons 
FROM
  (SELECT 
    t4.id tag_id,
    COUNT(DISTINCT t1.id) topic_count,
    SUM(DISTINCT t1.price) price_sum 
  FROM
    topic t1,
    content t2,
    topic_tag_detail t3,
    topic_tag t4
  WHERE t1.id = t2.forward_cid 
    AND t4.id = t3.tag_id 
    AND t2.type = 3 
    AND t1.id = t3.topic_id 
    AND t1.status = 0 
    AND t3.status = 0 
    and t4.id in (5, 19, 238, 503, 1175, 1179, 1180, 1183, 1184)
  GROUP BY t4.id) o1,
  (SELECT x.tag_id,x.userCount+FLOOR(y.readcount / 20) uid_count
FROM (
SELECT m2.id as tag_id,COUNT(DISTINCT t1.uid) AS userCount
FROM (
SELECT t2.topic_id,t4.id
FROM topic_tag_detail t2,topic_tag t4
WHERE t2.status=0
AND t2.tag_id=t4.id 
and t4.id in (5, 19, 238, 503, 1175, 1179, 1180, 1183, 1184) 
GROUP BY t4.id,t2.topic_id
) m2,topic_fragment t1
WHERE m2.topic_id=t1.topic_id
AND t1.status=1
GROUP BY m2.id
) X,(
SELECT m.id as tag_id,SUM(t3.read_count) AS readcount
FROM (
SELECT t2.topic_id,t4.id
FROM topic_tag_detail t2,topic_tag t4
WHERE t2.status=0
AND t2.tag_id=t4.id 
and t4.id  IN (5, 19, 238, 503, 1175, 1179, 1180, 1183, 1184)
GROUP BY t4.id,t2.topic_id
) m,content t3
WHERE m.topic_id=t3.forward_cid AND t3.type=3
GROUP BY m.id
) Y
WHERE x.tag_id=y.tag_id) o2 
  WHERE o1.tag_id = o2.tag_id 
  GROUP BY o1.tag_id 