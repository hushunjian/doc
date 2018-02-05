## 接口描述
参与抽奖接口

## API Path
/api/live/joinLottery

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|lotteryId|long|是|抽奖Id|
|content|string|是|留言内容|
|source|int|是|同speak接口<br>客户端类型（来源），0不区分，1IOS，2Android，3微信，4H5|

## 返回报文
    {
    	"code": 200,
    	"message": "ok"
    }

### result code
|code|message|
|:-|:-|
|200|ok|
|50037|来晚一步！这个王国已经被删除了……|
|50073|找不到该抽奖信息！|
|50073|该抽奖已删除！|
|50073|抽奖发起人不能参与抽奖！|
|50071|此王国处于全体禁言模式|
|50072|你已被王国禁言|