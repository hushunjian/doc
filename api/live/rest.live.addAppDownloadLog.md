## 接口描述
H5记录下载历史接口

## API Path
/rest/live/addAppDownloadLog

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|fromUid|long|是|来源用户UID|
|requestUid|long|否|下载的人UID，如果当时还未登录，则传递0或不传|

## 返回报文
    {
	    "code": 200,
	    "message": "OK"
    }

