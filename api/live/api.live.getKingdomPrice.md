## 接口描述
王国价值详情获取接口
## API Path
/api/live/getKingdomPrice
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId    |int    |是    |直播id    |
## 返回报文
    参数名称	类型	备注
    title	string	王国标题
    topicPrice	int	米汤币
    topicRMB	double	换算人民币
    topicPriceChanged	int	王国值增量，大于0增值小于0贬值
    distanceListed	int	距离上市还差米汤币
    beatTopicPercentage	int	击败王国百分比，整型
    updateTextCount	int	更新文字（字）
    updateImageCount	int	更新图片（张）
    updateVoiceCount	int	更新语音（秒）
    updateVideoCount	int	更新视频（秒）
    voteCount	int	投票（次）
    teaseCount	int	逗一逗（次）
    updateDaysCount	int	更新天数（天）
    replyTextCount	int	回复（字）
    topicUserCount	int	王国成员（人）
    readCount	int	阅读数（次）
    shareCount	int	被分享（次）
    outerReadCount	int	外部阅读（次）
    careDegree	double	用心度
    approvalDegree	double	认可度
    isSell	int	是否达到出售底线值   0 未达到   1已达到 2已上市
    sellUid	long	客服uid
    topicPriceChangedList	array	过去10天王国价值
    	topicPrice	int	王国价值
