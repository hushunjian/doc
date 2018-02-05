## 接口描述
获取系统所有权限列表
## API Path
/ims/feature/getAllFeatures
## 请求报文

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
id 权限id
pid 父权限id
name 权限名称
sn 权限唯一标示
