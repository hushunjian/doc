## 接口描述
首页最热标签 
## API Path
/api/home/kingdomHotTag
## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-
|cid|Int|是|
## 返回报文
    参数名称	类型	备注
    KingdomHotTagList	array	内容节点数组
    	tagId   long	标签ID
    	tagName     String	标签名称
    	coverImage	String	封面图
        personCount	    Int	参与人数
    	kingdomCount	Int	王国数量
    	isShowLikeButton    Int	1 显示，0不显示。
    	imageData Array	王国图片组 
			coverImage	string	封面图
    	
    {
    "code": 200,
    "data": {
        "KingdomHotTagList": [{
            "id": 1
            "tagId": 11
            "tagName": "标题"
            "coverImage": "http://cdn.me-to-me.com/250a51c79a6d43159327ae3f474a8a7e.JPG",--封面图
            "personCount": 0,
            "kingdomCount": 0,
			"imageData": [
				{"coverImage": "http://cdn.me-to-me.com/250a51c79a6d43159327ae3f474a8a7e.JPG"},
				{"coverImage": "http://cdn.me-to-me.com/250a51c79a6d43159327ae3f474a8a7e.JPG"}
				]
            }]
        },
    "message": "ok"
    }
    
