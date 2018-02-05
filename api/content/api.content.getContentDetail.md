## 接口描述
内容详情
## API Path
/api/content/getContentDetail
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|id    |int    |是    |内容id    |
## 返回报文
    参数名称	类型	备注
    id	long	内容表ID
    uid	long	作者UID
    feeling	string	感受
    avatar	string	作者头像
    type	int	内容类型
    nickName	string	作者昵称
    hotValue	int	热度（暂无用）
    likeCount	int	点赞数
    reviewCount	int	评论数
    personCount	int	成员数（暂无用）
    favoriteCount	int	收藏数
    createTime	long	创建时间
    isLike	int	当前用户是否点赞
    0未点赞
    1已点赞
    content	string	内容
    coverImage	string	封面
    title	string	内容标题
    contentType	int	详细类型
    rights	int	阅读权限
    0仅自己
    1公开
    isFollowed	int	当前用户是否关注作者
    0否
    1是
    isFollowMe	int	作者是否关注当前用户
    0否
    1是
    readCount	int	阅读数
    isHot	int	是否热点文章
    0否
    1是
    v_lv	int	作者是否大V
    0否
    1是
    images	array	文章图片节点数组
    	image	string	图片地址
    tags	array	感受标签节点数组
    	tag	string	感受标签
    reviews	array	评论节点数组
    	uid	long	评论人UID
    	nickName	string	评论人昵称
    	avatar	string	评论人头像
    	createTime	long	评论时间
    	review	string	评论内容
    	atUid	long	@人的UID
    	atNickName	string	@人的昵称
    	id	long	评论表ID
    	v_lv	int	评论人是否大V
    0否
    1是
    	extra	string	评论扩展字段，APP前台解析需要
    likeElements	array	点赞人节点数组
    	uid	long	用户UID
    	nickName	string	用户昵称
    	avatar	string	用户头像
    
    {
    "accessToken": "9e585aab73344829b1c9be42f9a94e4a",
    "code": 200,
    "data": {
    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/Ft94-SBpoSfmigSGgRe4_H8_Jful",
    "content": "Dodgers [love][confused][confused][tearing][food lover][dispise][dispise\n[love][sweating][shy]\n\n[confused]",
    "contentType": 0,
    "createTime": 1463535062000,
    "favoriteCount": 0,
    "feeling": "[love][confused];[lol];Ed;",
    "hotValue": 3,
    "id": 1356,
    "isFollowMe": 0,
    "isFollowed": 0,
    "isLike": 0,
    "likeCount": 0,
    "nickName": "Lavi7570",
    "personCount": 0,
    "reviewCount": 2,
    "reviews": [
                {
    "avatar": "Ft94-SBpoSfmigSGgRe4_H8_Jful",
    "createTime": 1463558991000,
    "nickName": "Lavi7570",
    "review": "fhh[shy][shy]",
    "uid": 294,
    "id":123,
    "v_lv":0
                },
                {
    "avatar": "Ft94-SBpoSfmigSGgRe4_H8_Jful",
    "createTime": 1463558980000,
    "nickName": "Lavi7570",
    "review": "Ffgg",
    "uid": 294,
    "id":124,
    "v_lv":0
                }
            ],
    "tags": [
                {
    "tag": "回来了"
                },
                {
    "tag": "回来了"
                },
                {
    "tag": "[love][confused]"
                },
                {
    "tag": "[lol]"
                },
                {
    "tag": "Ed"
                }
            ],
    "title": "",
    "type": 0,
    "uid": 294
        },
    "message": "ok"
    }
    
