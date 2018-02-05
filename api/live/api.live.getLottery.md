## 接口描述
获取抽奖详情接口
## API Path
/api/live/getLottery
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|lotteryId    |long    |是    |抽奖ID    |
## 返回报文
    参数名称	类型	备注
    uid	long	抽奖发起人ID
    avatar	string	抽奖发起人头像
    nickName	string	抽奖发起人昵称
    v_lv	Int	抽奖发起人0 普通 1 大V
    level	int	抽奖发起人等级
    createTime	long	抽奖发起时间
    title	string	抽奖标题
    summary	string	抽奖简介和说明
    status	int	0进行中1倒计时结束2抽奖结束
    signUp	int	0未报名 1已报名
    isWin	int	0未中奖 1已中奖
    timeInterval	long	服务器当前时间到结束时间的秒数
    endTime	long	结束时间
    winNumber	Int	设置的中奖人数
    joinNumber	int	参加人数
    topicId   long 王国ID
    winUsers	array	中奖用户数组
    	uid	long	中奖人UID
    	avatar	string	中奖人头像
    	nickName	string	中奖人昵称
    	v_lv	Int	中奖人0 普通 1 大V
    	level	int	中奖人等级
