## 接口描述
七天活动推荐历史接口
## API Path
/api/activity/recommendHistory
## 请求参数
参数名称	类型	是否必须	备注
auid	long	是	活动报名用户id
page	int	否	页码（默认1）
pageSize	int	否	每页数目（默认10）
## 返回报文
    {
    "accessToken": "83c6d37217874fe5b6e5ecc8925c621a",
    "code": 200,
    "data":{
    "totalCount": 3,
    "totalPage": 1,
    "result":[
    {
    "recommendTime": 1481774400000,
    "userList":[
    {
    "uid": 310,   ---UID
    "vlv": 0,     ---是否大V  1是大V
    "avatar":  "http://cdn.me-to-me.com/72b7c873-cabc-4a43-926b-ea63ee7839b8", --头像
    "nickName": "胖不起来的熊猫",  ---昵称
    "sex": 0,       --性别 0女，1男
    "status": 0,     --状态，0单人王国不存在，1单身，2已申请，3已结婚
    "topicId": 0,    --王国ID
    "title":"",      --王国title
    "converImage":"",   --王国封面图片
    "hot": 0       --王国热度（暂时应该都是0）
    },
    {
    "avatar": "http://cdn.me-to-me.com/default.png",
    "hot": 0,
    "nickName": "lijie",
    "sex": 0,
    "status": 0,
    "topicId": 0,
    "uid": 324,
    "vlv": 0
    }
    ]
    }
    ]
    },
    "message": "ok"
    }
