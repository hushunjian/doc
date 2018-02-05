## 接口描述
获取王国分类信息

## API Path
/rest/live/category

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|

## 返回报文
	{
		"accessToken": "1e2d24edb7d34871952fc3cd9f54672a",
		"code": 200,
		"data": {
	    	"categories": [
	    		{
	    			"kcName":"haha",
	    			"kcid":1,
	    			"kcIcon":"",
	    			"kcImage":""
	    		}
	    	]
		},
		"message": "ok"
	}

### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|categories|array|分类节点数组|

### categories分类节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|kcName|string|名称|
|kcid|int|分类ID|
|kcImage| String|分类封面图|
|kcIcon|String|分类图标|
