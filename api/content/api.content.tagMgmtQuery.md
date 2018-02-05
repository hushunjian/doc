## 接口描述
标签管理页查询页面

## API Path
/api/content/tagMgmtQuery

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|type|int|是|查询类型，1喜欢，2没兴趣，3其他|
|page|int|否|查询页数，第一页为1（默认）|

## 返回报文
    {
    "code": 200,
    "data": {
        "kingdomTagList": [{
            "tagId": 11,
            "tagName": "铲屎官的日常",
            "coverImage": "http://cdn.me-to-me.com/250a51c79a6d43159327ae3f474a8a7e.JPG",
            "personCount": 4632,
            "kingdomCount": 53,
            "isTop":0,
            "isShowLikeButton":0,
            "imageData": [
                {"coverImage": "http://cdn.me-to-me.com/250a51c79a6d43159327ae3f474a8a7e.JPG"},
                {"coverImage": "http://cdn.me-to-me.com/250a51c79a6d43159327ae3f474a8a7e.JPG"}
                ],
            }]
        },
    "message": "ok"
    }
    
### 字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|kingdomTagList|array|标签节点数组|
    
### 标签节点字段说明
|参数名称|类型|	备注|
|:-------------|:--------------|:---------|
|tagId|	long|	标签ID|
|tagName	|string|	标签名称|
|coverImage|	string	|封面图|
|personCount|	int|	参与人数|
|kingdomCount	|int|	王国数量|
|isShowLikeButton    |	int	|	1 显示，0不显示|
|imageData|	 array|王国图片组|
|isTop|int|是否置顶，0否，1是|

### 王国图片组信息imageData成员结构说明
|字段|类型|描述|
|:-|:-|:-|
|coverImage|string|封面图|
    	