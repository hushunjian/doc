## 接口描述
表情包详情获取接口，获取表情包里的具体表情
## API Path
/api/content/emojiPackageDetail
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|packageId    |long    |Y    |表情包ID    |
## 返回报文
    参数名称	类型	备注
    packageId	long	包ID
    emojiType	int	表情类型
    packageName	string	包名
    packageCover	string	包封面
    packageVersion	long	包版本
    packagePversion	long	包解析器版本
    emojiData	array	表情节点数组
    	id	long	表情ID
    	title	string	表情名字
    	content	string	表情内容描述
    	image	string	表情大图
    	thumb	string	表情缩略图
    	w	long	大图宽
    	h	long	大图高
    	thumb_w	long	缩略图宽
    	thumb_h	long	缩略图高
    	extra	string	扩展字段（预留）
    	emojiType	int	表情包类型
    0中表情
    1大表情
