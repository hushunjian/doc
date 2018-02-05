## 接口描述
灯箱内容获取接口

## API Path
/rest/activity/getlightboxInfo

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|

## 返回报文
	{
	    "accessToken": "1e2d24edb7d34871952fc3cd9f54672a",
	    "code": 200,
	    "data": {
	    	"image": "",
	    	"mainText": "",
	    	"secondaryText": "",
	    	"mainTone": "",
	    	"linkUrl": "http://www.baidu.com"
	    },
	    "message": "ok"
	}
    
### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|image|string|图片地址|
|mainText|string|主标题|
|secondaryText|string|副标题|
|mainTone|string|主色调|
|linkUrl|string|点击链接地址|

