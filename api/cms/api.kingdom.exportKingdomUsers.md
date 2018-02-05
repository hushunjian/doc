## 接口描述
导出王国发言用户列表
## API Path
/api/kingdom/exportKingdomUsers
## 请求说明
|参数名    |类型    |备注             |
|--------- |--------|-----------------|
|token     |string  |权限token        |
|fragment  |string  |评论内容         |
|joinBegin |int     |注册开始时间     |
|joinEnd   |int     |注册结束时间     |
|isFirstReview|int  |是否第一次留言(0:全部；1:是；2：否) |
|topicId|int  |王国Id |
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }