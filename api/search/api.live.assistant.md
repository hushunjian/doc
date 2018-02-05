## 接口描述
用户搜索补全
## API Path
/api/live/assistant
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|keyword    |string    |是    |关键字    |
## 返回报文
    参数名称	类型	备注
    result	array	用户节点数组
    	uid	long	用户UID
    	nickName	string	用户昵称
    	avatar	string	用户头像
    	v_lv	int	用户大V标识
    0非大V
    1大V
    {
    "code": 200,
    "data": {
    "result": [
                {
    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/260105cc-1e4d-46ae-b11b-b0ad2bcd74c5",
    "nickName": "奶糖",
    "uid": 319
                },
                {
    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/Flvmw_u3QGi6i70nVUxZIG_DUPiC",
    "nickName": "小糖果",
    "uid": 298
                }
            ]
        },
    "message": "ok"
    }
