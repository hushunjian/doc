## 接口描述
入口页配置信息
## API Path
/api/user/entryPageConfig
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|uid    |long    |是    |操作用户id    |
|cversion    |Int    |否    |最后的版本号，第一次获取不需要传    |
|type    |int    |否    |类型，1用户信息，2功能，3感受词，4空，5操作历史    |
## 返回报文
    {
    "accessToken": "337bbf6e7aa542c99566903ac53a68dd",
    "code": 200,
    "data": {
    "cversion": 3,
    "entryPageElements": [
          {
    "cversion": 2,   --数据版本号
    "id": 2,
    "status": 0,  --状态，0正常，1删除的记录
    "text": "淡淡的",    --配置内容
    "type": 1  --类型
          },
          {
    "cversion": 3,
    "id": 4,
    "status": 1,
    "text": "大幅度",
    "type": 2
          },
          {
    "cversion": 2,
    "id": 5,
    "status": 0,
    "text": "点点滴滴",
    "type": 4
          }
        ]
      },
    "message": "ok"
    }
    
    4、相关数据库表
    ENTRY_PAGE_CONFIG
    
    5、使用说明：
    不传版本号返回所有有效数据；
    传版本号返回大于版本号的所有数据（包含已删除数据，用于app端缓存操作）
    
