## 接口描述
表情包全量查询接口，可用于展现以及检查是否有更新。
## API Path
/api/content/emojiPackageQuery
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
## 返回报文
    参数名称	类型	备注
    packageData	array	表情包节点数组
    	id	long	表情包ID
    	name	string	名字
    	cover	string	封面图
    	emojiType	int	表情包类型
    0中表情
    1大表情
    	version	long	表情包版本
    	pVersion	long	分析器版本
    	extra	string	扩展字段（预留）
