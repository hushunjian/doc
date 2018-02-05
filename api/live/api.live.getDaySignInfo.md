## 接口描述
获取用户日签信息接口
## API Path
/api/live/getDaySignInfo
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
## 返回报文
    参数名称	类型	备注
    isFirstDay	int	是否是新用户注册第一天 0否1是
    isSave	int	是否已保存日签信息 0否 1是
    status	int	0有文字有图片1有文字无图片2有图片无文字3其他人日签
    nickName	string	语录用户昵称
    avatar	string	语录用户头像
    signDate	string	语录日期（字符串）
    serialNumber	int	日签序号
    topicId	long	语录王国ID
    uid	long	语录王国国王UID
    position	int	日签显示位置
    fragment	string	日签文字内容
    image	string	日签图片
    topicTitle	string	日签王国名称
    quotations	array	随机语录节点数组
    	uid	long	用户UID
    	nickName	string	用户昵称
    	avatar	string	用户头像
    	quotationId	long	语录ID
    	quotation	string	语录内容
    
