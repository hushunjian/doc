## 接口描述
广播聊天内容获取
## API Path
/api/activity/chatQuery
## 请求参数
参数名称	类型	是否必须	备注
sinceId	long	Y	分页参数，第一次传-1，后面的传返回结果中的最后一个内容的sinceId
## 返回参数
参数名称	类型	备注
result	array	聊天数据节点数组
	nickName	string	昵称
	avatar	string	头像
	message	string	消息
	type	int	内容类型
0：普通聊天
1：普通支持（+1）
2：top10支持（+荣誉值）
	sinceId	long	分页标识
