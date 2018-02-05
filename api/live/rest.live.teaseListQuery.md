## 接口描述
逗一逗全量查询接口。

## API Path
/rest/live/teaseListQuery

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|

## 返回报文
	{
		"code": 200,
		"data":{
    		"teaseData":[
         		{
             		"id":123456,
             		"name":"猫",
             		"audio":"http://cdn.me-to-me.com/abc",
             		"image":"http://cdn.me-to-me.com/def"
           	}
         	]
		}
		"message": "OK"
	}

### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|teaseData|array|逗一逗节点数组|

#### teaseData逗一逗节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|id|long|逗一逗ID|
|name|string|名字|
|audio|string|音频地址|
|image|string|飘屏图片地址|

