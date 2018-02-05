## 接口描述
最近一次情绪信息查询接口
## API Path
/api/user/getLastEmotionInfo
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
## 返回报文
    参数名称	类型	备注
    id	long	情绪词ID，为0表示没有最新情绪信息
    isSummary	int	上周是否总结 1是 0否
    dateStr	string	时间区间（当isSummary=1时有效）
    emotionName	string	情绪词名称
    happyValue	int	开心指数值
    freeValue	int	空闲指数值
    topicId	int	对应的王国ID
    recordCount	int	情绪记录总数
    timeInterval	long	情绪记录到服务器当前时间的秒数
    createTime	long	情绪设置时间
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
