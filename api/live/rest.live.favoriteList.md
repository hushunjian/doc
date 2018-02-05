## 接口描述
获取直播收藏的人员列表

## API Path
/rest/live/favoriteList

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|int|是|直播id|

## 返回报文
	{
    	"accessToken": "5f86468eba8c4b84ba882ee5b819cb3b",
    	"code": 200,
    	"data": {
    		"userElements": [
    			{
    				"avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/Fj2p3EOTl1WorQn5ryA1He_G8Crh",
    				"avatarFrame" : "",
    				"nickName": "十年终不遇a",
    				"uid": 325,
    				"v_lv":0,
    				"level":1
    			},
    			{
    				"avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/Ft1QdFhVXS3M6gR6OcHeK86yWs-m",
    				"avatarFrame" : "",
    				"nickName": "十年终相遇",
    				"uid": 326,
    				"v_lv":0,
    				"level":1
    			}
    		]
    	},
    	"message": "ok"
	}
    
### 返回字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|userElements|array|订阅用户节点数组|

### userElements订阅用户节点字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|nickName|string|昵称|
|avatar|string|头像|
|avatarFrame|string|头像框|
|v_lv|int|是否大V，0否，1是|
|level|int|等级|
