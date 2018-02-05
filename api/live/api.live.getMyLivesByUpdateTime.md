## 接口描述
我订阅的直播(按照主播最后更新时间排序)
## API Path
/api/live/getMyLivesByUpdateTime
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|updateTime    |int    |是    |分页使用，所有直播按照最后更新时间排序    |
## 返回报文
    参数名称	类型	备注
    inactiveLiveCount	int	当前用户创建的和订阅的王国中3天未更新的王国数
    liveTitle	string	当前用户创建或订阅的王国中3天未更新的王国中最近一次更新的王国的标题
    liveCount	int	全系统不正常的王国数
    isUpdate	int	我订阅的王国是否有更新标识
    0没有
    1有
    updateLives	array	最新创建的王国国王信息子节点数组
    	uid	long	用户UID
    	avatar	string	用户头像
    	v_lv	int	用户大V标识
    0非大V
    1大V
    showTopicElements	array	当前用户创建的和订阅的王国子节点数组
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
    "accessToken": "cb433eb579d74015a63dc40f0be08df7",
    "code": 20035,
    "data": {
    "inactiveLiveCount": 4,        ---未更新直播数量
    "liveCount": 400,   ---更新中的直播数量
    "liveTitle": "糊塗了",  ---3天未更新的直播最后更新内容
    "isUpdate": 1,  -------是否显示红点 0 不显示1显示
    "showTopicElements": [
                {
    "avatar": "http://cdn.me-to-me.com/d1f3347f-03a4-47ad-a26e-32c05d6761c3",
    "cid": 3807,
    "coverImage": "http://cdn.me-to-me.com/9d65af1b-1dc1-42ab-997c-ea1a7a3c3c7d",
    "createTime": 1468287825000,
    "favorite": 1,
    "favoriteCount": 21,
    "isFollowed": 1,
    "isLike": 0,
    "lastContentType": -1,
    "lastUpdateTime": 1468287825154,
    "likeCount": 0,
    "nickName": "叫我女王大人",
    "personCount": 0,
    "reviewCount": 0,
    "status": 0,
    "tags": [],
    "title": "参考下",
    "topicCount": 0,
    "topicId": 635,
    "uid": 311,
    "updateTime": 1468287825154,
    "internalStatus":0
                }
            ],
    "updateLives": [   ----正在更新的直播的主播信息
                {
    "avatar": "http://cdn.me-to-me.com/d1f3347f-03a4-47ad-a26e-32c05d6761c3",
    "uid": 311
                },
                {
    "avatar": "http://cdn.me-to-me.com/ee7450c4-a49f-4ec2-8058-3bc620225adc",
    "uid": 1065
                }
            ]
        },
    "message": "获取我的直播列表成功"
    }
    
