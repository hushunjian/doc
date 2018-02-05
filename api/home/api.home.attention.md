## 接口描述
关注接口
## API Path
/api/home/attention
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|sinceId    |Int    |是    |    |
## 返回报文
    参数名称	类型	备注
    attentionData	array	内容节点数组
    	id	long	内容ID
    	uid	long	用户ID
    	avatar	string	用户头像
    	nickName	string	用户昵称
    	forwardCid	long	当type=3/6时，为王国ID
    当type=0时无效字段
    当type=5/9时，为文章ID
    	content	string	UGC内容/王国标题
    	tag	string	感受（仅UGC）
    	type	int	内容类型
    0UGC
    3王国
    5系统文章
    6转发王国
    9转发系统文章
    	createTime	long	创建时间
    	coverImage	string	封面
    	title	string	标题
    	isFollowed	int	是否关注过作者
    0否
    1是
    	isFollowMe	int	是否被作者关注过
    0否
    1是
    	likeCount	int	点赞数
    	reviewCount	int	评论数
    	personCount	int	成员数（已废字段）
    	favoriteCount	int	成员数
    	readCount	int	阅读数
    	rights	int	权限（仅UGC）
    0仅自己
    1公开
    	liveStatus	int	王国状态
    	favorite	int	当type=3时有效，当前用户是否收藏过
    0否
    1是
    	imageCount	int	当type=0时，图片数
    	isLike	int	当前用户是否点赞过
    0否
    1是
    	forwardUrl	string	转发链接（文章类有效）
    	forwardTitle	string	转发标题
    	lastUpdateTime	long	分页标识
    	topicCount	int	王国更新数
    	contentType	int	当type=3/6时，为王国类型
    0个人王国
    1000聚合王国
    	v_lv	int	是否大V
    0否
    1是
    	level	int	用户等级
    	internalStatus	int	当type=3/6时，当前用户对于王国的身份
    0其他
    2核心圈
    	acCount	int	当type=3/6，并且contentType=100时，聚合王国子王国数
    	forwardUid	long	当type=6时，转发用户UID
    	forwardNickName	string	当type=6时，转发用户昵称
    	textData	array	文字内容节点数组
    		id	long	发言ID，及fragmentId
    		contentType	int	发言内容类型
    		type	int	发言类型
    		fragment	string	发言
    		fragmentImage	string	图片
    		atUid	long	@人的UID（atUid>0有效）
    		atNickName	string	@人的昵称（atUid>0有效）
    		extra	string	发言扩展信息，主要是APP前端解析的数据，后台主要是存储
    	audioData	array	音频内容节点数组
    		id	long	发言ID，及fragmentId
    		contentType	int	发言内容类型
    		type	int	发言类型
    		fragment	string	发言
    		fragmentImage	string	图片
    		atUid	long	@人的UID（atUid>0有效）
    		atNickName	string	@人的昵称（atUid>0有效）
    		extra	string	发言扩展信息，主要是APP前端解析的数据，后台主要是存储
    	imageData	array	图片内容节点数组（包含图片、视频、链接
    抽奖、投票）
    		id	long	发言ID，及fragmentId
    		contentType	int	发言内容类型
    		type	int	发言类型
    		fragment	string	发言
    		fragmentImage	string	图片
    		atUid	long	@人的UID（atUid>0有效）
    		atNickName	string	@人的昵称（atUid>0有效）
    		extra	string	发言扩展信息，主要是APP前端解析的数据，后台主要是存储
    	ugcData	array	UGC内容节点数组
    		id	long	发言ID，及fragmentId
    		contentType	int	发言内容类型
    		type	int	发言类型
    		fragment	string	发言
    		fragmentImage	string	图片
    		atUid	long	@人的UID（atUid>0有效）
    		atNickName	string	@人的昵称（atUid>0有效）
    		extra	string	发言扩展信息，主要是APP前端解析的数据，后台主要是存储
    
    {
    "code": 200,
    "data": {
    "attentionData": [
    {
    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/FuZ8odHW3Z5dDJqUHP-5qt02kweI",
    "content": "讲述你的故事,分享你的感受",
    "coverImage": "FhI_uCvaQSLz13EFCTHcY5GLibRO",
    "createTime": 1462245702000,
    "favorite": 0,
    "id": 875,
    "isFollow": 1,
    "likeCount": 0,
    "liveStatus": 0,
    "nickName": "测试帐号",
    "personCount": 0,
    "reviewCount": 0,
    "rights": 0,
    "tag": "wwwww",
    "title": "",
    "type": 0,
    "uid": 295,
    "internalStatus":0
    }
    ]
    },
    "message": "ok"
    }
