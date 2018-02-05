## 接口描述
全站检索米汤内容（包括人、UGC、王国、文章）
其中当searchType=0查询全部时，返回无分页概念，并且每种类型只返回3条记录。
## API Path
/api/search/search
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|keyword    |string    |是    |关键字    |
|page    |int    |是    |当前页    |
|pageSize    |int    |是    |每页显示记录数    |
|searchType    |int    |是    |查询类型    |
|0：全部    |    |    |    |
|1：用户    |    |    |    |
|2：王国    |    |    |    |
|3：UGC    |    |    |    |
|4：文章    |    |    |    |
|contentType    |int    |否    |待查询的内容类型，当searchType>0时有效    |
|当searchType=2时，枚举如下：    |    |    |    |
|0全部    |    |    |    |
|1个人王国    |    |    |    |
|2聚合王国    |    |    |    |
## 返回报文
    参数名称	类型	备注
    totalPage	int	总页数
    totalRecord	int	总记录数
    userData	array	用户节点数组
    	uid	long	用户UID
    	nickName	string	用户昵称
    	avatar	string	用户头像
    	isFollowed	int	当前用户是否关注该用户
    0未关注
    1已关注
    	isFollowMe	int	该用户是否关注当前用户
    0未关注
    1已关注
    	introduced	string	用户简介
    	v_lv	int	用户大V标识
    0非大V
    1大V
    kingdomData	array	王国节点数组
    	uid	long	国王UID
    	coverImage	string	王国封面
    	title	string	王国标题
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
    	likeCount	int	王国点赞数
    	reviewCount	int	王国评论数
    	favoriteCount	int	王国收藏数（这个才是真正的成员数，貌似）
    	readCount	int	王国阅读数
    	type	int	内容类型（这里只会是3）
    3王国
    	contentType	int	王国类型
    0个人王国
    1000聚合王国
    	acCount	int	聚合王国属性，母王国数
    	tags	string	王国标签，多个标签之间用英文分号分隔
    	price	int	王国价值
    ugcData	array	UGC信息节点数组
    	uid	long	国王UID
    	avatar	string	国王头像
    	nickName	string	国王昵称
    	v_lv	int	国王是否大V
    0否
    1是
    	isFollowed	int	当前操作人是否关注国王
    0未关注
    1已关注
    	isFollowMe	int	国王是否关注当前操作人
    0未关注
    1已关注
    	coverImage	string	UGC封面
    	title	string	UGC标题
    	cid	long	UGC内容表ID
    	type	int	内容类型（这里只会是0）
    0 UGC
    	content	string	UGC内容
    	readCount	int	UGC阅读数
    	reviewCount	int	UGC评论数
    articleData	array	文章信息数组（暂定）
