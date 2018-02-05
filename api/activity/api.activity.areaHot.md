## 接口描述
获取单个地区的热度
## API Path
/api/activity/areaHot
## 请求参数
参数名称	类型	是否必须	备注
topicId	long	Y	待查询的地区对应的王国ID
## 返回参数
参数名称	类型	备注
topicId	long	王国ID
name	string	地域名称
score	long	热度值
rank	int	排名
