## 接口描述
指定王国抽奖参与用户
## API Path
/api/kingdom/setLotteryAppoint
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|lotteryId|int     |抽奖Id           |
|userId   |int     |用户ID           |
|isAppoint|int     |是否指定(0:取消指定；1：指定)   |

## 请求报文
    {
      "token":"99999999-9999-9999-9999-999999999999",
      "lotteryId": 234,
      "userId"： 13444,
      "isAppoint": 1
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }