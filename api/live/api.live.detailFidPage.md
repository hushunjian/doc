## 接口描述
根据fragmentId，获取该fid所在的分页页数
## API Path
/api/live/detailFidPage
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId    |long    |是    |王国ID    |
|fid    |long    |是    |fragmentId    |
|offset    |int    |否    |每页显示条数（默认50）    |
## 返回报文
    参数名称	类型	备注
    page	int	该fid所在页码
    
