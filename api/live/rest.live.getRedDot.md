## 接口描述
获取王国更新红点接口
这个接口结构真够扯淡的，哎。。先这么转吧。。等以后再修改或废弃吧

## API Path
/rest/live/getRedDot

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|updateTime|int|否|当前时间戳，单位毫秒数|

## 返回报文
    {
	    "accessToken": "4bbbcbbf003d49ac99726bb77756e5bf",
	    "code": 20084,
	    "message": "获取红点成功"
    }

### 说明
如返回code=20084则说明需要显示红点
如返回code=50035则说明不需要显示红点