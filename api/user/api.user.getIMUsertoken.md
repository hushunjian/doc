## 接口描述
私信获取token接口
## API Path
/api/user/getIMUsertoken
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|customerId    |long    |是    |需要查询token的用户id    |
## 返回报文
    参数名称	类型	备注
    code	int
    token	string	私信token
    userId	long	用户id
