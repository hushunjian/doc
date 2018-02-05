## 接口描述
更新APP灯箱
## API Path
/api/appconfig/updateLightBox
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|id       |int     |灯箱id           |
|image    |string  |灯箱图片         |
|mainText |string  |主文本           |
|subText  |string  |副文本           |
|mainColor|string  |主色调           |
|link     |string  |跳转链接         |
|beginAt|int     |开始时间         |
|endAt  |int     |结束时间         |
|status   |int     |状态（0：启用；1：不启用)  |
## 请求报文
```
    {
      "id":1,
      "image:"zuimeijiaxiangdengxiangye.png",
      "mainText":"最美家乡活动",
      "subText":"123测试",
      "mainColor":"#ffaec9",
      "link":"http://testwebapp.me-to-me.com/app/static_page/kingdom.html?topicId=7597",
      "beginAt":1511078400000,
      "endAt":1511078400000,
      "status":0
    },
```
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
