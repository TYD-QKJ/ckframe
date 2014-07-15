<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="global.jsp"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ck插件for button</title>
<script type="text/javascript" src="include/ckfinder/ckfinder.js"></script>
</head>
<style type="text/css">
html,body {
height: 100%; margin: 0; padding: 0;
}
</style>
<body>
	<script type="text/javascript">
		var objname='<%=request.getParameter("objname")%>';
		var showFileInfo = function(fileUrl, data, allFiles) {
			alert(fileUrl);
		};

		if (objname != '') {
			showFileInfo = function(fileUrl, data, allFiles) {
				var fileCurrentUrl = fileUrl;
				if (fileUrl != data['fileUrl']) {
					fileCurrentUrl = data['fileUrl'];
				}
				var parentobj;
				eval("parentobj = window.parent." + objname);
				parentobj.setValue(fileCurrentUrl);
				parentobj.close();
			};
		}

		var finder = new CKFinder();
		finder.basePath = '/';
		finder.height = 450;
		finder.selectActionFunction = showFileInfo;
		finder.create();
	</script>
</body>
</html>