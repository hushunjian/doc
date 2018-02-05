## 接口迁移列表
|模块		|接口名							|接口链接							|状态		|APP使用情况	|APP使用版本	|备注			|
|:----------|:------------------------------|:----------------------------------|:----------|:----------|:----------|:--------------|
|activity	|灯箱内容获取接口				|[rest.activity.getlightboxInfo]	|完成	    |			|		    |				|
|content	|聚合王国子王国列表接口(外露)		|[rest.content.acKingdomList]		|完成	    |			|3.2.0	    |				|
|content	|标签详情页接口(外露)			    |[rest.content.tagDetail]		    |完成	    |			|3.2.0		|				|
|content	|个人资料卡王国列表接口(外露)		|[rest.content.myPublishByType]		|完成	    |			|3.2.0		|				|
|content	|表情包详情获取接口			    |[rest.content.emojiPackageDetail]	|完成		|			|			|				|
|content	|表情包全量查询接口			    |[rest.content.emojiPackageQuery]	|完成		|			|			|				|
|home		|新关注接口						|[rest.home.attention]				|完成		|已使用		|3.1.0		|				|
|home		|热点推荐接口(外露)				|[rest.home.hot]					|完成		|已使用		|3.2.0		|				|
|home		|用户组查询接口					|[rest.home.userGroup]				|完成		|已使用		|3.2.0		|				|
|home		|榜单列表查询					|[rest.home.showList]				|完成		|			|			|				|
|home		|查看榜单详情查询				|[rest.home.showListDetail]			|完成		|			|			|				|
|home		|广场接口(外露)				    |[rest.home.newest]					|完成		|			|3.2.0		|				|
|io			|获取七牛token接口		        |[rest.io.getQiniuAccessToken]		|完成		|			|			|				|
|live		|H5记录下载历史接口				|[rest.live.addAppDownloadLog]		|完成		|			|			|				|
|live		|王国创建接口					|[rest.live.createKingdom]			|完成		|已使用		|3.2.0		|				|
|live		|获取王国信息接口				|[rest.live.getLiveByCid]			|完成		|已使用		|3.2.0		|				|
|live		|王国详情列表投票信息查询接口		|[rest.live.getTopicVoteInfo]		|完成		|			|			|				|
|live		|王国封面获取接口				|[rest.live.liveCover]				|完成		|已使用		|3.2.0		|				|
|live		|王国设置信息修改接口				|[rest.live.settingModify]			|完成		|已使用		|3.2.0		|				|
|live		|王国设置信息查询接口				|[rest.live.settings]				|完成		|已使用		|3.2.0		|				|
|live		|逗一逗全量查询接口				|[rest.live.teaseListQuery]			|完成		|			|			|				|
|live		|抽奖参与用户留言查询接口			|[rest.live.getJoinLotteryUsers]	|完成		|			|			|				|
|live		|获取抽奖详情接口				|[rest.live.getLottery]				|			|			|			|				|
|live		|获取抽奖列表接口				|[rest.live.getLotteryList]			|			|			|			|				|
|live		|参与抽奖接口					|[rest.live.joinLottery]			|			|			|			|				|
|live		|抽奖开奖接口					|[rest.live.runLottery]				|			|			|			|				|
|live		|编辑抽奖接口					|[rest.live.editLottery]			|			|			|			|				|
|live		|发起抽奖接口					|[rest.live.createLottery]			|			|			|			|				|
|live		|屏蔽抽奖资格接口				|[rest.live.prohibitLottery]		|			|			|			|				|
|live		|王国分类信息全量查询接口			|[rest.live.category]				|			|			|			|				|
|live		|王国订阅用户列表查询接口			|[rest.live.favoriteList]			|			|			|			|				|
|live		|收割米汤币王国列表接口			|[rest.live.harvestKingdomList]		|			|			|			|				|
|live		|收割王国米汤币接口				|[rest.live.harvestKingdomCoin]		|			|			|			|				|
|live		|王国禁言信息查询接口				|[rest.live.userForbidInfo]			|			|			|			|				|
|live		|王国串门接口					|[rest.live.dropAround]				|			|			|			|				|
|live		|王国内容发表接口				|[rest.live.speak]					|完成		|			|			|				|
|live		|王国详情接口（IOS）				|[rest.live.detail]					|完成		|			|			|				|
|live		|王国详情接口（安卓）				|[rest.live.detailPage]				|完成		|			|			|				|
|live		|王国互动新接口					|[rest.live.getMyTopic]				|完成		|			|			|				|
|live		|王国内容更新数量接口				|[rest.live.getUpdate]				|完成		|			|			|				|
|live		|王国详情内容所在页查询接口		|[rest.live.detailFidPage]			|完成		|			|			|				|
|live		|王国详情分页信息查询接口			|[rest.live.detailPageStatus]		|完成		|			|			|				|
|live		|图片信息查询接口				|[rest.live.imageInfo]				|完成		|			|			|				|
|live		|礼物列表获取接口				|[rest.live.getGiftInfoList]		|完成	    |			|			|				|
|live		|偷取王国价值接口				|[rest.live.stealKingdomCoin]		|完成		|			|			|				|
|live		|获取王国更新红点接口(王国互动)	|[rest.live.getRedDot]				|完成		|			|			|				|
|sns		|获取王国各个圈子成员接口			|[rest.sns.getCircleByType]			|			|			|			|				|
|user		|获取用户基础资料信息接口			|[rest.user.getUser]				|完成		|已使用		|3.2.0		|				|
|user		|获取用户资料信息接口				|[rest.user.getUserProfile]			|完成		|已使用		|3.2.0		|				|
|user		|个人等级接口					|[rest.user.getMyLevel]				|完成		|			|			|				|
|user		|APP枚举数据查询接口				|[rest.user.getBasicDataByType]		|完成		|			|			|				|
|user		|私信获取token接口				|[rest.user.getIMUsertoken]			|完成		|			|			|				|
|user		|获取APP版本控制接口				|[rest.user.versionControl]			|完成		|			|			|				|
|user		|导游信息获取接口				|[rest.user.getGuideInfo]			|完成		|			|			|				|
|user		|最近一次情绪信息查询接口			|[rest.user.getLastEmotionInfo]		|完成		|			|			|				|
|user		|全量获取所有等级的基本信息接口	|[rest.user.getLevelList]			|完成		|			|			|				|
|user		|检查昵称或者OPENID是否存在接口	|[rest.user.checkNameOpenId]		|完成		|			|			|				|
|user		|获取关注列表接口				|[rest.user.showFollows2]			|			|			|			|				|
|user		|获取粉丝列表接口				|[rest.user.showFans2]				|			|			|			|				|




[rest.activity.getlightboxInfo]:					./activity/rest.activity.getlightboxInfo.html
[rest.content.acKingdomList]:						./content/rest.content.acKingdomList.html
[rest.content.tagDetail]:							./content/rest.content.tagDetail.html
[rest.content.myPublishByType]:						./content/rest.content.myPublishByType.html
[rest.content.emojiPackageDetail]:					./content/rest.content.emojiPackageDetail.html
[rest.content.emojiPackageQuery]:					./content/rest.content.emojiPackageQuery.html
[rest.home.attention]:								./home/rest.home.attention.html
[rest.home.hot]:									./home/rest.home.hot.html
[rest.home.userGroup]:								./home/rest.home.userGroup.html
[rest.home.showList]:								./home/rest.home.showList.html
[rest.home.showListDetail]:							./home/rest.home.showListDetail.html
[rest.home.newest]:									./home/rest.home.newest.html
[rest.io.getQiniuAccessToken]:						./io/rest.io.getQiniuAccessToken.html
[rest.live.addAppDownloadLog]:						./live/rest.live.addAppDownloadLog.html
[rest.live.createKingdom]:							./live/rest.live.createKingdom.html
[rest.live.getLiveByCid]:							./live/rest.live.getLiveByCid.html
[rest.live.getTopicVoteInfo]:						./live/rest.live.getTopicVoteInfo.html
[rest.live.liveCover]:								./live/rest.live.liveCover.html
[rest.live.settingModify]:							./live/rest.live.settingModify.html
[rest.live.settings]:								./live/rest.live.settings.html
[rest.live.teaseListQuery]:							./live/rest.live.teaseListQuery.html
[rest.live.getJoinLotteryUsers]:					./live/rest.live.getJoinLotteryUsers.html
[rest.live.getLottery]:								./live/rest.live.getLottery.html
[rest.live.getLotteryList]:							./live/rest.live.getLotteryList.html
[rest.live.joinLottery]:							./live/rest.live.joinLottery.html
[rest.live.runLottery]:								./live/rest.live.runLottery.html
[rest.live.editLottery]:							./live/rest.live.editLottery.html
[rest.live.createLottery]:							./live/rest.live.createLottery.html
[rest.live.prohibitLottery]:						./live/rest.live.prohibitLottery.html
[rest.live.category]:								./live/rest.live.category.html
[rest.live.favoriteList]:							./live/rest.live.favoriteList.html
[rest.live.harvestKingdomList]:						./live/rest.live.harvestKingdomList.html
[rest.live.harvestKingdomCoin]:						./live/rest.live.harvestKingdomCoin.html
[rest.live.userForbidInfo]:							./live/rest.live.userForbidInfo.html
[rest.live.dropAround]:								./live/rest.live.dropAround.html
[rest.live.speak]:									./live/rest.live.speak.html
[rest.live.detail]:									./live/rest.live.detail.html
[rest.live.detailPage]:								./live/rest.live.detailPage.html
[rest.live.getMyTopic]:								./live/rest.live.getMyTopic.html
[rest.live.getUpdate]:								./live/rest.live.getUpdate.html
[rest.live.detailFidPage]:							./live/rest.live.detailFidPage.html
[rest.live.detailPageStatus]:						./live/rest.live.detailPageStatus.html
[rest.live.imageInfo]:								./live/rest.live.imageInfo.html
[rest.live.getGiftInfoList]:						./live/rest.live.getGiftInfoList.html
[rest.live.stealKingdomCoin]:						./live/rest.live.stealKingdomCoin.html
[rest.live.getRedDot]:								./live/rest.live.getRedDot.html
[rest.sns.getCircleByType]:							./sns/rest.sns.getCircleByType.html
[rest.user.getUser]:								./user/rest.user.getUser.html
[rest.user.getUserProfile]:							./user/rest.user.getUserProfile.html
[rest.user.getMyLevel]:								./user/rest.user.getMyLevel.html
[rest.user.getBasicDataByType]:						./user/rest.user.getBasicDataByType.html
[rest.user.getIMUsertoken]:							./user/rest.user.getIMUsertoken.html
[rest.user.versionControl]:							./user/rest.user.versionControl.html
[rest.user.getGuideInfo]:							./user/rest.user.getGuideInfo.html
[rest.user.getLastEmotionInfo]:						./user/rest.user.getLastEmotionInfo.html
[rest.user.getLevelList]:							./user/rest.user.getLevelList.html
[rest.user.checkNameOpenId]:						./user/rest.user.checkNameOpenId.html
[rest.user.showFollows2]:							./user/rest.user.showFollows2.html
[rest.user.showFans2]:								./user/rest.user.showFans2.html
