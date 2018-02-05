## 接口描述
王国内容更新数量接口（配合王国详情接口）

## API Path
/rest/live/getUpdate

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|直播间id|
|pageNo|int|否|需要获取数据的页码（默认1）|
|offset|int|否|每页显示条数（默认50）|

## 返回报文
{
    "code": 20086,
    "data": {
    	"totalRecords":100,
    	"updateRecords":20,
    	"totalPages":2,
    	"startPageNo":1,
    	"lastFragmentId":123,
    	"firstPage":1,
    	"isForbid":1,
	    "isAllForbid":0
	},
    "message": "获取王国更新内容数量成功"
}

### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|totalRecords|int|总记录数|
|updateRecords|int|待更新记录数|
|totalPages|int|总页数|
|startPageNo|int|待更新数据的起始页|
|lastFragmentId|long|最新的评论ID|
|firstPage|int|当sinceId=0时返回有效，第一条有效数据所在的页|
|isForbid|int|当前用户是否被禁言，0否，1是|
|isAllForbid|int|当前王国是否全禁言，0否，1是|
