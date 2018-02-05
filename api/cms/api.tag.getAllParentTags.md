## 接口描述
获取父标签列表
## API Path
/api/tag/getAllParentTags
## 请求说明
|参数名    |类型    |备注             |
|--------- |--------|-----------------|
|token     |string  |权限token        |
## 返回报文
    {
      "body":[
        {
          "parentTagId": 1,
          "parentTagName": "十九大"
        },
        {
          "parentTagId": 2,
          "parentTagName": "深夜食堂"
        }
      ],
      "status":2000 
    }

## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|parentTagId|int   |父标签ID         |
|parentTagName|string|父标签名称     |
|status   |int     |状态码           |