## 接口描述
编辑发言接口
## API path
/api/live/editSpeak
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|fragmentId    |Int    |是    |需要修改的记录id    |
|extra    |string    |是    |需要修改扩展信息（目前只支持该字段的编辑）    |
## 返回报文
    {
    "accessToken": "4bbbcbbf003d49ac99726bb77756e5bf",
    "code": 20073,
    "message": "编辑王国发言内容成功"
    }
