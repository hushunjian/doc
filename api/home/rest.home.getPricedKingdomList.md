## 接口描述
查询王国价值排行榜

## API Path
/rest/home/getPricedKingdomList

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|page|int|是|分页对象，第一页传1|
|pageSize|int|是|分页大小|

## 返回报文



    参数名称	类型	备注
    listData	array	榜单节点数组
    	uid	long	用户ID
    	avatar	string	用户头像
    	nickName	string	用户昵称
    	v_lv	int	是否大V
    0否
    1是
    	isFollowed	int	我是否关注过
    0否
    1是
    	isFollowMe	int	是否关注过我
    0否
    1是
    	contentType	int	王国类型
    0个人王国
    1000聚合王国
    	favorite	int	是否加入该王国
    0否
    1是
    	id	long	王国内容表ID（同cid，属冗余字段）
    	cid	long	王国内容表ID
    	topicId	long	王国ID
    	forwardCid	long	王国ID（同topicId，属冗余字段）
    	title	string	标题
    	coverImage	string	封面图
    	internalStatus	int	当前操作人对该王国的身份
    0圈外
    2核心圈
    	favoriteCount	long	成员数
    	readCount	long	阅读数
    	likeCount	long	点赞数
    	reviewCount	long	评论数
    	tags	string	王国标签，多个标签之间用英文分号分隔
    	price	int	王国价值
