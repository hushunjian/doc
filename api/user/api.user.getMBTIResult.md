## 接口描述
	如果用户测试过，返回测试结果；如果没有，返回未测试过。
## API Path
/api/user/getMBTIResult
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|customUid    |long    |Y    |查询用户ID    |
## 返回报文
    参数名称	类型	备注
    isTested	boolean	是否测试过。
    isShared	boolean	是否分享过
    mbti	string	如果测试过，返回测试结果。如ESTJ
    kingdomId	long	王国ID
    uid	long	用户ID
    nickName	string	昵称
    avatar	string	头像
    vLv	int	是否大V
    
