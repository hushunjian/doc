## 接口描述
王国大图左右滑动接口

## API Path
/api/live/getKingdomImage

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|王国ID|
|fid|long|是|fragmentID|
|imageName|string|是|图片名，即去除https://cdn.me-to-me.com/前缀后的文件名|
|type|int|是|查询类型，0向后查询，1向前查询，2前后都要|

## 返回报文
{
    "code": 200,
    "data":{
    	"totalCount":100,
    	"imageDatas":[
    		{
    			"index":1
    			"fid":123,
    			"imageName":"abc",
    			"fragmentImage":"https://cdn.me-to-me.com/abc",
    			"extra":"{\"format\":\"image/jpeg\",\"h\":2560,\"length\":561322,\"orientation\":0,\"type\":\"image\",\"w\":1440}",
    			"likeCount":123,
    			"isLike":0
    		}
    	]
    }
    "message": "ok"
}

### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|totalCount|int|总共图片数|
|imageDatas|array|图片节点数组，这里返回的都是顺序的|

### imageDatas图片节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|index|int|图片所在王国的次序，第一张为1|
|fid|long|fragmentID，当为0时，表示该图片为封面|
|imageName|string|图片名，即去除https://cdn.me-to-me.com/前缀后的文件名|
|fragmentImage|string|图片地址|
|extra|string|图片信息，具体参考《王国详情Extra信息白皮书.pdf》图片信息类型|
|likeCount|int|点赞数|
|isLike|int|当前用户是否点赞过，0否，1是|