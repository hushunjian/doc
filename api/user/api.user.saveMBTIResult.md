## 接口描述
	保存用户MBTI测试结果
## API Path
/api/user/saveMBTIResult
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|mbti    |string    |Y    |Mbti结果    |
## 返回报文
    参数名称	类型	备注
    mbti	String	测试结果
    isShared	boolean	是否分享过。
    kingdomId	long	对应mbti的王国ID
    
