## 接口描述
获取抽奖列表接口
## API Path
/api/live/getLotteryList
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId    |long    |是    |王国ID    |
|sinceId    |long    |否    |分页参数，第一次传-1，后面的传返回结果中的最后一个内容的sinceId    |
## 返回报文
    参数名称	类型	备注
    lotteryList	array	抽奖数组
    	sinceId	long	分页用，抽奖ID
    	createTime	long	发起时间
    	title	string	抽奖标题
    	summary	string	抽奖简介和说明
    	status	int	0进行中1倒计时结束2抽奖结束
    	signUp	int	0未报名 1已报名
    	isWin	int	0未中奖 1已中奖
    	timeInterval	long	服务器当前时间到结束时间的秒数
    	endTime	long	结束时间
    	winNumber	Int	设置的中奖人数
    	joinNumber	int	参加人数
    	winUsers	array	中奖用户数组
    		uid	long	中奖用户UID
    		avatar	string	中奖用户头像
    		nickName	string	中奖用户昵称
    		v_lv	Int	中奖用户0 普通 1 大V
    		level	int	中奖用户等级
    
