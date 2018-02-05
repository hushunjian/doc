## 接口描述
发起抽奖接口
## API Path
/api/live/createLottery
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId    |long    |是    |王国Id    |
|source    |int    |是    |来源（同speak接口）    |
|title    |string    |是    |抽奖标题    |
|summary    |string    |是    |抽奖内容及说明    |
|winNumber    |int    |是    |中奖人数    |
|endTime    |long    |是    |结束时间    |
## 返回报文
    参数名称	类型	备注
    lotteryId	long	抽奖ID
