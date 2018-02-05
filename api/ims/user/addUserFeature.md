## 接口描述
添加用户权限
## API Path
/ims/user/addUserFeature
## 请求报文
|参数名|类型|备注|
|------|----|----|
|userId|int| 被修改权限的用户ID|
|featureIds|string|指定的权限ID，多个以逗号分隔|
## 返回报文
	{
		code:0,
		desc:""
	}
	
## 返回字段说明
