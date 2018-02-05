SELECT 
h.id hid,
c.id,
c.uid,
c.title,
c.forward_cid,
c.feeling,
c.type,
c.conver_image,
c.forward_title,
c.forward_url,
c.content_type,
c.thumbnail,
c.hot_value,
c.like_count,
c.review_count,
c.person_count,
c.favorite_count,
c.read_count,
c.read_count_dummy,
c.authorization,
c.create_time,
c.status,
c.content,
c.rights,
c.update_time
FROM
content c join high_quality_content h on c.id = h.cid
LEFT JOIN topic t ON c.forward_cid = t.id
WHERE c.rights = 1
AND c.type = 3
AND h.id NOT IN (120 , 121, 123, 125)
AND c.uid NOT IN (295 , 296)
AND c.forward_cid NOT IN (
	SELECT 
		DATA
	FROM
		user_dislike
	WHERE uid = 298 
	AND is_like = 0 AND TYPE = 1 
	UNION ALL 
	SELECT 
		topic_id AS DATA
	FROM
		topic_tag_detail
	WHERE STATUS = 0
	AND tag_id IN (1271 , 1272, 1273, 1275)
)
and c.status != 1 
AND UNIX_TIMESTAMP(c.update_time) * 1000
ORDER BY c.update_time DESC