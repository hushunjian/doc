## 接口描述
获取七牛token

## API Path
/api/io/getQiniuAccessToken

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|bucket|int|否|七牛目录类型，0图片（默认），1视频|

## 返回报文
	{
		"code": 20050,
		"data": {
			"expireTime": 600000,
			"token":"1XwLbO6Bmfeqyj7goM1ewoDAFHKiQOI8HvkvkDV0:gwduSTzo3dsJDjEeNkWTz2pyqcI=:eyJzY29wZSI6Imh0dHA6Ly83eHFuN28uY29tMi56MC5nbGIucWluaXVjZG4uY29tLyIsImRlYWRsaW5lIjoxNDU4ODc1Mzc4fQ=="
		},
		"message": "获取七牛token成功"
	}
