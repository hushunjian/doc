## 接口描述
王国图库月份列表接口

## API Path
/api/live/kingdomImageMonth

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|王国ID|
|fid|long|否|fragmentID|

## 返回报文
{
    "code": 200,
    "data":{
    	"monthCount":10,
    	"showMonth":"2017-10"
    	"monthData":[
    		{
    			"month":"2017-10",
    			"imageCount":123
    		},
    		{
    			"month":"2017-11",
    			"imageCount":12
    		}
    	]
    }
    "message": "ok"
}

### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|monthCount|int|有图片的月份数|
|showMonth|string|月份，格式yyyy-MM<br>当fid传递的时候，本字段返回该fid所在的月份<br>当fid不传递或0时，本字段返回第一个月份|
|monthData|array|月份节点数组，按正序返回|

### monthData月份节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|month|string|月份，格式yyyy-MM|
|imageCount|int|图片数|
