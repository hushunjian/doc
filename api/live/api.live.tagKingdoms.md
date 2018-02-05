## 接口描述
将打上该标签的王国列表查询出来的接口
## API Path
/api/live/tagKingdoms
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|tag    |string    |是    |王国标签    |
|sinceId    |long    |是    |分页参数，首页传-1    |
## 返回报文
    参数名称	类型	备注
    isForbidden	int	当前标签是否被禁止
    0否
    1是
    kingdomList	array	王国节点数据
    	sinceId	long	分页参数
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
    	type	int	内容类型（本接口貌似只会是3）
    3王国
    	contentType	int	王国类型
    0个人王国
    1000聚合王国
    	acCount	int	聚合王国属性，母王国数
    	tags	string	王国标签，多个标签之间用英文分号分隔
