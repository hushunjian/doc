## 接口描述
V2.2.1版本开始的热点列表作用接口
## API Path
/api/home/hotList
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|sinceId    |Int    |是    |分页第一页 -1，下来页数传返回值的sinceId    |
## 返回报文
    参数名称	类型	备注
    bubblePositions	string	气泡位置索引，逗号分隔。
    openPushPositions	int	IOS打开推送提示位置
    activityData	array	活动节点数组
    	id	long	活动ID
    	title	string	标题
    	coverImage	string	封面图
    	updateTime	long	更新日期
    	contentType	int	类型
    0普通类型，通过ID展现活动页
    1链接类型，通过contentUrl展现活动页
    2王国类型，通过topicId展现王国详情
    	contentUrl	string	当contentType=1有效
    	type	int	活动类型，这里固定为4
    	topicId	long	当contentType=2有效，王国ID
    	cid	long	王国内容表ID
    	topicType	int	王国类型
    0个人王国
    1000聚合王国
    	topicInternalStatus	int	当前用户针对于王国的身份信息
    0圈外
    2核心圈
    famousUserData	array	名人节点数组
    	uid	long	UID
    	avatar	string	头像
    	nickName	string	昵称
    	introduced	string	简介
    	v_lv	int	是否大V
    0否
    1是
    	isFollowed	int	我是否关注过
    0否
    1是
    	isFollowMe	int	是否关注过我
    0否
    1是
    hottestCeKingdomData	array	最热聚合王国节点数组
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
    hottestContentData	array	最热内容节点数据
    	sinceId	long	分页用，下一页传最后一个sinceId
    	uid	long	作者UID
    	avatar	string	头像
    	nickName	string	昵称
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
    	type	int	内容类型
    0 UGC
    2 PGC
    3王国
    6王国转发
    9老徐文章转发
    	createTime	long	创建时间
    	cid	long	内容ID
    	topicId	long	王国ID（type=3和6有效）
    	title	string	标题
    	coverImage	string	封面
    	contentType	int	王国类型
    0个人王国
    1000聚合王国
    	internalStatus	int	当前用户针对于王国的身份
    0圈外
    2核心圈
    	lastUpdateTime	long	最新更新时间
    	lastType	int	最新Fragment类型
    	lastContentType	int	最新Fragment内容类型
    	lastFragment	string
    	lastFragmentImage	string
    	lastStatus	int	最新Fragment状态
    0删除
    1正常
    	lastExtra	string	最新Fragment的extra信息
    	favoriteCount	int	成员数
    	readCount	int	阅读数
    	likeCount	int	点赞数
    	reviewCount	int	评论数
    	tags	string	王国标签，多个标签之间用英文分号分隔
    	price	int	王国价值
    	content	string	UGC等内容
    	priceRMB	Double	以RMB显示王国价值
    listingKingdoms	array	米汤上市王国
    	uid	long	作者UID
    	avatar	string	头像
    	nickName	string	昵称
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
    	type	int	内容类型
    0 UGC
    2 PGC
    3王国
    6王国转发
    9老徐文章转发
    	createTime	long	创建时间
    	cid	long	内容ID
    	topicId	long	王国ID（type=3和6有效）
    	title	string	标题
    	coverImage	string	封面
    	contentType	int	王国类型
    0个人王国
    1000聚合王国
    	internalStatus	int	当前用户针对于王国的身份
    0圈外
    2核心圈
    	lastUpdateTime	long	最新更新时间
    	lastType	int	最新Fragment类型
    	lastContentType	int	最新Fragment内容类型
    	lastFragment	string
    	lastFragmentImage	string
    	lastStatus	int	最新Fragment状态
    0删除
    1正常
    	lastExtra	string	最新Fragment的extra信息
    	favoriteCount	int	成员数
    	readCount	int	阅读数
    	likeCount	int	点赞数
    	reviewCount	int	评论数
    	tags	string	王国标签，多个标签之间用英文分号分隔
    	price	int	王国价值
    	priceRMB	Double	以RMB显示王国价值
    hotTagKingdomList	array	最热标签在这里
    
    	tagName	String	标签名称
    	personCount	Int	参与人数
    	kingdomCount	Int	王国数量
    	showRMBBrand	Int	1 显示，0不显示。
    	tagPrice	Double	标签估值
    	kingdomList	Array	王国
    		uid	long	作者UID
    		avatar	string	头像
    		nickName	string	昵称
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
    		type	int	内容类型
    0 UGC
    2 PGC
    3王国
    6王国转发
    9老徐文章转发
    		createTime	long	创建时间
    		cid	long	内容ID
    		topicId	long	王国ID（type=3和6有效）
    		title	string	标题
    		coverImage	string	封面
    		contentType	int	王国类型
    0个人王国
    1000聚合王国
    		internalStatus	int	当前用户针对于王国的身份
    0圈外
    2核心圈
    		lastUpdateTime	long	最新更新时间
    		lastType	int	最新Fragment类型
    		lastContentType	int	最新Fragment内容类型
    		lastFragment	string
    		lastFragmentImage	string
    		lastStatus	int	最新Fragment状态
    0删除
    1正常
    		lastExtra	string	最新Fragment的extra信息
    		favoriteCount	int	成员数
    		readCount	int	阅读数
    		likeCount	int	点赞数
    		reviewCount	int	评论数
    		tags	string	王国标签，多个标签之间用英文分号分隔
    		price	int	王国价值
    		priceRMB	Double	以RMB显示王国价值
    		showRMBBrand	int	是否显示RMB吊牌 1 显示，0不显示，
    		showPriceBrand	int	是否米币吊牌 1 显示，0不显示，
