## 接口描述
获取上市王国休市时间
## API Path
/api/kingdom/getKingdomRestTime
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
## 请求报文
## 返回报文
    {
        "body": {
          "startAt": 1511078400000,
          "endAt": 1511078400000
        },
        "status": 2000
    }
    
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|startAt  |int     |休市时间开始     |
|endAt    |int     |休市时间结束     |
|status   |int     |2000:成功        |
