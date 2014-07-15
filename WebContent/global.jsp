
<%
	if ((application.getAttribute("CK_U") == null)
			|| !(application.getAttribute("CK_U") == null || application.getAttribute("CK_U").equals(
					session.getAttribute("CK_U")))) {
		session.setAttribute("CK_U", application.getAttribute("CK_U"));
	}
	//session.setAttribute("CK_U", application.getAttribute("CK_U"));
%>