## 接口描述
标签王国列表
## API Path
/api/home/tagDetailList
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|tagName    |String    |是    |tag名称    |
|page    |Int    |是    |当前页码，从1开始    |
|pageSize    |Int    |是    |页大小    |
|order    |String    |    |排序，    |
|new上升最快    |    |    |    |
|price最有价值    |    |    |    |
## 返回报文
    参数名称	类型	备注
    tagName	String	标签名称
    hotTagList	array<String>	热门标签名称
    personCount	Int	参与人数
    kingdomCount	Int	王国数量
    kingdomList	array	米汤上市王国
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
    	showRMBBrand	int	是否显示RMB吊牌 1 显示，0不显示
    	showPriceBrand	int	是否米币吊牌 1 显示，0不显示
    
