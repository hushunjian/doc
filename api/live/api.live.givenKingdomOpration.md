## 接口描述
保存或分享日签图片记录接口
## API Path
/api/live/givenKingdomOpration
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|action    |String    |是    |ACTIVE激活，接口返回topicId,unActivedCount    |
|DEL删除    |    |    |    |
|givenKingdomId    |int    |是    |赠送王国ID    |
## 返回报文
    参数名称	类型	是否必须	备注
    topicId	String	是	王国ID
    unActivedCount	int	是	未激活王国个数
