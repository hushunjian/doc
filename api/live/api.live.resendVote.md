## 接口描述
投票重新发送接口
## API Path
/api/live/resendVote
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|fragmentId    |long    |是    |发言ID    |
## 返回报文
    参数名称	类型	备注
    fragmentId	long	新的fragmentId
    
    {
    "code": 200141
    "message": "投票重新发送成功"
    }
