## 接口描述
添加马甲号
## API Path
/api/appuser/addRobot
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|phoneBegin   |int |手机号初始段     |
|creatCount   |int |生成个数         |
|originPassword|string|初始密码         |

## 请求报文
    { 
      "token":"99999999-9999-9999-9999-999999999999",
      "phoneBegin": 1300000100,
      "creatCount":24,
      "originPassword":'123abc'
    }
    
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
