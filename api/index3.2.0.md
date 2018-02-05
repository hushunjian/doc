|Type   |Defined By |Satus    |Implemented By |Category    |Name	                    |Link             	    		|Description        |
|:------|:----------|:--------|:------------- |:-----------|:---------------------------|:------------------------------|:------------------|
|NEW	|朱春林		|完成              |陈翔			  |home		   |首页热点推荐列表接口(外露)	|[rest.home.hot]				|迁移接口，并在原hot接口上增加行业猜测，以及行业属性和推荐理由|
|NEW	|朱春林		|完成	  |陈翔			  |home		   |首页用户推荐列表接口		 	|[rest.home.userGroup]			|迁移接口，并在增加用户行业属性|
|NEW	|朱春林		|完成	  |陈翔			  |home		   |行业猜测操作接口			 	|[rest.home.industryOpt]		|新增接口，行业操作接口|
|NEW	|朱春林		|完成	  |陈翔			  |home		   |行业内容列表接口(外露)       |[rest.home.industryContentList]|新增接口，行业内容列表接口|
|NEW	|朱春林		|完成	  |陈翔			  |home		   |广场接口(外露)			 	|[rest.home.newest]             |迁移接口，行业内容列表接口|
|NEW	|朱春林		|完成	  |胡顺健		  |live		   |王国创建接口			 		|[rest.live.createKingdom]		|迁移接口，并增加仅好友可见属性|
|NEW	|朱春林		|完成	  |胡顺健		  |live		   |王国设置查询接口		 		|[rest.live.settings]			|迁移接口，并增加仅好友可见属性|
|NEW	|朱春林		|完成	  |胡顺健		  |live		   |王国设置修改接口		 		|[rest.live.settingModify]		|迁移接口，并增加仅好友可见属性|
|NEW	|朱春林		|完成	  |朱春林		  |user		   |行业联系人查询接口	 		|[rest.user.contactsQuery]		|新增接口，行业联系人查询接口|
|NEW	|朱春林		|完成	  |朱春林		  |user		   |好友查询接口			 		|[rest.user.friendQuery]		|新增接口，好友查询接口|
|NEW	|朱春林		|完成	  |朱春林		  |user		   |好友操作接口			 		|[rest.user.friendOpt]			|新增接口，申请/拒绝/删除好友 |
|NEW	|朱春林		|完成	  |朱春林		  |user		   |好友申请列表接口		 		|[rest.user.friendApplyQuery]	|新增接口，查看想你申请加好友的列表|
|NEW	|朱春林		|完成	  |朱春林		  |user		   |新用户资料卡接口		 		|[rest.user.userData]			|新增接口，用户资料信息|
|NEW	|朱春林		|完成	  |朱春林		  |user		   |好友推荐列表查询接口	 		|[rest.user.recFriendQuery]		|新增接口，查询用户的推荐好友|
|NEW	|朱春林		|完成	  |朱春林		  |user		   |好友中间人查询接口	 		|[rest.user.friendMiddlemanQuery]|新增接口，查询对应用户的中间人列表|
|NEW	|朱春林		|完成	  |朱春林		  |user		   |用户详细信息查询接口	 		|[rest.user.getUserProfile]		|迁移接口，并增加用户行业号|
|NEW	|朱春林		|完成	  |朱春林		  |user		   |用户基础信息查询接口	 		|[rest.user.getUser]			|迁移接口，并增加用户行业号|
|NEW	|朱春林		|完成	  |胡顺健		  |live		   |王国封面接口			 		|[rest.live.liveCover]			|迁移接口，并增加仅好友可见判断|
|NEW	|朱春林		|完成	  |胡顺健		  |live		   |王国信息查询接口		 		|[rest.live.getLiveByCid]		|迁移接口，并增加仅好友可见判断|
|NEW	|朱春林		|完成	  |朱春林		  |user		   |用户推荐信息查询接口	 		|[rest.user.recFriendInfo]		|新增接口，查询用户推荐信息|
|UPDATE	|朱春林		|完成	  |朱春林		  |user		   |用户登录接口	 				|[api.user.login]				|更新接口，返回增加行业属性|
|UPDATE	|朱春林		|完成	  |朱春林		  |user		   |用户验证码登录接口			|[api.user.loginByVerify]		|更新接口，返回增加行业属性|
|UPDATE	|朱春林		|完成	  |朱春林		  |user		   |第三方登录接口				|[api.user.thirdPartLogin]		|更新接口，返回增加行业属性|
|NEW	|朱春林		|完成	  |陈翔			  |content	   |聚合王国子王国列表接口(外露)	|[rest.content.acKingdomList]   |迁移接口，行业内容列表接口|
|NEW	|朱春林		|完成	  |陈翔			  |content	   |标签详情接口(外露)			|[rest.content.tagDetail]       |迁移接口，行业内容列表接口|
|NEW	|朱春林		|完成	  |陈翔			  |content	   |个人资料卡王国列表接口(外露)	|[rest.content.myPublishByType] |迁移接口，行业内容列表接口|
|UPDATE	|朱春林		|完成	  |胡顺健		  |live		   |获取创建王国信息内容			|[api.live.getCreateKingdomInfo]|更新接口，增加王国好友属性判断|



[rest.home.hot]:						./home/rest.home.hot.html
[rest.home.userGroup]:					./home/rest.home.userGroup.html
[rest.home.industryOpt]:				./home/rest.home.industryOpt.html
[rest.home.industryContentList]:		./home/rest.home.industryContentList.html
[rest.home.newest]:		                ./home/rest.home.newest.html
[rest.live.createKingdom]:				./live/rest.live.createKingdom.html
[rest.live.settings]:					./live/rest.live.settings.html
[rest.live.settingModify]:				./live/rest.live.settingModify.html
[rest.user.contactsQuery]:				./user/rest.user.contactsQuery.html
[rest.user.friendQuery]:				./user/rest.user.friendQuery.html
[rest.user.friendOpt]:					./user/rest.user.friendOpt.html
[rest.user.friendApplyQuery]:			./user/rest.user.friendApplyQuery.html
[rest.user.userData]:					./user/rest.user.userData.html
[rest.user.recFriendQuery]:				./user/rest.user.recFriendQuery.html
[rest.user.friendMiddlemanQuery]:		./user/rest.user.friendMiddlemanQuery.html
[rest.user.getUserProfile]:				./user/rest.user.getUserProfile.html
[rest.user.getUser]:					./user/rest.user.getUser.html
[rest.live.liveCover]:					./live/rest.live.liveCover.html
[rest.live.getLiveByCid]:				./live/rest.live.getLiveByCid.html
[rest.user.recFriendInfo]:				./user/rest.user.recFriendInfo.html
[api.user.login]:						./user/api.user.login.html
[api.user.loginByVerify]:				./user/api.user.loginByVerify.html
[api.user.thirdPartLogin]:				./user/api.user.thirdPartLogin.html
[rest.content.acKingdomList]:			./content/rest.content.acKingdomList.html
[rest.content.tagDetail]:			    ./content/rest.content.tagDetail.html
[rest.content.myPublishByType]:			./content/rest.content.myPublishByType.html
[api.live.getCreateKingdomInfo]:		./live/api.live.getCreateKingdomInfo.html



