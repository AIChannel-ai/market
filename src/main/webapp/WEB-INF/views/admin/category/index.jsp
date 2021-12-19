<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<div class="sz_rightBody" id="table_box"></div>
<script>
	$(function() {
		var options = {
			ajaxurl : "${ctx}/admin/category/getdata"
		};
		$(this).loadPage(options); 
		$('#table_box').tablePage(options); 
		$("#btnSearch").formSearch(options);
		$('#table_box').deleteData('${ctx}/admin/category/delete');
		
		var rootUrl = '${ ctx }';
		$('#table_box').loadDataByEdit(rootUrl);
	});
</script>
