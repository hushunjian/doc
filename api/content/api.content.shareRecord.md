## 接口描述
当用户进行内容分享后调用本接口，记录下本次的相关记录
## API Path
/api/content/shareRecord
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|type    |int    |Y    |内容类型    |
|0 UGC    |    |    |    |
|1王国    |    |    |    |
|2文章    |    |    |    |
|3其他（比如活动等）    |    |    |    |
|cid    |long    |Y    |分享内容ID    |
|当type=0时，为UGC的内容ID    |    |    |    |
|当type=1时，为王国的ID，即topicId    |    |    |    |
|当type=2时，传递文章ID    |    |    |    |
|当type=3时，目前传0即可    |    |    |    |
|shareAddr    |string    |N    |分享内容    |
|当type=0时，不传（UGC是分享的图片）    |    |    |    |
|当type>0时，需传递分享的链接地址    |    |    |    |
## 返回报文
    参数名称	类型	是否必须
    upgrade	int	当前用户是否等级升级
    0不升级
    1升级
    currentLevel	object	当前等级节点，当upgrade=1时有效
    	level	int	等级
    	name	string	等级名称
    	permissions	array	解锁权限节点数组
    		name	string	权限名称
    
    {
    "code": 200,
    "message": "操作成功"
    }
