## 接口描述
更新用户画像属性
## API Path
/api/user/personaModify
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|type    |int    |Y    |属性类型    |
|1性别    |    |    |    |
|2性取向    |    |    |    |
|3兴趣爱好    |    |    |    |
|4年龄段    |    |    |    |
|5职业    |    |    |    |
|params    |string    |Y    |具体新的值，注意是字符串类型，就算是性别枚举是1也传字符串的"1"，爱好多个爱好之间以英文逗号分隔    |
## 返回报文
    {
    "code": 200,
    "message": "操作成功"
    }