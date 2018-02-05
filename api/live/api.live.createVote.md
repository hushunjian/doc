## 接口描述
投票创建接口
## API Path
/api/live/createVote
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId    |int    |是    |王国ID    |
|source    |int    |是    |客户端类型（来源），0、不区分，1、ios，2、android，3、微信，4、h5    |
|同speak接口    |    |    |    |
|title    |string    |是    |投票标题    |
|option    |string    |是    |多个选项英文分号分隔    |
|type    |int    |是    |0单选1多选    |
## 返回报文
    参数名称	类型	备注
    fragmentId	long	最后一次评论ID
    voteId	long	投票ID
    score	int	内容加分分值
    
    {
    "code": 200137
    "message": "投票创建成功"
    }
