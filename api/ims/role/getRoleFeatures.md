## 接口描述
获取所有的用户角色
## API Path
/ims/role/getRoleFeatures
## 请求报文
|参数名|类型|备注|
|------|----|----|
|roleId|int|角色ID|
## 返回报文
	{
		code:0,
		desc:"",
		data:[
			{
				id:1,
				pid:0,
				name:"添加用户",
				sn:"USER_ADD",
			},
			{
				id:2,
				pid:0,
				name:"删除用户",
				sn:"USER_DEL",
			}
		]
	}
	
## 返回字段说明
