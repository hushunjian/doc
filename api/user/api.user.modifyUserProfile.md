## 接口描述
修改用户资料
## API Path
/api/user/modifyUserProfile
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|uid    |string    |是    |用户id    |
|userName    |string    |是    |用户名（手机号）    |
|gender    |string    |是    |性别，0女1男    |
|nickName    |int    |是    |昵称    |
|avatar    |int    |否    |图像7牛地址    |
|yearsId    |int    |是    |年代    |
|birthday    |    |    |生日    |
|hobby    |    |    |爱好，多个分号隔开    |
|introduced    |    |否    |个人简介    |
## 返回报文
    说明：后期根据实际需求修改参数
    
    {
    "code": 2006,
    "data": {
    "action": 0,
    "avatar": "http://img2.imgtn.bdimg.com/it/u=1457437487,655486635&fm=11&gp=0.jpg",
    "bearStatus": 0,
    "gender": 0,
    "industry": 0,
    "marriageStatus": 0,
    "nickName": "1111",
    "socialClass": 0,
    "startId": 0,
    "uid": 1,
    "yearsId": 0
    },
    "message": "用户头像修改成功"
    }
    
