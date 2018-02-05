## 接口描述
添加行业信息
## API Path
/api/industrial/addIndustrial
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|firmName    |string  |行业名称         |
|coverImage    |string  |封面图片         |
|introduce |string  |介绍           |
|sort      |int     |排序值          |
## 请求报文
```
    {
      "firmName":"娱乐",
      "coverImage:"zuimeijiaxiangdengxiangye.png",
      "introduce":"123测试"
    },
```
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
