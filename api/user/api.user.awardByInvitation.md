## 接口描述
邀请奖励领取接口

## API Path
/api/user/awardByInvitation

## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|:-------------|:--------------|:---------:|:------------------------------------|
|fromUid	|long	|获取收益的源头用户	|
|type	|int	|奖励类型，1邀请奖励，2被邀请奖励	|

## 返回报文
    {
        "accessToken": "ccf90aa4defd45cca3fb60c36ad4d5aa",
        "code": 200,
        "message": "领取成功",
        "data":{
        	"upgrade":0,
        	"currentLevel":1
        }
    }
    {
        "accessToken": "ccf90aa4defd45cca3fb60c36ad4d5aa",
        "code": 500,
        "message": "已经领取过，不能重复领取"
    }
    
###当领取成功时，需返回是否升级相关属性，字段解释如下：
|名称	|类型	|备注	|
|:-------------|:--------------|:------------------------------------|
|upgrade	|int	|是否升级，0否，1是	|
|currentLevel	|int	|当前等级	|