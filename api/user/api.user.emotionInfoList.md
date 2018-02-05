## 接口描述
获取所有信息列表接口
## API Path
/api/user/emotionInfoList
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
## 返回报文
    参数名称	类型	备注
    emotionInfoData	array	情绪词数组
    	id	long	情绪词ID
    	emotionName	string	情绪词名称
    	happyMin	int	开心指数范围最小值
    	happyMax	int	开心指数范围最大值
    	freeMin	int	空闲指数范围最小值
    	freeMax	int	空闲指数范围最大值
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
    0中表情
    1大表情
    	topicId	long	对应的王国ID
