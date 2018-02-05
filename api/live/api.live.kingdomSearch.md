## 接口描述
王国检索
公共参数部分
updateTime 一如既往的都需要的，第一次传0（因为要分页）
searchRights 目前传0即可（因为还没有具体的应用场景，以后可能的应用场景为外部查询不需要隐私的，分享到我的王国可以查询到我的隐私的王国）
keyword 目前仅支持王国名模糊检索
searchType 需要查询出的王国类型（0所有，1个人王国，2聚合王国）
1）外部王国查询场景
searchUid=0
exceptTopicId=0
topicId=0
topicType=0
2）聚合王国里查询子王国列表
searchUid=0
exceptTopicId=0
topicId=聚合王国topicId
topicType=2
3）聚合王国里查询被聚合的王国列表（聚合的聚合，本次版本里没有的功能，仅供参考，请无视）
searchUid=0
exceptTopicId=0
topicId=聚合王国topicId
topicType=1
4）个人王国里查询被聚合的王国列表
searchUid=0
exceptTopicId=0
topicId=个人王国topicId
topicType=1
5）将个人王国收录到我的聚合王国里查询的聚合王国列表
searchUid=我的UID
exceptTopicId=当前个人王国ID（以后有聚合的聚合时，聚合王国不能聚合自身里面，需要排除）
topicId=0
topicType=0
6）申请收录我的个人王国到当前的聚合王国里
searchUid=我的UID
exceptTopicId=当前聚合王国ID（以后有聚合的聚合时，聚合王国不能被聚合到自身里面，需要排除）
topicId=0
topicType=0
7）文章、UGC、王国分享是查询我的王国列表
searchUid=我的UID
exceptTopicId=如果分享的是王国，这此处为该王国ID，否则填0（王国不能分享到自身王国里）
topicId=0
topicType=0

当searchScene=0时，按参数进行返回列表过滤。
当searchScene>0时，按场景进行返回列表过滤，
当searchScene=1，聚合王国主动场景，返回列表为：我创建的个人王国+我是核心圈的个人王国+我订阅的个人王国，后续聚合操作发起方为聚合王国。
当searchScene=2，聚合王国被动场景，返回列表为：我创建的个人王国，后续聚合操作发起方为个人王国
当searchScene=3，个人王国主动场景，暂没有该应用场景，先占个坑。
当searchScene=4，个人王国被动场景，返回列表为：我创建的聚合王国，后续聚合操作发起方为聚合王国
当searchScene=5，分享场景，返回列表为：我创建的+我是核心圈的+我订阅的，通过searchType区分王国类型。
当searchScene=6，转发场景，返回列表为：我创建的+我是核心圈的+我订阅的，通过searchType区分王国类型。

## API Path
/api/live/kingdomSearch
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|updateTime    |int    |是    |分页使用，第一次传0【默认】    |
|searchUid    |long    |否    |查询谁的王国，当为0时表示查询所有人的。没有传0【默认】    |
|allowCore    |int    |否    |自身权限相关查询,当searchUid>0时有效    |
|0国王【默认】    |    |    |    |
|1国王+核心圈    |    |    |    |
|2国王+核心圈+订阅    |    |    |    |
|exceptTopicId    |long    |否    |排除的王国ID，应用场景：王国A不能分享到王国A里面。没有传0【默认】    |
|topicId    |long    |否    |需要搜索的王国，没有传0【默认】    |
|当topicType>0时有效    |    |    |    |
|topicType    |Int    |否    |1个人王国，2聚合王国    |
|没有传0【默认】    |    |    |    |
|当1时并且topicId>0，查询该个人王国被聚集的聚合王国    |    |    |    |
|当2时并且topicId>0，查询该聚合王国聚集的个人王国（此时是有置顶列表的）    |    |    |    |
|searchType    |int    |否    |0所有的王国【默认】    |
|1个人王国    |    |    |    |
|2聚合王国    |    |    |    |
|searchRights    |int    |否    |王国可视类型（暂不启用，不传或传0即可）    |
|0所有【默认】    |    |    |    |
|1公开的    |    |    |    |
|2隐私的    |    |    |    |
|keyword    |string    |否    |检索关键字，默认空    |
|目前是王国名模糊检索    |    |    |    |
|searchScene    |int    |否    |查询场景    |
|0按参数进行判断获取列表【默认】    |    |    |    |
|1聚合王国主动场景（收录列表）    |    |    |    |
|2聚合王国被动场景（加入列表）    |    |    |    |
|3个人王国主动场景（暂没有占个坑）    |    |    |    |
|4个人王国被动场景    |    |    |    |
|5分享场景    |    |    |    |
|6转发场景（转发出去）    |    |    |    |
|7聚合王国新主动场景    |    |    |    |
|8 转发进来场景（转发进来）    |    |    |    |
## 返回报文
    参数名称	类型	备注
    acCount	long	聚合王国对应的子王国数
    ceCount	long	个人王国对应的母王国数
    resultList	array	王国TopicElement数组列表
    	uid	long	国王UID
    	coverImage	string	王国封面
    	title	string	王国标题
    	avatar	string	国王头像
    	nickName	string	国王昵称
    	createTime	long	王国创建时间
    	topicId	long	王国topicId
    	status	int	王国状态
    0正常
    其他异常
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
    	isUpdate	int	是否有更新（突然发现这个字段在本接口中没有意义啊/(ㄒoㄒ)/~~）
    0没有
    1有更新
    	LastContentType	int	最后一次核心圈发言内容类型
    	lastFragment	string	最后一次核心圈发言内容
    	lastFragmentImage	string	最后一次核心圈发言图片
    	lastUpdateTime	long	最后一次核心圈发言时间
    	cid	long	王国内容表ID
    	likeCount	int	王国点赞数
    	personCount	int	王国成员数（貌似是无用的字段）
    	reviewCount	int	王国评论数
    	favoriteCount	int	王国收藏数（这个才是真正的成员数，貌似）
    	readCount	int	王国阅读数
    	isLike	int	是否已点赞（此处接口貌似没啥用啊，因为王国可以无限重复点赞）
    	type	int	内容类型（本接口貌似只会是3）
    3王国
    	contentType	int	王国类型
    0个人王国
    1000聚合王国
    	isTop	int	是否置顶
    本参数只在聚合王国里查询子王国列表时有用
    	isPublish	int	是否接受下发
    本参数只在个人王国里查询被聚合的聚合王国列表时有用
    	acCount	int	聚合王国属性，母王国数
    	tags	string	王国标签，多个标签之间用英文分号分隔
    	pageUpdateTime	long	用于分页使用
    	price	int	王国价值
    
    返回列表（除置顶列表）都是按王国更新时间倒序排列，故第一次请求updateTime传值0，以后按resultList最后一个的更新时间时间传递。
    1）当topicType=2&&topicId>0时，第一次请求分两个列表，一个置顶列表topList，一个普通列表resultList,第二次请求只会有resultList列表（updateTime传递大于0时表示非第一次请求）
    2）其他情况只需处理普通列表resultList即可
    返回的王国节点属性同其他王国列表节点。
    {
    "code": 200,
    "message": "OK",
    "data": {
    	"resultList":[
    		{...},
    		{...}
    	]
    }
    }
