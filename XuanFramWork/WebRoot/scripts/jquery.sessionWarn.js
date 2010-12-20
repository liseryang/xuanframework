var sessionWarn = {
	autoExtend : false,
	sessionTimeout : 0,
	sessionTimeoutWarning : 0,
	redirectOnExpire : false,

	init : function(params) {
		var instance = this;
		params = params || {};

		instance.autoExtend = params.autoExtend || instance.autoExtend;

		instance._timeout = params.timeout || instance.sessionTimeout;
		instance._warning = params.timeoutWarning
				|| instance.sessionTimeoutWarning;

		instance.sessionTimeout = instance._timeout * 60000;
		instance.sessionTimeoutWarning = instance._warning * 60000;
		instance._timeoutDiff = instance.sessionTimeout
				- instance.sessionTimeoutWarning;

		instance._currentTime = instance.sessionTimeoutWarning;

		instance.redirectOnExpire = params.redirectOnExpire
				|| instance.redirectOnExpire;

		instance._cookieKey = 'XUAN_FRAMEWORK_SESSION_STATE';

		instance.banner = new jQuery;

		instance._stateCheck = setTimeout(function() {
			instance.checkState();
		}, instance._timeoutDiff);

		var timeoutMinutes = instance._timeout;
		var timeLeft = instance._warning;

		instance._warningText = '<span class="countdown-timer"></span>';

		instance._toggleText = {
			hide : '隐藏',
			show : '显示'
		};
		instance._expiredText = '您的会话已经超时！';
		instance._extendText = '延长';
		instance.setCookie();
	},

	checkState : function() {
		var instance = this;

		var currentTime = new Date().getTime();
		var sessionState = instance.getCookie();
		var newWaitTime = instance.sessionTimeoutWarning;
		var timeDiff = 0;

		clearTimeout(instance._stateCheck);

		if (sessionState == 'expired') {
			instance.expire();
		} else {
			timeDiff = currentTime - sessionState;

			if (!instance.autoExtend) {
				if ((timeDiff + 100) >= instance.sessionTimeoutWarning) {
					instance.warn();
				} else {
					newWaitTime = (instance.sessionTimeoutWarning - timeDiff) + 10000;
					instance._stateCheck = setTimeout(function() {
						instance.checkState();
					}, newWaitTime);
				}
			} else {
				instance.extend();
			}
		}
	},

	getCookie : function() {
		var instance = this;
		return $.cookies.get(instance._cookieKey || 0);
	},

	expire : function() {
		var instance = this;
				
		instance.setCookie('expired');
		if (instance.redirectOnExpire) {
			location.href = "/c/jsp/main";
		}
	},

	extend : function() {
		var instance = this;

		if (instance._countdownTimer) {
			clearInterval(instance._countdownTimer);
		}
		jQuery.ajax( {
			url : '/c/t/session/extend'
		});

		instance._sessionWarning = setTimeout(function() {
			instance.warn();
		}, instance.sessionTimeout);

		instance.setCookie();
		instance.banner.window('close');
	},

	setCookie : function(status) {
		var instance = this;
		var currentTime = new Date().getTime();
		$.cookies.set(instance._cookieKey, status || currentTime);
	},

	warn : function() {
		var instance = this;

		var win = $('<div id="my_pop_win" style="PADDING: 8px;"></div>')
				.appendTo('body');
		var content = '<div class="messager-icon messager-info"></div><strong>您的将于<span class="countdown-timer" style="color:red"></span>后结束本次会话</strong><br/><div align="center" width="120"><a href="#" onClick="sessionWarn.extend();">延迟</a>&nbsp;&nbsp;<a href="#" onClick="sessionWarn.expire();">关闭</a></div>';
		win.append(content);
		win.window( {
			title : '系统提示',
			width : 250,
			height : 100,
			left : $(window).width() - 250,
			top : $(window).height() - 136,
			collapsible : false,
			minimizable : false,
			maximizable : false,
			resizable : false,
			showType : 'fade',
			showSpeed : 600,

			onClose : function() {
			}
		});
		instance.banner = win;
		instance._counter();

		instance._sessionExpired = setTimeout(function() {
			instance.expire();
		}, instance.sessionTimeoutWarning);
	},

	_counter : function() {
		var instance = this;
		var banner = instance.banner;
		if (banner.length) {
			instance._counterText = banner.find('.countdown-timer');
			var interval = 1000;

			instance._counterText.text(instance._setTime());
			instance._countdownTimer = setInterval(function() {
				var time = instance._setTime();

				instance._currentTime = instance._currentTime - interval;

				if (instance._currentTime > 0) {
					instance._counterText.text(time);
				} else {
					if (instance._countdownTimer) {
						clearInterval(instance._countdownTimer);
					}
					instance.banner.html(instance._expiredText);
					instance.expire();
				}
			}, interval);
		}
	},

	_formatNumber : function(num) {
		var instance = this;

		if (!$.isArray(num)) {
			if (num <= 9) {
				num = '0' + num;
			}
		} else {
			num = jQuery.map(num, instance._formatNumber);
		}
		return num;
	},

	_setTime : function() {
		var instance = this;

		var amount = instance._currentTime;

		if (amount <= 0) {

		} else {
			var days = 0, hours = 0, minutes = 0, seconds = 0, output = '';

			// Remove the milliseconds
	amount = Math.floor(amount / 1000);

	hours = Math.floor(amount / 3600);
	amount = amount % 3600;

	minutes = Math.floor(amount / 60);
	amount = amount % 60;

	seconds = Math.floor(amount);

	return instance._formatNumber( [ hours, minutes, seconds ]).join(':');
}
},

_banner : [],
_countdownTimer : null,
_currentTime : 0,
_originalTitle : '',
_sessionWarning : null,
_sessionExpired : null,
_timeout : 0,
_timeoutDiff : 0,
_warning : 0
}