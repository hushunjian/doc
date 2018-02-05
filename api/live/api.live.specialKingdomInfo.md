## 接口描述
获取特殊王国的相关信息
比如用户的情绪王国等
## API Path
/api/live/specialKingdomInfo
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|searchType    |int    |是    |查询的特殊王国类型    |
|1情绪王国    |    |    |    |
## 返回报文
    参数名称	类型	备注
    topicId	long	王国ID
    title	string	王国标题
    coverImage	string	王国封面
    type	int	王国类型
    0个人王国
    1000聚合王国
    summary	string	王国简介
