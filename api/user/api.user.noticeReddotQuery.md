## 接口描述
	原APP上通知上的红点是通过极光推送的，后台无法进行相关控制，先更改为后台控制，故提供接口进行获取。
## API Path
/api/user/noticeReddotQuery
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
## 返回报文
    参数名称	类型	备注
    unreadCount	int	通知红点标识，返回未读消息个数，当为0时，不需要显示红点，>0时，返回多少显示红色气泡并显示数字
    contactReddot	int	通讯录红点标识
    0不显示红点
    1显示红点即可
