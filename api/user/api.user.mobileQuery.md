## 接口描述
根据手机本地通讯录查询米汤用户
## API Path
/api/user/mobileQuery
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|mobiles    |string    |Y    |手机号码，多个之间以英文逗号分隔    |
## 返回报文
    参数名称	类型	备注
    totalAppUser	int	手机号中有多少个米汤用户
    mobileContactData	array	手机联系人节点数组
    	mobile	string	手机号
    	isAppUser	int	是否米汤用户
    0：否
    1：是
    	uid	long	用户UID
    	avatar	string	用户头像
    	nickName	string	用户昵称
    	introduced	string	用户简介
    	v_lv	int	是否大V
    0否
    1是
    	isFollowed	int	我是否关注过
    0否
    1是
    	isFollowMe	int	是否关注过我
    0否
    1是
