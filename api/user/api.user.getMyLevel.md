## 接口描述
个人等级接口
## API Path
/api/user/getMyLevel
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
## 返回报文
    参数名称	类型	备注
    preLevel	object	前一个等级节点
    	level	int	等级
    	name	string	等级别名
    currentLevel	object	当前等级节点
    	level	int	等级
    	name	string	等级别名
    nextLevel	object	下一个等级节点
    	level	int	等级
    	name	string	等级别名
    avatar	string	用户头像
    availableCoin	int	当前用户米汤币
    priceRMB	double	米币转换人民币数
    nextLevelCoin	int	距离下一级还需要多少米汤币
    permissions	array	权限节点数组
    	code	Int	唯一标识
    	openLevel	int	该权限开启对应等级
    	seconds: 5,	int	语音时长(单位:秒)
    	name	string	权限名称
    	status	int	是否拥有权限
    0表示无该权限
    1表示有该权限
    (备注:权限为下载图片时 0 表示无权限 1表示下载有水印图片 2 表示下载无水印图片)
    
    
    {
        "accessToken": "697c707abc0a45839f78cc7a1d4a2cd5",
        "code": 200,
        "data": {
            "availabeCoin": 0,
            "avatar": "https://cdn.me-to-me.com/FnJMtJWvSHyRCcEa3zHdH8wd3oIG",
            "currentLevel": {
                "level": 3,
                "name": "name:3"
            },
            "nextLevel": {
                "level": 4,
                "name": "name:4"
            },
            "nextLevelCoin": 3000,
            "permissions": {
                "level": 3,
                "nodes": [
                    {
                        "code": 1,
                        "name": "米汤专属表情包",
                        "status": 1
                    },
                    {
                        "code": 2,
                        "name": "王国专属文字排版",
                        "status": 1
                    },
                    {
                        "code": 3,
                        "name": "超清晰原图展示",
                        "openLevel": 6,
                        "status": 0
                    },
                    {
                        "code": 4,
                        "name": "5分钟超长语音",
                        "openLevel": 8,
                        "seconds": 5,
                        "status": 0
                    },
                    {
                        "code": 5,
                        "name": "发送视频",
                        "openLevel": 4,
                        "status": 0
                    },
                    {
                        "code": 6,
                        "name": "私下单独聊聊",
                        "openLevel": 4,
                        "status": 0
                    },
                    {
                        "code": 7,
                        "name": "10个聚合王国",
                        "openLevel": 7,
                        "status": 0
                    }
                ]
            },
            "preLevel": {
                "level": 2,
                "name": "name:9"
            },
            "stealTopicId": 0
        },
        "message": "ok"
    
    
    
    
