## 接口描述
行业操作接口

## API Path
/rest/home/industryOpt

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|industryId|long|是|待操作的行业ID|
|action|int|是|操作类型<br>1猜对了或切换行业<br>2猜错了|


## 返回报文
	{
		"code": 200,
		"message": "操作成功"
	}
