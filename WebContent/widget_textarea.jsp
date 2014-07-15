<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="global.jsp"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ck插件for textarea</title>
<script type="text/javascript" src="include/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="include/ckfinder/ckfinder.js"></script>
</head>
<style type="text/css">
html,body {
height: 100%; margin: 0; padding: 0;
}

textarea {
width: 100%; height: 100%;
}
</style>
<script type="text/javascript">
	var getckValue;
	var setckValue;
	
	function getDomain(web_url){
	    var durl=/http:\/\/([^\/]+)\//i;
	    domain = web_url.match(durl);
	    return domain[0];
	}
</script>
<body>
	<textarea id="editor1" name="editor1"></textarea>
	<script type="text/javascript">
		// This is a check for the CKEditor class. If not defined, the paths must be checked. 
		var editor = CKEDITOR.replace('editor1',{
			on:{
				instanceReady:function(event) {
					getckValue = function() {
						var editor = CKEDITOR.instances.editor1;
						return editor.getData();
					};
					setckValue = function(val) {
						var editor = CKEDITOR.instances.editor1;
						editor.setData(val);
					};
					//event.editor.getCommand('maximize').exec();
				}
			},
			height:410
		});
		var finder = CKFinder.setupCKEditor(editor, '/ckfinder/');
	</script>
</body>
</html>