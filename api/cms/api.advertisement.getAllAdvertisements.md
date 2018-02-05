## 接口描述
获取所有的广告
## API Path
/api/advertisement/getAllAdvertisements
## 请求说明
|参数名     |类型    |备注             |
|-----------|--------|-----------------|
|token      |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
## 返回报文
    {
        "body":{
            "data":[
                {
                    "id":1,
                    "name":"广告1234",
                    "cover":"",
                    "positionId":1,
                    "positionName":"广告位1",
                    "probability":100,
                    "coverWidth":600,
                    "coverHeight":400,
                    "validAt":"2017-11-07 09:32:09",
                    "type":0,
                    "topicId":"432d3",
                    "url":"",
                    "createdAt":"2017-11-05 15:26:06"
                },
                {
                    "id":2,
                    "name":"广告1234",
                    "cover":"",
                    "positionId":2,
                    "positionName":"广告位2",
                    "probability":100,
                    "coverWidth":600,
                    "coverHeight":400,
                    "validAt":"2017-11-07 09:32:09",
                    "type":1,
                    "topicId":"",
                    "url":"https://testwebapp.me-to-me.com/NewYear/my/main",
                    "createdAt":"2017-11-05 15:26:06"
                }
            ],
            "total":200
        },
        "status":2000
    }
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|id       |int  |广告id           |
|name     |string  |广告名称         |
|cover    |string  |广告封面         |
|positionId  |int  |所属广告位Id      |
|positionName  |string  |所属广告位名字  |
|probability  |int  |显示概率(0-100整数) |
|coverWidth   |int  |广告封面宽度 |
|coverHeight  |int  |广告封面高度 |
|validAt  |string |有效时间          |
|type     |int |类型(0:链接;1:王国)  |
|topicId   |string |王国ID            |
|url      |string |链接URL           |
|createdAt |string |创建时间         |
|total    | int   |数据总数          |
|status   |int     |2000:成功        |
