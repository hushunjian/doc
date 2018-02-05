
## 接口描述
用户组
## API Path
/api/home/userGroup
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|:-------------|:--------------|:---------:|:------------------------------------|
|cid|long|是

## 返回报文
	{
    "userGourp":[
        {
            "uid":13,
            "nickName":123,
            "avatar":"http://p.3761.com/pic/231432169575.jpg",
            "gender":0,
            "vip":1,
            "level":2,
            "avatarFrame":"http://p.3761.com/pic/231432169575.jpg",
            "introduce":"爱笑"
        }
    ]
     }


## 参数说明

cid 字段中是内容的索引，通过该索引可以获取该类型数据的详细数据。

|返回参数    |类型     |备注    |
|:---------|:--------|:----------|
|uid|long|用户id
|nickName|string|昵称
|avatar |string|头像
|gender |int|性别 0女；1男
|vip|int|Vip等级
|level|int|用户等级
|introduce|string|用户简介
|avatarFrame|string|头像框
