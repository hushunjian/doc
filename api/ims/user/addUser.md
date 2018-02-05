## 接口描述
添加用户

## API Path
/ims/user/addUser
## 请求报文
|参数名|类型|可选|备注|
|------|----|----|----|
|name|String|必选|-|
|password|String|必选|-|
|mobile|String|可选|-|
|isValid|String|必选|0禁用1启用|
|roleIds|String|可选|角色id,多个以逗号分隔|
|featureIds|string|可选|指定的权限ID，多个以逗号分隔|

## 返回报文
	{
		code:0,
		desc:""
	}
	
## 返回字段说明
