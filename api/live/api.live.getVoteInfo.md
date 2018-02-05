## 接口描述
投票详情查询接口
## API Path
/api/live/getVoteInfo
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|voteId    |long    |是    |投票ID    |
|    |    |    |    |
## 返回报文
    参数名称	类型	备注
    uid	long	投票发起人ID
    avatar	string	投票发起人头像
    nickName	string	投票发起人昵称
    v_lv	Int	投票发起人0 普通 1 大V
    myVote	string	我的投票，空字符串代表未投票，单选投票选项ID，多选投票多个选项ID英文分号分隔
    voteId	long	投票ID
    title	string	投票标题
    type	int	投票类型0单选1多选
    status	int	1进行中2结束
    canEnd	int	是否可结束投票 0否 1是
    recordCount	int	总投票数
    createTime	date	投票发起时间
    options	array	投票选项信息数组
    	id	long	选项ID
    	option	string	选项名称
    	count	int	票数
    users	array	投票用户信息数组
    	uid	long	用户ID
    	avatar	string	头像
    	nickName	string	昵称
    	v_lv	int	0 普通 1 大V
    
    {
    "code": 200,
    "message": "OK",
    "data": {
    "uid":123456,
    	"avatar":"http://7xs9q4.com2.z0.glb.qiniucdn.com/260105cc-1e4d-46ae-b11bd74c5"
    	"nickName":"张三",
    	"v_lv ":1,
    	"myVote ":"10100;10200;10300",
    	"voteId ":12345555,
    	"status":1,
    	"recordCount":120,
    	"createTime":"2017-08-20 13:21:10",
    	"title":"你喜欢猫还是喜欢狗",
    	"type":0,
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
         ],
      "users":[
     {
    "uid":123458,
    	"avatar":"http://7xs9q4.com2.z0.glb.qiniucdn.com/260105cc-1e4d-46ae-b11bd74c5"
    	"nickName":"李四",
    	"v_lv ":1
    },
    {
    "uid":123459,
    	"avatar":"http://7xs9q4.com2.z0.glb.qiniucdn.com/260105cc-1e4d-46ae-b11bd74c5"
    	"nickName":"王五",
    	"v_lv ":1
    }
    ]
    }
    }
