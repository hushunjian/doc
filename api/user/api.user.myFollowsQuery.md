## 接口描述
查询我的关注列表，带过滤条件，模糊查询，分页查询，分组
## API Path
/api/user/myFollowsQuery
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|page    |int    |Y    |分页参数，第一页传1    |
|name    |string    |N    |昵称过滤条件    |
## 返回报文
    参数名称	类型	备注
    totalPage	int	我的关注总页数
    myFollowData	array	我关注的节点数组
    	uid	long	用户UID
    	avatar	string	用户头像
    	nickName	string	用户昵称
    	introduced	string	用户简介
    	v_lv	int	是否大V
    0否
    1是
    	group	string	组信息，如“A”“F”“#”等
