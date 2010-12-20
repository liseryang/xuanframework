// 取得浏览器时间
function timestamp() {
	var timestamp = Date.parse(new Date());
	return timestamp;
}

// 同步提交form
function postDataAsync(formId, url, _callBack, async) {
	var dataform = jQuery("#" + formId).formSerialize();
	if (url.indexOf('?') > 0)
		url = url + "&";
	else
		url = url + "?";
	url = url + "time=" + timestamp();
	$.ajax({
				type : "POST",
				url : url,
				dataType : "json",
				data : dataform,
				async : async,
				success : _callBack,
				error : function(data) {
					alert("ERROR");
				}
			});
}
// 不需要form直接回调函数
function postDataWithoutForm(url, _callBack) {
	sessionWarn.setCookie();
	if (url.indexOf('?') > 0)
		url = url + "&";
	else
		url = url + "?";
	url = url + "time=" + timestamp();
	$.ajax({
				type : "POST",
				url : url,
				dataType : "json",
				data : "",
				success : _callBack,
				error : function(data) {
					alert("ERROR");
				}
			});
}
// 提交form
function postData(formId, url, _callBack) {
	sessionWarn.setCookie();
	var dataform = jQuery("#" + formId).formSerialize();
	if (url.indexOf('?') > 0)
		url = url + "&";
	else
		url = url + "?";
	url = url + "time=" + timestamp();
	AjaxUtil._submit(url, {
				onComplete : function(data) {
					data = eval('(' + data.responseText + ')');
					eval(_callBack(data));
				}
			}, dataform);
}
// 哈希表
function JsHashtable() {
	this._hash = {};
	this._count = 0;
	this.add = function(key, value) {
		if (this._hash.hasOwnProperty(key))
			return false;
		else {
			this._hash[key] = value;
			this._count++;
			return true;
		}
	};
	this.remove = function(key) {
		delete this._hash[key];
		this._count--;
	};
	this.count = function() {
		return this._count;
	};
	this.items = function(key) {
		if (this.contains(key))
			return this._hash[key];
	};
	this.contains = function(key) {
		return this._hash.hasOwnProperty(key);
	};
	this.clear = function() {
		this._hash = {};
		this._count = 0;
	};
}
// 打开一个窗口
function windowOpen(title, url, onClose, swidth, sheight) {
	if (url.indexOf('?') > 0)
		url = url + "&";
	else
		url = url + "?";
	url = url + "time=" + timestamp();
	var width = 750;
	var height = 500;
	if (swidth) {
		width = swidth;
	}
	if (sheight) {
		height = sheight;
	}
	callBackFunction = onClose;
	var w = w || 640;
	var h = h || 400;
	var x = (window.screen.width - w) / 2;
	var y = (window.screen.height - h) / 2;
	window
			.open(
					url,
					title,
					'directories=no,location=no,width='
							+ width
							+ ',height='
							+ height
							+ ',menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no,screenX='
							+ x + ',screenY=' + y + ',top=' + y + ',left=' + x);
}

// 给Grid标记使用的取数逻辑（可以废弃）
function getPages(id) {
	$('#_' + id + '_page_num')
			.val(	$('#' + id + '').datagrid("options").pageNumber);
	$('#_' + id + '_page_size')
			.val(	$('#' + id + '').datagrid("options").pageSize);
	postDataAsync("fm_" + id, "/c/t/q/" + id, function(data) {
				$('#' + id).datagrid('loadData', data);
			}, false);
}

// 生成Grid与查询交互的方法
function getParams(id) {
	if (!id)
		return "";
	var aaa = "";
	aaa += "({";
	// hql
	aaa += "_" + id + "_hql" + ":'" + $('#_' + id + '_hql').val() + "'";

	// where
	aaa += ",";
	aaa += "_" + id + "_where" + ":'" + $('#_' + id + '_where').val() + "'";

	// group
	aaa += ",";
	aaa += "_" + id + "_groupby" + ":'" + $('#_' + id + '_groupby').val() + "'";

	// order
	aaa += ",";
	aaa += "_" + id + "_orderby" + ":'" + $('#_' + id + '_orderby').val() + "'";

	// idfield
	aaa += ",";
	aaa += "_" + id + "_idfield" + ":'" + $('#_' + id + '_idfield').val() + "'";

	// search field
	aaa += ",";
	var field = [];
	$("[name='_" + id + "_field']").each(function() {
				field.push($(this).val());
			});
	aaa += "_" + id + "_field:[";
	for (i = 0; i < field.length; i++) {
		if (i > 0)
			aaa += ",";
		aaa += "'" + field[i] + "'";
	}
	aaa += "]";

	// search type
	aaa += ",";
	var stype = [];
	$("[name='_" + id + "_type']").each(function() {
				stype.push($(this).val());
			});
	aaa += "_" + id + "_type" + ":[";
	for (i = 0; i < stype.length; i++) {
		if (i > 0)
			aaa += ",";
		aaa += "'" + stype[i] + "'";
	}
	aaa += "]";
	// search operator
	aaa += ",";
	var operator = [];
	$("[name='_" + id + "_operator']").each(function() {
				operator.push($(this).val());
			});
	aaa += "_" + id + "_operator" + ":[";
	for (i = 0; i < operator.length; i++) {
		if (i > 0)
			aaa += ",";
		aaa += "'" + operator[i] + "'";
	}
	aaa += "]";
	// search value
	aaa += ",";
	var values = [];
	$("[name='_" + id + "_value']").each(function() {
				values.push($(this).val());
			});
	aaa += "_" + id + "_value" + ":[";
	for (i = 0; i < values.length; i++) {
		if (i > 0)
			aaa += ",";
		aaa += "'" + values[i] + "'";
	}
	aaa += "]";
	aaa += "})";
	return eval(aaa);
}

// 列表的查询方法
function searchPage(id) {
	$('#' + id).datagrid('options').queryParams = getParams(id);
	$('#' + id).datagrid('getPager').pagination('options').pageNumber = 1;
	$('#' + id).datagrid('options').pageNumber = 1;
	$('#' + id).datagrid('reload');
	$('#' + id).datagrid('clearSelections');
	sessionWarn.setCookie();
}

// 页面弹出窗口
function showModal(title, url, icon, onClose, width, height) {
	$('#popup').window({
				title : "&nbsp;&nbsp;" + title
			});
	if (icon)
		$('#popup').window({
					iconCls : icon
				});
	if (width)
		$('#popup').window({
					width : width
				});
	if (height)
		$('#popup').window({
					height : height
				});
	$('#print_iframe').attr('src', url);
	$('#popup').window('open');
}
/*
 * function alert(msg, title, clz) { var t = "提示"; if (title) t = title; var
 * icon = ""; if (clz) icon = clz; $.messager.alert(t, msg, icon); }
 * 
 * function error(msg) { alert(msg, '错误', 'error'); } function info(msg) {
 * alert(msg, '信息', 'info'); } function question(msg) { alert(msg, '问题',
 * 'question'); } function warning(msg) { alert(msg, '警告', 'warning'); }
 * 
 * function confirm(msg) { $.messager.confirm('确认', msg,aa = function(r) {
 * return r; }); }
 */

function popWin(title, url, icon, width, height) {
	var win = $('<div id="my_pop_win" class="messager-body"></div>')
			.appendTo('body');
	var content = '<iframe id="pop_iframe" scrolling="auto" frameborder="0"  src="'
			+ url + '" style="width:100%;height:100%;"></iframe>';
	win.append(content);
	win.window({
				title : title,
				width : width,
				height : height,
				modal : true,
				iconCls : icon,
				collapsible : false,
				minimizable : false,
				maximizable : false,
				resizable : false,
				onClose : function() {
					setTimeout(function() {
								win.window('destroy');
							}, 100);
				}
			});
	return win;
}

function closePop() {
	$('#my_pop_win').window('destroy');
}

function resetSearch(formid) {
	document.getElementById("fm_" + formid).reset();
}

function mousePosition(ev) {
	if (ev.pageX || ev.pageY) {
		return {
			x : ev.pageX,
			y : ev.pageY
		};
	}
	return {
		x : ev.clientX + document.body.scrollLeft - document.body.clientLeft,
		y : ev.clientY + document.body.scrollTop - document.body.clientTop
	}
}
function handRow(e, ttid, rowIndex) {
	// e.preventDefault();
	e = e || window.event;
	var position = mousePosition(e);
	var rowData = $('#' + ttid).datagrid("getRows")[rowIndex];
	eval(ttid + "_createRowMenu(rowData)");
	$('#' + ttid + '_rowmenu').menu('show', {
				left : position.x,
				top : position.y
			});
}