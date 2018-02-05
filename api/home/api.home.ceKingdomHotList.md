## 接口描述
最热聚合王国列表接口
## API Path
/api/home/ceKingdomHotList
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|sinceId    |Int    |是    |分页第一页 -1，下来页数传返回值的sinceId    |
## 返回报文
    参数名称	类型	备注
    hottestCeKingdomData	array	最热聚合王国节点数组
    	sinceId	long	分页用，下一页传最后一个sinceId
    	uid	long	国王UID
    	avatar	string	国王头像
    	nickName	string	国王昵称
    	v_lv	int	是否大V
    0否
    1是
    	isFollowed	int	我是否已关注
    0否
    1是
    	isFollowMe	int	是否已关注我
    0否
    1是
    	favorite	int	是否已收藏
    0否
    1是
    	topicId	long	王国ID
    	cid	long	王国内容表ID
    	title	string	标题
    	coverImage	string	封面
    	createTime	long	创建时间
    	lastUpdateTime	long	更新时间
    	contentType	int	王国类型
    0个人王国
    1000聚合王国
    	internalStatus	int	当前用户针对于该王国的身份
    0圈外
    2核心圈
    	acCount	int	子王国数
    	favoriteCount	int	王国成员数
    	tags	string	王国标签，多个标签之间用英文分号分隔
    	acTopList	array	子王国节点数组
    		topicId	long	王国ID
    		cid	long	王国内容表ID
    		title	string	标题
    		coverImage	string	封面
    		contentType	int	王国类型
    0个人王国
    1000聚合王国
    		internalStatus	int	当前用户针对于该王国的身份
    0圈外
    2核心圈
    	memberList	array	王国成员节点列表
    		uid	long	UID
    		avatar	string	头像
    		nickName	string	昵称
    		v_lv	int	是否大V
    0否
    1是
