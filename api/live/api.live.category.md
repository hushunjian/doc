## 接口描述
获取王国分类信息

## API Path
/api/live/category

## 请求报文
|名称|类型|是否必须|备注|
|----|----|-------|------|

## 返回报文
    {
        categories:[{
             kcName: "haha",
             kcid:1,
             kcIcon:"avatar.png",
             kcImage:"avatar.png"
        }]
    }

### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|kcName|string|名称|
|kcid|int|分类ID|
|kcImage| String|分类封面图|
|kcIcon|String|分类图标|
