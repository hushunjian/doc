## 接口描述
根据用户输入的词进行关联联想。
## API Path
/api/search/associatedWord
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|keyword    |string    |是    |关键字    |
## 返回报文
    参数名称	类型	备注
    result	array	关键词节点数组
    	searchWords	string	搜索联想词
