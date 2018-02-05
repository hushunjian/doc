## 接口描述
编辑抽奖接口
## API Path
/api/live/editLottery
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|lotteryId    |long    |是    |抽奖Id    |
|title    |string    |是    |抽奖标题    |
|summary    |string    |是    |抽奖内容及说明    |
|winNumber    |int    |是    |中奖人数    |
|endTime    |long    |是    |结束时间    |
## 返回报文
    {
    "code": 200,
    "message": "操作成功"
    }
