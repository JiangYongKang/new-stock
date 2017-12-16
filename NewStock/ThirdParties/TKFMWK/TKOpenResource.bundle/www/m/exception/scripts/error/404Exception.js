/**
 * 手机开户3.0
 */
define(function(require, exports, module){
	/* 私有业务模块的全局变量 begin */
	var appUtils = require("appUtils"),
		_pageId = "#error_404Exception";
	var external = require("external");
	/* 私有业务模块的全局变量 end */
	
	function init()
	{
       $(_pageId).css("overflow-y","hidden");
       
	}
	
	function bindPageEvent(){
		
		/* 绑定返回  */
		appUtils.bindEvent($(_pageId+" #back"),function(){
                           
           var param = {
               "funcNo": "50101",
               "moduleName":"exit_open"
           };
           external.callMessage(param);
			
		});
		
	}
	
	function destroy(){}

	var index = {
		"init" : init,
		"bindPageEvent" : bindPageEvent,
		"destroy" : destroy
	};
	
	module.exports = index;
});
