## 接口描述
评论列表接口
## API Path
/api/content/reviewList
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|cid    |Int    |是    |内容id    |
|sinceId    |Int    |是    |分页使用    |
|type    |Int    |是    |老徐文章时候传5    |
## 返回报文
    参数名称	类型	备注
    reviews	array	评论节点数组
    	id	long	评论ID
    	uid	long	评论人UID
    	cid	long	内容表ID
    	nickName	string	评论人昵称
    	avatar	string	评论人头像
    	createTime	long	评论时间
    	review	string	评论内容
    	atUid	long	@人的UID
    	atNickName	string	@人的昵称
    	v_lv	int	评论人是否大V
    0否
    1是
    	extra	string	扩展信息，APP端展现用
    
    {
    "accessToken": "584c2bee358d4171ac36bdfeaa52a081",
    "code": 200,
    "data": {
    "reviews": [
    {
    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/73bd52bb-ce8d-44eb-a5fe-9f893a57c002",
    "createTime": 1462281757000,
    "nickName": "尔东",
    "review": "sdfdsfdsfdsf",
    "uid": 302
    }
    ]
    },
    "message": "ok"
    }
    
