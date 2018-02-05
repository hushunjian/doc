## 接口描述
用户搜索
## API Path
/api/search
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|keyword    |string    |是    |关键字    |
|page    |Int    |是    |当前页    |
|pageSize    |Int    |是    |每页显示记录数    |
|isSearchFans    |int    |是    |查询粉丝0查询所有人，1查询粉丝    |
## 返回报文
    参数名称	类型	备注
    totalPage	int	总页数
    totalRecord	int	总记录数
    result	array	用户节点数组
    	uid	long	用户UID
    	nickName	string	用户昵称
    	avatar	string	用户头像
    	isFollowed	int	当前用户是否关注该用户
    0未关注
    1已关注
    	isFollowMe	int	该用户是否关注当前用户
    0未关注
    1已关注
    	introduced	string	用户简介
    	v_lv	int	用户大V标识
    0非大V
    1大V
    {
    "code": 200,
    "data": {
    "result": [
                {
    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/260105cc-1e4d-46ae-b11b-b0ad2bcd74c5",
    "isFollowMe": 0,
    "isFollowed": 0,
    "nickName": "奶糖",
    "uid": 319
                },
                {
    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/Flvmw_u3QGi6i70nVUxZIG_DUPiC",
    "isFollowMe": 0,
    "isFollowed": 0,
    "nickName": "小糖果",
    "uid": 298
                }
            ],
    "totalPage": 1,
    "totalRecord": 5
        },
    "message": "ok"
    }
    
