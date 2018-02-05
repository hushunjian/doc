## 接口描述
王国转让历史查询接口
## API Path
/api/live/getKingdomTransferRecord
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId    |long    |是    |王国ID    |
|sinceId    |long    |是    |分页参数，第一次传-1，后面的传返回结果中的最后一个内容的sinceId    |
## 返回报文
    参数名称	类型	备注
    topicTransferRecordList	array	王国转让历史记录
    	sinceId	long	分页参数，转让记录ID
    	oldNickName	string	出让人昵称
    	oldAvatar	string	出让人头像
    	newNickName	string	新国王昵称
    	newAvatar	string	新国王头像
    	transferPrice	int	转让价
    	createTime	long	转让时间
