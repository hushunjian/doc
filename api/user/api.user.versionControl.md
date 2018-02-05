## 接口描述
获取版本接口

## API Path
/api/user/versionControl

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|version|int|是|版本|
|platform|int|是|1 Android 2 ios|

## 返回报文
	{
	    "accessToken": "1e2d24edb7d34871952fc3cd9f54672a",
	    "code": 200,
	    "data": {
	    	"id": 1,
	    	"isUpdate": 1,
	    	"platform": 1,
	    	"updateDescription": "更新了你妹",
	    	"updateTime": 1462865769000,
	    	"updateUrl": "http://www.baidu.com",
	    	"version": "2.0.0.1",
	    	"resourceCode":0,
	    	"emotionSwitch":0
	    },
	    "message": "ok"
	}
    
### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|id|long|版本id|
|isUpdate|int|是否需要更新 0不需要更新，1需要更新 2 强制更新|
|platform|int|平台|
|updateDescription|string|更新描述|
|updateTime|long|更新时间|
|updateUrl|string|下载地址|
|version|string|版本|
|resourceCode|int|皮肤资源，0没有，>1使用资源|
|emotionSwitch|int|加号页情绪图谱开关，0关，1开|
