## 接口描述
家乡美活动王国和用户榜单获取
## API Path
/api/activity/billboard
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|type    |int    |Y    |查询类型    |
|1地域榜单    |    |    |    |
|2用户榜单    |    |    |    |
|searchUid    |long    |N    |当type=1时必填    |
## 返回报文
    参数名称	类型	备注
    myUser	Object	我的用户相关信息
    	uid	long	我的uid
    	avatar	string	我的头像
    	nickName	string	我的昵称
    	v_lv	int	我是否大V
    0否
    1是
    	score	long	荣誉值
    	rank	int	我的排名
    userData	array	用户节点数组
    	uid	long	UID
    	avatar	string	头像
    	nickName	string	昵称
    	v_lv	int	是否大V
    0否
    1是
    	score	long	荣誉值
    	rank	int	排名
    areaData	array	地域节点数组
    	topicId	long	王国ID
    	name	string	地域名称
    	score	long	热度值
    	rank	int	排名
