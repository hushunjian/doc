## 接口描述
推荐的内容不喜欢操作接口
## API Path
/api/search/recContentDislike
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|cid    |long    |Y    |不喜欢内容的ID    |
|按recList中recContentData数组中节点决定，如果是王国type=3，则传递topicId，如果是UGC type=0，则传递cid，如果是系统文章type=5则传递contentId    |    |    |    |
|type    |int    |Y    |0 UGC    |
|3王国    |    |    |    |
|5文章    |    |    |    |
## 返回报文
    {
    "code": 200,
    "message": "操作成功"
    }
