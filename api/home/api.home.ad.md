## 接口描述
广告数据获取接口
## API Path
/api/home/ad
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|cid|long    |是    |cid索引    |
## 返回报文
	{
    "listData": [
        {
            "adid": 1234567,
            "adTitle": "标题",
            "adCover": "https://cdn.me-to-me.com/dds2342dffg",
            "type": 1,
            "adCoverWidth": 100,
            "adCoverHeight": 100,
            "topicId": 1515,
            "adUrl": "https://xxxx",
            "topicType":0,
            "topicInternalStatus": 0
        }
    ]
      }
## 说明
|字段|类型|描述
|:-|:-|:-
|listData|array|广告节点数组
|adid|long|广告ID
|adTitle|string|广告标题
|adCover|string|封面图
|adCoverWidth|int|封面图宽度
|adCoverHeight|int|封面图高度
|type|int|类型  0 链接类型  1王国类型，通过topicId展现王国详情
|adUrl|string|当type=0有效
|topicId|long|当type=1有效，王国ID
|topicType|int|王国类型    0个人王国   1000聚合王国
|topicInternalStatus|int|当前用户针对于王国的身份信息  0圈外 2核心圈