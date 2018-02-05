## 接口描述
智能推荐首页信息获取接口
## API Path
/api/search/recList
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|page    |int    |是    |分页按页数分页第一页传1    |
## 返回报文
    参数名称	类型	备注
    persona	object	用户画像节点（当page=1时返回）
    	uid	long	用户UID
    	nickName	string	用户昵称
    	avatar	string	用户头像
    	v_lv	int	用户是否大V
    0否
    1是
    	completion	int	完成度，百分比数字，比如100%返回100，80%返回80
    	sex	int	性别
    0女
    1男
    	sexOrientation	int	性取向
    1爱男神
    2爱女神
    3男女通吃
    	ageGroup	int	年龄组
    1：00后
    2：95后
    3：90后
    4：85后
    5：80后
    6：活化石
    	career	int	职业
    1作业党
    2码农
    3家里蹲
    4手艺人
    5霸道总裁
    6编辑狗
    7靠嘴吃饭
    8白衣天使
    9园丁
    10为人民服务
    	hobby	string	兴趣爱好，多个之间用英文逗号分隔
    96旅行
    80音乐
    81美食
    83动漫
    90美容美妆
    85健康养生
    87时尚
    84游戏
    88设计
    89摄影
    92汽车
    97娱乐
    93军事
    101历史
    102探索
    94新闻热点
    104趣味
    82居家
    91科技
    103美文
    98教育
    99经管
    100文化
    86文体活动
    	mbti	string	MBTI测试结果
    	emotionList	array	用户情绪节点数组
    		id	long	情绪ID
    		rid	long	情绪记录ID
    		emotionName	string	情绪词名称
    		happyValue	int	开心指数值
    		freeValue	int	空闲指数值
    		topicId	long	对应的王国ID
    		internalStatus	int	当前用户针对于本王国的身份
    0圈外人
    2核心圈
    		recordCount	int	当前情绪为用户的多少次记录
    		createTime	long	情绪设置时间
    		timeInterval	long	情绪记录到服务器当前时间的秒数（只有第一个是有效的）
    		emotionPack	object	大表情内容信息
    			id	long	表情ID
    			title	string	表情名字
    			content	string	表情内容描述
    			image	string	表情大图
    			thumb	string	表情缩略图
    			w	long	大图宽
    			h	long	大图高
    			thumb_w	long	缩略图宽
    			thumb_h	long	缩略图高
    			extra	string	扩展字段
    			emojiType	int	表情包类型
    emotionKingdom	object	运营情绪王国节点
    	topicId	long	王国ID
    	title	string	王国标题
    	coverImage	string	王国封面
    	contentType	int	王国类型
    0个人王国
    1000聚合王国
    	internalStatus	int	当前用户针对于本王国的身份
    0圈外人
    2核心圈
    recUserData	array	人推荐节点数组（当page=1时返回）
    	uid	long	用户UID
    	nickName	string	用户昵称
    	avatar	string	用户头像
    	v_lv	int	是否大V
    0否
    1是
    	reason	string	推荐理由
    	matching	int	匹配度，百分比展现，不带小数，比如90%，则返回90
    recContentData	array	内容推荐节点数组
    	uid	long	国王UID
    	coverImage	string	王国封面（当为文章时为文章封面）
    	title	string	王国标题（当为文章时为文章标题）
    	avatar	string	国王头像
    	nickName	string	国王昵称
    	createTime	long	王国创建时间
    	topicId	long	王国topicId
    	updateTime	long	王国最新更新时间
    	isFollowed	int	当前操作人是否关注国王
    0未关注
    1已关注
    	isFollowMe	int	国王是否关注当前操作人
    0未关注
    1已关注
    	topicCount	int	王国更新数
    	v_lv	int	国王是否大V
    0否
    1是
    	internalStatus	int	当前操作人相对于王国的身份
    0圈外
    1圈内
    2核心圈
    	favorite	int	当前操作人是否收藏王国
    0未收藏
    1收藏
    	lastUpdateTime	long	最后一次核心圈发言时间
    	cid	long	王国内容表ID
    	likeCount	int	王国点赞数（当为文章时为文章点赞数）
    	reviewCount	int	王国评论数（当为文章时为文章点赞数）
    	favoriteCount	int	王国收藏数
    	readCount	int	王国阅读数
    	type	int	内容类型
    3王国
    5文章
    	contentType	int	当type=3时为王国类型：
    0个人王国
    1000聚合王国
    当type=5时为文章类型：
    0：文字
    1：音乐
    2：视频
    3：行为建议
    4：系统
    5：社交
    6:信息采集
    7:UGC
    8:王国
    	acCount	int	聚合王国属性，母王国数
    	tags	string	王国标签，多个标签之间用英文分号分隔
    	reason	string	推荐理由
    	contentId	long	内容ID
    	linkUrl	String	文章链接
