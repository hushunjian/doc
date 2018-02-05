## 接口描述
查询APP灯箱页列表
## API Path
/api/appconfig/getLightBoxsByTime
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|searchTime|int    |查询时间         |
|pageIndex |int    |当前页           |
|pageSize  |int    |页大小           |
## 返回报文
```
  {
    "body":{
            "data":[
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
                {
                  "id":2,
                  "image:"yuese.png",
                  "mainText":"音乐之声",
                  "subText":"123测试",
                  "mainColor":"#ffaec9",
                  "link":"http://testwebapp.me-to-me.com/app/static_page/kingdom.html?topicId=7597",
                  "beginAt":1511078400000,
                  "endAt":1511078400000,
                  "status":1
                }
            ],
            "total":200
          },
    "status":2000
  }
```
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|id       |int     |灯箱id           |
|image    |string  |灯箱图片         |
|mainText |string  |主文本           |
|subText  |string  |富文本           |
|mainColor|string  |主色调           |
|link     |string  |跳转链接         |
|beginAt|int     |开始时间         |
|endAt  |int     |结束时间         |
|status   |int     |状态（0：启用；1：不启用)  |