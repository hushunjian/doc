## 接口描述
王国详情列表投票信息查询接口
## API Path
/api/live/getTopicVoteInfo
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|voteId    |long    |是    |投票ID    |
## 返回报文
    参数名称	类型	备注
    voteId	long	投票ID
    title	string	投票标题
    type	int	投票类型0单选1多选
    status	int	1进行中2结束
    options	array
    	id	long	选项ID
    	option	string	选项名称
    	count	int	票数
    
    {
    "code": 200,
    "message": "OK",
    "data": {
    	"voteId":123,   --投票ID
    	"title":"你喜欢猫还是喜欢狗",--投票标题
    	"type":0,--0单选1多选
    	"options":[
         {
             "id":123456,
             "option":"猫",
             "count":5
           },
            {
             "id":123457,
             "option":"狗",
             "count":10
           }
         ]
    }
    }
