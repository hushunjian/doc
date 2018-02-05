## 接口描述
抽奖参与用户留言查询接口
## API Path
/api/live/getJoinLotteryUsers
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|sinceId    |long    |否    |分页参数，第一次传-1，后面的传返回结果中的最后一个内容的sinceId    |
|lotteryId    |long    |是    |抽奖ID    |
## 返回报文
    参数名称	类型	备注
    joinUsers	array	参与用户数组列表
    	sinceId	long	分页参数，发言记录ID
    	uid	long	用户UID
    	avatar	string	用户头像
    	nickName	string	用户昵称
    	v_lv	Int	用户0 普通 1 大V
    	level	int	用户等级
    	content	string	留言内容
    	prohibit	int	0正常 1取消资格
