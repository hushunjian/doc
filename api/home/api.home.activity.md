## 接口描述
活动列表接口
## API Path
/api/home/activity
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|sinceId    |Int    |是    |    |
## 返回报文
    参数名称	类型	备注
    activityData	array	活动节点数组
    	id	long	活动ID
    	title	string	标题
    	coverImage	string	封面图
    	updateTime	long	更新日期
    	contentType	int	类型
    0普通类型，通过ID展现活动页
    1链接类型，通过contentUrl展现活动页
    2王国类型，通过topicId展现王国详情
    	contentUrl	string	当contentType=2有效
    	type	int	活动类型，这里固定为4
    	topicId	long	当contentType=2有效，王国ID
    	cid	long	王国内容表ID
    	topicType	int	王国类型
    0个人王国
    1000聚合王国
    	topicInternalStatus	int	当前用户针对于王国的身份信息
    0圈外
    2核心圈
    
