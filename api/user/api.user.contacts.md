## 接口描述
查询手机联系人、求关注列表、关注列表（分页）
## API Path
/api/user/contacts
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|page    |int    |Y    |分页参数，用于关注列表的分页，第一页传1    |
|mobiles    |string    |N    |手机号码，多个之间以英文逗号分隔，只有page=1时有效，当page>1时无需传递    |
## 返回报文
    参数名称	类型	备注
    totalPage	int	我的关注总页数
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
    seekFollowData	array	求关注节点数组
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
    myFollowData	array	我关注的节点数组
    	uid	long	用户UID
    	avatar	string	用户头像
    	nickName	string	用户昵称
    	introduced	string	用户简介
    	v_lv	int	是否大V
    0否
    1是
    	group	string	组信息，如“A”“F”“#”等
    
