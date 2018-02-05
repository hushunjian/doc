## 接口描述
王国详情里@其他人时，展现的用户列表
当keyword为空时，返回王国成员以及留过言的用户列表，分页，每页20条
当keyword不为空时，返回按要求全站检索出来的用户列表，取20个，无分页
## API Path
/api/live/userAtList
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|keyword    |string    |是    |关键字（searchType=1时有效）    |
|page    |int    |是    |分页标识，第一页传1，当keyword 为空时有效    |
|topicId    |long    |是    |王国ID    |
## 返回报文
    参数名称	类型	备注
    totalPage	int	总页数
    userData	array	用户节点数组
    	uid	long	用户UID
    	avatar	string	用户头像
    	nickName	string	用户昵称
    	v_lv	int	是否大V
    0否
    1是
    	internalStatus	int	用户对于王国的身份
    0圈外
    2核心圈
