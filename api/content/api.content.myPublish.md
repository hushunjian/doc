## 接口描述
我发布的内容列表
## API Path
/api/content/myPublish
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|sinceId    |int    |是    |双薪时候传 -1    |
|customerId    |int    |是    |用户uid    |
|type    |int    |是    |默认为0（兼容老版本）1.UGC列表 2.直播列表    |
|updateTime    |int    |是    |最大值（直播状态分页取这个最后一个值，其他还是id最后一个分页）    |
|newType    |int    |否    |2.1.1及以后版本传1    |
## 返回报文
    参数名称	类型	备注
    results	array	内容节点数组
    	id	long	内容表ID
    	uid	long	作者UID
    	avatar	string	作者头像
    	nickName	string	作者昵称
    	forwardCid	long	转发内容ID
    	content	string	内容
    	tag	string	感受标签
    	type	int	内容类型
    0 UGC
    1转发UGC
    2 PGC
    3王国
    4活动
    5系统
    6转发王国
    7转发活动
    8转发PGC
    9转发系统文章（智能推荐文章）
    	createTime	long	创建时间
    	coverImage	string	封面图片地址
    	title	string	标题
    	isFollowed	int	当前用户是否关注作者
    0未关注
    1已关注
    	isFollowMe	int	作者是否关注当前用户
    0未关注
    1已关注
    	likeCount	int	点赞数
    	reviewCount	int	评论数
    	personCount	int	人员数
    	favoriteCount	int	收藏数
    	readCount	int	阅读数
    	rights	int	权限
    0仅自己
    1公开
    	liveStatus	int	王国状态
    0正常
    	favorite	int	王国是否收藏
    0未收藏
    1已收藏
    	imageCount	int	图片数
    	isLike	int	当前用户是否点赞过
    0未点赞
    1已点赞
    	forwardUrl	string	转发地址
    	forwardTitle	string	转发标题
    	lastUpdateTime	long
    	topicCount	int	王国更新数
    	contentType	int	type=3时（目前只有王国时有效）
    0个人王国
    1000聚合王国
    	v_lv	int	作者大V标识
    0非大V
    1大V
    	internalStatus	int	当前用户对于王国的身份
    0圈外
    2核心圈
    	acCount	int	聚合王国属性，子王国数
    
    直播type 2
    {
    "accessToken": "b1fa6cce82fc4dd7b045bf79c489ec72",
    "code": 200,
    "data": {
    "results": [
          {
    "avatar": "http://cdn.me-to-me.com/FpXdLCD5Nhos0NbWPaLHcegzAiMe",
    "content": "专业与业余的差距",
    "contentType": 0,
    "coverImage": "http://cdn.me-to-me.com/Fsd4ih9M5XTf1Fl1mLwfv4BnBJtY",
    "createTime": 1471772626000,
    "favorite": 0,
    "favoriteCount": 210,
    "forwardCid": 1084,
    "forwardTitle": "",
    "forwardUrl": "",
    "id": 8232,
    "imageCount": 1,
    "isFollowMe": 0,
    "isFollowed": 0,
    "isLike": 0,
    "lastUpdateTime": 1471773759220,
    "likeCount": 2,
    "liveStatus": 0,
    "nickName": "sman",
    "personCount": 0,
    "readCount": 58,
    "reviewCount": 8,
    "rights": 1,
    "tag": "专业与业余的差距",
    "title": "专业与业余的差距",
    "topicCount": 10,
    "type": 3,
    "uid": 295,
    "internalStatus":0
          }
        ]
      },
    "message": "ok"
    }
    
    非直播 type 1
    {
    "accessToken": "6ae64f13306a4be58561d9ea343dfd22",
    "code": 200,
    "data": {
    "results": [
          {
    "avatar": "http://cdn.me-to-me.com/FpXdLCD5Nhos0NbWPaLHcegzAiMe",
    "content": "",
    "contentType": 0,
    "coverImage": "http://cdn.me-to-me.com/Fv0UrC1LM2ux9EiCJOGYf6O6XP_-",
    "createTime": 1471634141000,
    "favorite": 0,
    "favoriteCount": 0,
    "forwardCid": 0,
    "forwardTitle": "",
    "forwardUrl": "",
    "id": 8121,
    "imageCount": 1,
    "isFollowMe": 0,
    "isFollowed": 0,
    "isLike": 0,
    "lastUpdateTime": 0,
    "likeCount": 5,
    "liveStatus": 0,
    "nickName": "sman",
    "personCount": 0,
    "readCount": 7,
    "reviewCount": 0,
    "rights": 1,
    "tag": "奔;",
    "title": "",
    "topicCount": 0,
    "type": 0,
    "uid": 295
          }
        ]
      },
    "message": "ok"
    }
    
