## 接口描述
上市王国列表查询接口
## API Path
/api/live/listedTopicList
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|sinceId    |long    |否    |分页参数，第一次传-1，后面的传返回结果中的最后一个内容的sinceId    |
## 返回报文
    参数名称	类型	备注
    isClosed	int	是否休市  0正常 1休市
    customerServiceUid	long	客服UID
    topicList	array	上市王国列表
    	sinceId	long	分页参数，转让记录ID
    	uid	long	国王UID
    	buyUid	long	收购人UID，当status=1时有值，默认0
    	coverImage	string	王国封面
    	title	string	王国标题
    	nickName	string	国王昵称
    	topicId	long	王国ID
    	contentType	int	王国类型
    0个人王国
    1000聚合王国
    	reviewCount	int	评论数
    	personCount	int	成员数
    	readCount	int	阅读数
    	price	int	转让价
    	priceRMB	double	转让价RMB
    	status	int	0 可收购  1锁定
