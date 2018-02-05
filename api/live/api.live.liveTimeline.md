## 接口描述
获取消息列表接口
## API Path
/api/live/liveTimeline
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId    |int    |是    |直播间id    |
|uid    |Int    |是    |295    |
|token    |sting    |是    |76cfdad8ebe94ef9abe6b1e0fa3695e3    |
|sinceId    |int    |否    |为返回值id的最大值    |
|pageSize    |int    |否    |返回条数，如果不填或<=0，则默认50    |
|reqType    |int    |否    |0正常  1只看发布    |
## 返回报文
    同/detail接口
    {
    "code": 20056,
    "data": {
    "liveElements": [
    {
    "contentType": 0,   --消息类型： 0文本。1图片
    "fragmentId": 3,   --消息id
    "isFollow": 0,   --是否关注了 0 否 1是
    "nickName": "小小宝",
    "publishTime": 1460434034000,
    "type": 0,   -- 0 主播文本 1 回复文本 2 转发记录 3 主播贴标记录 4 粉丝贴标5.点赞 6订阅,7分享，8关注 9国王邀请，10 有人@ 11主播@ 12直播小视频 13音频 14 红包，15 @核心圈（2.1.2版本）
    "uid": 293,
    "score":3,
    "internalStatus":0,  -- 人员关系 0 圈外 1 圈内 2 小王 3 国王
    "source":1,  --（v2.1.2）客户端类型（来源），0、不区分，1、ios，2、android，3、微信，4、h5
    "extra":"{}"  --（v2.1.2）扩展信息，json格式
    }
    ]
    },
    "message": "获取直播信息成功"
    }
