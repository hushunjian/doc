## 接口描述
获取王国图库

## API Path
/api/live/kingdomImgDB

## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId    |long    |是    |王国ID    |
|direction    |int    |是    |加载方向0向下，1向上，2上下都要    |
|fid    |long    |是    |从哪个fragment开始加载。从头开始传-1    |
|type    |int    |否    |0按条数分页返回（默认）    |
|1按月返回    |    |    |    |

## 返回报文
    参数名称	类型	备注
    topMonth	string	顶部月份yyyyMM
    topMonthDataSize	int	顶部月份数据总量
    imgData	array	图片数组
    	fragmentId	long	图像ID
    	fragmentImage	string	图片地址
    	fragment	string
    	type	int
    	contentType	int
    	extra	string	扩展字段
    	createTime	long	创建时间
