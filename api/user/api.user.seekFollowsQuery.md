## 接口描述
更多求关注列表查询接口，分页查询
## API Path
/api/user/seekFollowsQuery
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|sinceId    |long    |Y    |分页参数，第一页传-1    |
## 返回报文
    参数名称	类型	备注
    isSeek	int	是否已经求关注过了
    0否
    1是
    seekFollowData	array	求关注节点数组
    	sinceId	long	分页参数
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
