## 接口描述
老徐文章评论点赞信息获取接口
## API Path
/api/content/getArticleComments
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|id    |int    |是    |老徐文章id    |
## 返回报文
    参数名称	类型	备注
    likeCount	int	点赞数
    reviewCount	int	评论数
    isLike	int	是否点赞
    0否
    1是
    reviews	array	评论节点数组
    	id	long	评论ID
    	createTime	long	评论时间
    	review	string	评论内容
    	atNickName	string	@人的昵称
    	atUid	long	@人的UID
    	v_lv	int	评论人是否大V
    0否
    1是
    	uid	long	评论人UID
    	nickName	string	评论人昵称
    	avatar	string	评论人头像
    	extra	string	扩展信息，APP端展现用
    likeElements	array	点赞人节点数组
    	uid	long	UID
    	nickName	string	昵称
    	avatar	string	头像
    tags	array	标签节点数组
    	tag	string	标签
    
    {
    "accessToken": "280e4d3b55ba438aae3b98390fa06653",
    "code": 200,
    "data": {
    "likeCount": 3,
    "reviewCunt": 3,
    "reviews": [
                {
    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/FkAochZc9Q8JBuKIpBCVeMgpWeF4",
    "createTime": 1466064626000,
    "id": 123,
    "nickName": "十年终相遇",
    "review": "ewrwerewr",
    "uid": 326,
    "v_lv":0
                }
            ]
        },
    "message": "ok"
    }
    
