## 接口描述
导出主播邀请明细Excel
## API Path
/api/anchor/exportAnchorInviteDetail
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|uid    |int  |主播UID         |
|joinBegin |int     |注册开始时间     |
|joinEnd   |int     |注册结束时间     |
|raffleTopicId   |int     |抽奖王国id     |

## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }