## 接口描述
抽奖活动接口
## API Path
/api/activity/LuckAward
## 请求参数
参数名称	类型	是否必须	备注
activityName	int	是	活动名称：
1：小米活动
channel	string	是	公参，渠道 (xiaomi) 根据安装包前台传过来这个参数后台会判断
version	string	是	公参，活动规定版本
## 返回报文
    {
    "accessToken": "b4c6ebb0dd5d417195272439b5debb88",
    "code": 200,
    "data": {
    "avatar": "FpXdLCD5Nhos0NbWPaLHcegzAiMe", //头像
    "awardCount": 78, // 抽奖剩余次数
    "awardName": "小米手环",  //中奖商品名称
    "count": 29,
    "id": 3,//奖品等级 1 2 3 4 5分别为 1 2 3  4 5等奖，其他数字前台自由支配(例:谢谢参与，再接再厉等) 6 7 8
    "me_number": "10027261", //me号
    "nickName": "sman",
    "prizeNumber": "[{\"activityName\":1,\"awardChance\":0.01,\"awardId\":1,\"awardName\":\"小米平衡车\",\"id\":4,\"number\":1},{\"activityName\":1,\"awardChance\":0.2,\"awardId\":2,\"awardName\":\"小米手机\",\"id\":5,\"number\":4},{\"activityName\":1,\"awardChance\":0.3,\"awardId\":3,\"awardName\":\"小米手环\",\"id\":6,\"number\":28}]",  //商品剩余数量，名称
    "probability": 0.3,
    "proof": "ec705d55-a34c-4b91-82e2-0e7e30fe9a54" //抽奖凭证号
      },
    "message": "ok"
    }
    
    {
    "accessToken": "73dfd671551341c8bda9550f32bdaa35",
    "code": 20073,
    "message": "抽奖次数已用完,分享内容可获得额外一次抽奖机会"
    }
    
    所有返回异常参数状态码:
    
    ("抽奖次数已用完,分享内容可获得额外一次抽奖机会","run out of lottery",20073),
    
    ("活动已经结束","award is end",20074),
    
    ("活动还未开始","award is not start",20075),
    
    ("该活动不存在或已停用","award is not exists",20076),
    
    ("不满足抽奖条件，请参阅活动规则","appease not award term",20077)
