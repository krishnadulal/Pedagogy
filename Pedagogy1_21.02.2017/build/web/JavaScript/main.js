
		function changetabs(num,total) {
			str = "";
			for(i = 1; i <= total; i ++) {
				str = 't' + i;
				str1 = 'tab' + i;
				if (i == num) {
					$(str).show();
					$(str1).addClassName('selected');
				} else {
					$(str).hide();
					$(str1).removeClassName('selected');
				}
			}
		}

