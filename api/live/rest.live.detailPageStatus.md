## 接口描述
查询王国详情页分页的相关状态信息。
配合detail接口使用，仅对使用前端缓存的机制有效.
比如，查询每页的最后删除时间，用于针对前端缓存数据的删除处理。

## API Path
/rest/live/detailPageStatus

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|王国ID|
|pageNo|int|是|需要获取数据的页码（默认1）|
|offset|int|否|每页显示条数（默认50）|

## 返回报文
	{
		"code": 200,
		"data":{
    		{
				"page":1,
				"records":48,
				"isFull":1,
				"updateTime":123
			}
		}
		"message": "OK"
	}
	
### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|page|int|页码|
|records|int|有效记录数|
|isFull|int|是否满页，1满，2不满|
|updateTime|long|本页最后次更新时间|
