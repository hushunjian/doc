## 接口描述
用户资料卡
## API Path
/api/content/getUserData2
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|customerId    |Int    |是    |用户uid    |
|    |    |    |    |
|说明 添加 日记数量字段contentCount，直播数量字段liveCount    |    |    |    |
|日记 直播分页接口： /api/content/myPublishByType    |    |    |    |
|    |    |    |    |
## 返回报文
    参数名称	类型	备注
    contentCount	int	UGC数
    liveCount	int	王国数
    user	object	用户信息节点
    	nickName	string	昵称
    	uid	long	UID
    	avatar	string	头像
    	gender	int	性别
    0女
    1男
    	meNumber	string	me号
    	isFollowed	int	当前操作用户是否已关注
    0否
    1是
    	isFollowMe	int	是否已关注当前操作用户
    0否
    1是
    	followedCount	int	关注数
    	fansCount	int	粉丝数
    	introduced	string	简介
    	v_lv	int	是否大V
    0否
    1是
    	isRec	int	是否推荐到名人堂
    0否
    1是
    contentElementList	array	UGC内容节点数组
    	cid	long	内容表ID
    	uid	long	作者UID
    	tag	string	感受
    	coverImage	string	封面
    	content	string	内容
    	title	string	标题
    	createTime	long	创建时间
    	likeCount	int	点赞次数
    	reviewCount	int	评论次数
    	personCount	int	成员数（无用）
    	favoriteCount	int	成员数
    	forwardCid	long	转发内容ID
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
    	contentType	int	子类型
    	imageCount	int	图片数
    	isLike	int	是否点赞
    0否
    1是
    	forwardTitle	string	转发标题
    	forwardUrl	string	转发地址
    	readCount	int	阅读数
    	v_lv	int	作者是否大V
    0否
    1是
    	reviews	array	评论节点数组
    		uid	long	评论人UID
    		nickName	string	评论人昵称
    		avatar	string	评论人头像
    		createTime	long	评论时间
    		review	string	评论内容
    liveElementList	array	王国节点数组
    	cid	long	内容表ID
    	uid	long	国王UID
    	tag	string	感受
    	coverImage	string	王国封面
    	content	string	内容
    	title	string	标题
    	createTime	long	创建时间
    	likeCount	int	点赞次数
    	reviewCount	int	评论次数
    	personCount	int	成员数（无用）
    	favoriteCount	int	成员数
    	forwardCid	long	王国ID
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
    	contentType	int	王国类型
    0个人王国
    1000聚合王国
    	liveStatus	int	王国状态
    0正常
    	favorite	int	是否收藏
    0否
    1是
    	isLike	int	是否点赞
    0否
    1是
    	readCount	int	阅读数
    	lastUpdateTime	long	最新更新时间
    	topicCount	int	更新数（国王发言数）
    	v_lv	int	国王是否大V
    0否
    1是
    	acCount	int	聚合王国属性，子王国数
    	internalStatus	int	当前用户对于该王国的身份
    0圈外
    2核心圈
    {
    "accessToken": "77d9504de6f34d02825ec5ca51a0857e",
    "code": 200,
    "data": {
    "contentElementList": [
                {
    "cid": 1888,
    "content": "111111111111",
    "contentType": 0,
    "coverImage": "http://7xs9q4.com2.z0.glb.qiniucdn.com/111111111",
    "createTime": 1465907303000,
    "favorite": 0,
    "favoriteCount": 0,
    "forwardCid": 404,
    "imageCount": 0,
    "isLike": 0,
    "likeCount": 0,
    "liveStatus": 0,
    "personCount": 0,
    "reviewCount": 0,
    "reviews": [],
    "tag": "111111111111",
    "title": "111111111111",
    "type": 3
                }
            ],
    "user": {
    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/FkAochZc9Q8JBuKIpBCVeMgpWeF4",
    "fansCount": 13,
    "followedCount": 6,
    "gender": 1,
    "introduced": "",
    "isFollowMe": 0,
    "isFollowed": 0,
    "meNumber": "10029348",
    "nickName": "十年终相遇",
    "uid": 326
            }
        },
    "message": "ok"
    }
    
