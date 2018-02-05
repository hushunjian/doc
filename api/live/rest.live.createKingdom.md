## 接口描述
王国创建接口。
3.2.0版本开始使用

## API Path
/rest/live/createKingdom

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|title|string|是|直播标题|
|liveImage|string|是|直播背景图|
|contentType|int|是|第一次发言内容类型，0文本 1图片|
|fragment|string|否|第一次发言内容，如果是多个图片则以英文分号(;)分隔。|
|source|int|是|客户端类型（来源），0、不区分，1、ios，2、android，3、微信，4、h5   同speak接口|
|extra|string|否|扩展信息，json格式，   同speak接口|
|kType|int|否|0普通王国[默认]，0<t<1000特殊王国，1000聚合王国|
|kConfig|string|否|王国相关配置（暂不启用）|
|cExtra|string|否|当0<kType<1000时有效，输入特殊王国所需的参数，json格式七天活动：{”type”:1,”uid2”:123} type：1单人王国，2双人王国 uid2：当type=2时有效，表示双人王国的另一个人。|
|tags|string|否|王国标签，多个之间以英文分号分隔|
|autoTags|string|否|机器最后一次推荐的标签|
|kcid|long|是|王国分类ID|
|secretType|int|否|是否私密王国，0否（默认），1是|
|autoCoreType|int|否|加入及自动加入核心圈，0否（默认），1是|
|onlyFriend|int|否|是否仅好友可见，0否，1是|

## 返回报文
	{
		"topicId":123,
		"v_lv":0,
		"currentLevel":3,
		"upgrade":0
	}

### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|topicId|long|创建的王国的ID|
|v_lv|int|创建者是否大V,0否,1是|
|upgrade|int|当前用户是否等级升级,0不升级,1升级|
|currentLevel|int|当前用户等级|


### result code说明
|code|desc|
|:-|:-|
|20028|创建成功|
|50049|王国创建失败|
|500100|需要消耗X米汤币,当前余额不足！|
|500|你当前的等级已经达到了创建聚合王国的上限。|