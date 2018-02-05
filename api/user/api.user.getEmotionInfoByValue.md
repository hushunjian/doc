## 接口描述
根据开心指数和空闲指数获取情绪信息接口
## API Path
/api/user/getEmotionInfoByValue
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|happyValue    |int    |是    |开心指数数值    |
|freeValue    |int    |是    |空闲指数数值    |
## 返回报文
    参数名称	类型	备注
    id	long	情绪词ID
    emotionName	string	情绪词名称
    happyMin	int	开心指数范围最小值
    happyMax	int	开心指数范围最大值
    freeMin	int	空闲指数范围最小值
    freeMax	int	空闲指数范围最大值
    topicId	int	对应的王国ID
    emotionPack	object	大表情内容信息
    	id	long	表情ID
    	title	string	表情名字
    	content	string	表情内容描述
    	image	string	表情大图
    	thumb	string	表情缩略图
    	w	long	大图宽
    	h	long	大图高
    	thumb_w	long	缩略图宽
    	thumb_h	long	缩略图高
    	extra	string	扩展字段
    	emojiType	int	表情包类型
    {
    "code": 200,
    "message": "操作成功"
    }
    or
    {
    "code": 200142,
    "message": "未匹配到情绪信息"
    }
