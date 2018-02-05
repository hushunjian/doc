## 接口描述
王国标签编辑页查询用
## API Path
/api/live/topicTags
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId    |long    |是    |王国ID    |
## 返回报文
    参数名称	类型	备注
    topicTags	string	王国标签，多个之间以英文分号分隔
    myUsedTags	string	我的常用标签，多个之间以英文分号分隔
    recTags	array	推荐标签节点数组
    	tag	string	标签
    	topicCount	long	王国数
