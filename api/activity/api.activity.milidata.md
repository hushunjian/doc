## 接口描述
七天活动米粒接口
## API Path
/api/activity/milidata
## 请求参数
参数名称	类型	是否必须	备注
auid	long	否	活动报名用户id
isApp	int	否	是否APP内，0APP外(默认)，1APP内
isFirst	int	否	是否首次请求，0首次(默认)，1非首次
## 返回报文
    {
    "accessToken": "aa017b153f3946379c508cd85d4151e5",
    "code": 200,
    "data":{
    "result":[
    {
    "content": "<div class=\"columnsD-list massages\"><p class=\"blue fs16\">欢迎回到米汤，今天过的怎么样？</p></div>",
    "linkUrl": "",
    "order": 0,
    "type": 1
    },
    {
    "content": "<div class=\"columnsD-list massages\"><p class=\"blue fs16\">活动信息点击这里</p></div>",
    "linkUrl": "http://www.baidu.com",
    "order": 2,
    "type": 2
    },
    {
    "content": "<div class=\"columnsD-list massages\"><p class=\"blue fs16\">APP下载链接</p></div>",
    "linkUrl": "http://www.me-to-me.com",
    "order": 1,
    "type": 2
    }
    ]
    },
    "message": "ok"
    }
