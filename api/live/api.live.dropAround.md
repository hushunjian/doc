## 接口描述
王国串门接口
## API Path
/api/live/dropAround
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|sourceTopicId    |long    |是    |来源王国ID    |
|如果是从注册成功页上来的，则传0    |    |    |    |
## 返回报文
    参数名称	类型	备注
    topicId	long	串门的王国ID
    cid	long	王国内容表ID
    topicType	int	王国类型
    0个人王国
    1000聚合王国
    internalStatus	int	当前操作人针对该王国的身份
    0圈外
    2核心圈
    trackContent	string	足迹内容
    trackImage	string	足迹内容中的图片
