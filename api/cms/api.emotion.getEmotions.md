## 接口描述
获取表情
## API Path
/api/emotion/getAllEmotions
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|packId   |int     |表情包id         |
|pageIndex |int     |当前页          |
|pageSize  |int     |页大小          |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "id":1,
                  "name":"捂脸",
                  "cover":""
                  "order": 1,
                  "extra": 1,
                  "width": 20,
                  "height": 20,
                },
                {
                  "id":2,
                  "name":"捂脸",
                  "cover":""
                  "order": 2,
                  "extra": 1,
                  "width": 20,
                  "height": 20,
                }
            ],
            "total":45
          },
    "status":2000
  }
```
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|id       |int     |表情id           |
|packId   |int     |表情包id           |
|name     |string  |表情名称         |
|cover    |string  |表情封面图       |
|order    |int     |表情排序号       |
|extra    |string  |附加信息         |
|width    |int     |表情宽度         |
|height   |int     |表情高度         | 
|total    |int     |数据总条数       |
|status   |int     |状态码           |