## 接口描述
王国图库按月份查询接口
这里暂不分页，直接返回全部

## API Path
/api/live/kingdomImageList

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|王国ID|
|month|string|是|月份，格式yyyy-MM|

## 返回报文
{
    "code": 200,
    "data":{
    	"imageDatas":[
    		{
    			"fid":123,
    			"imageName":"abc",
    			"fragmentImage":"https://cdn.me-to-me.com/abc",
    			"extra":"{\"format\":\"image/jpeg\",\"h\":2560,\"length\":561322,\"orientation\":0,\"type\":\"image\",\"w\":1440}"
    		}
    	]
    }
    "message": "ok"
}

### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|imageDatas|array|图片节点数组，按正序返回|

### imageDatas图片节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|fid|long|fragmentID，当为0时，表示该图片为封面|
|imageName|string|图片名，即去除https://cdn.me-to-me.com/前缀后的文件名|
|fragmentImage|string|图片地址|
|extra|string|图片信息，具体参考《王国详情Extra信息白皮书.pdf》图片信息类型|
