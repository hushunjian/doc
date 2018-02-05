## 接口描述
用户提醒列表接口
当noticeType=3、4、6、7时新增contentType，表示王国类型0个人王国，1000聚合王国。
为兼容2.2.0版本以前的版本，level=0[默认]，则只查询出noticeType<=7的消息，即查询的原先的几种消息定义，防止新的类型不兼容导致问题。
当level=1时，查询的是一级列表，查询的是noticeType<=5的消息，即查询的是非核心圈和聚合相关的消息，并且返回hasNextNew字段表示二级列表（系统消息）是否有没查看过的新消息。
当level=2时，查询的是二级列表（系统消息），查询的是noticeType>=6的消息，即查询的是核心圈和聚合相关的消息。
当noticeType>=8时，消息除基本属性外，有两个部分展示，一部分为文字王国显示，一部分为图片王国展示，其中文字王国属性如下：textImage、textTitle、textTopicId、textType、textInternalStatus，图片王国属性如下：coverImage、coverTitle、coverTopicId、coverType、internalStatus。
关于王国相关消息，noticeType=3/4/6/7时王国属性按原先的方式获取，王国ID取cid，王国类型取contentType字段。
noticeType=8/9/10/11时，王国按文字王国和图片王国方式获取。
## API Path
/api/user/userNotice
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|uid    |long    |是    |    |
|sinceId    |long    |是    |    |
|level    |int    |否    |新版本必传并且>0    |
|0老版本兼容【默认】    |    |    |    |
|1一级列表    |    |    |    |
|2二级列表（系统信息）    |    |    |    |
## 返回报文
    {
    "accessToken": "4058b8a65c1a40b8967cc65c7d1397fe",
    "code": 20024,
    "data": {
    "hasNextNew":0, --下级列表是否有新消息，0没有，1有，用于展示红点
    "userNoticeList": [
    {
    "cid": 1359,
    "coverImage": "http://7xs9q4.com2.z0.glb.qiniucdn.com/9bc7e1a2-41ff-4ecf-8fb1-8cade324d15c",
    "createTime": 1462945171000,
    "fromAvatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/e92e6c26-d2d4-4c2b-92ad-8d7c79cc3c78",
    "fromNickName": "小小小小宝",
    "fromUid": 315,
    "id": 2168,
    "likeCount": 0,
    "noticeType": 1,   ---0 贴标，1点赞，2 UGC评论，3 直播贴标，4.直播回复(@)，5.UGC@，6.圈子邀请，7圈子移除，8核心圈申请，9核心圈通知，10聚合申请，11聚合通知
    "readStatus": 1,
    "review": "",  ----内容取review内容
    "summary": "",
    "toNickName": "小小小小宝",
    "toUid": 315,
    "internalStatus":0, --王国身份0圈外,1圈内,2核心圈，只有noticeType=3、4、6、7时有效
    "fromInternalStatus":0, --消息产生人相对于王国的身份，只有noticeType=3、4、6、7时有效
    "contentType":0, --王国类型，0个人王国，1000聚合王国，只有noticeType=3、4、6、7时有效
    "applyId":11, --申请ID，当noticeType=8/10有效，为各自的申请ID
    "applyStatus":0,   ---申请状态[noticeType=8/10有效]，0初始，1同意，2拒绝，3失效
    "coverType":1000, --王国类型，0个人王国，1000聚合王国
    "coverTopicId":123, --王国ID
    "coverTitle":"王国名字",
    "textImage":"王国封面图片地址",
    "textType":0
    "textTopicId":466
    "textTitle":"王国名字"
    "textInternalStatus":0 --0圈外,1圈内,2核心圈
    }
    ]
    },
    "message": "获取用户提醒成功"
    }
    
