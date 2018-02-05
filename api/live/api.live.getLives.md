## 接口描述
获取所有直播列表
## API Path
/api/live/getLives
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|sinceId    |long    |是    |分页使用（不使用）    |
|updateTime    |long    |是    |分页使用，所有直播按照最后更新时间排序    |
## 返回报文
    参数名称	类型	备注
    showTopicElements	array	王国子节点数组
    	uid	long	国王UID
    	coverImage	string	王国封面
    	title	string	王国标题
    	v_lv	int	国王大V标识
    0：不是大V
    1：大V
    	avatar	string	国王头像地址
    	nickName	string	国王昵称
    	topicId	long	王国ID
    	createTime	long	王国创建时间
    	status	int	王国状态
    0正常
    	lastUpdateTime	long	最新的王国更新时间
    	updateTime	long	貌似同lastUpdateTime
    	isFollowed	int	当前用户是否关注过国王
    0未关注
    1已关注
    	isFollowMe	int	国王是否关注过当前用户
    0未关注
    1已关注
    	topicCount	int	国王发言数
    	internalStatus	int	当前用户针对王国的身份
    0圈外
    2核心圈
    	contentType	int	王国类型
    0个人王国
    1000聚合王国
    	acCount	int	聚合王国属性，子王国数
    	LastContentType	int	最新的更新的内容类型
    	lastFragment	string	最新的更新的文本
    	lastFragmentImage	string	最新的更新的图片地址
    	reviewCount	int	非国王发言数
    	likeCount	int	点赞数
    	personCount	int	用户数（该字段已废，不再使用）
    	favoriteCount	int	王国收藏数
    	cid	long	王国内容ID
    	isLike	int	当前用户是否点赞过
    0未点赞过
    1点赞过
    	readCount	int	王国阅读数
    	favorite	int	当前用户是否收藏过
    0未收藏
    1已收藏
    
    {
    "code": 20035,
    "data": {
    "showTopicElements": [
    {
    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/c8983481-876a-4301-b98e-ad04834e44ca",
    "coverImage": "http://7xs9q4.com2.z0.glb.qiniucdn.com/454545",
    "createTime": 1460692268000,
    "forwardCount": 0,  --转发数
    "lastContentType": -1,  --1无任何消息，0文字类型文本 1图片，2标签
    "nickName": "小小宝",
    "personCount": 0,   --参与人数
    "reviewCount": 0,  --评论数
    "status": 0,    --0正在直播 1结束直播
    "tagCount": 0,  --感受数
    "title": "test",
    "topicId": 33,
    "uid": 293,
    "internalStatus":0 --王国身份信息，0圈外 1圈内 2核心圈
    }
    ]
    },
    "message": "获取我的直播列表成功"
    }
    
