/**
 * 
 */

var count1 = 0;
var count2 = 0;

$(document).ready(function(){
	$(".input").bind("keyup", function() {
	    if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
	       var inputVal = $(this).val();
	       $(this).val(inputVal.replace(/[^a-z0-9]/gi, ''));
	    }
	 });
	
	  function ajaxGo(vv){
		 $.ajax({
			url:'../idChk',
			type:'POST',
			data:{userid:vv},
			success:function(data){
				if($.trim(data)==0){
					if(confirm('��밡���� ���̵��Դϴ�.\r����Ͻðڽ��ϱ�?')){
						$("#userid").attr("readonly","readonly");
						count1=1;
						if(count1==1&&count2==1){
							$("#submit").attr("disabled", false);
							   $("#submit").attr("type","submit");
						}
					}else{}
				}else{
				alert("�ߺ��� ���̵��Դϴ�.");
					$("#userid").val("");
				} 
			}
		}); 
	}
		$("#uidBtn").click(function(){
			var vv = $("#userid").val();
			if(vv.length>=6){
				ajaxGo(vv);					
			}else{
				alert('���̵� �ʹ� ª���ϴ�.');
			}
		});
		
		$('.btn_pop').click(function(){
			$(".bx_pop").fadeToggle();
		});
		
		
	}); 
	
function samepassword(){
	if(document.getElementById('password').value.length<6){
		document.getElementById('res').innerHTML = '6�ڸ� �̻� ��й�ȣ�� �Է����ּ���.';
	}else{
		document.getElementById('res').innerHTML = '';
	}
		if(document.getElementById('password').value!=''&& document.getElementById('confirm').value !=''){

			if(document.getElementById('password').value == document.getElementById('confirm').value){
			document.getElementById('res').innerHTML = '��й�ȣ�� ��ġ�մϴ�.';
			document.getElementById('res').style.color='black';
			count2=1;
			if(count1==1&&count2==1){
				$("#submit").attr("disabled", false);
				 $("#submit").attr("type","submit");
			}
		}else{
			document.getElementById('res').innerHTML = '��й�ȣ�� ��ġ���� �ʽ��ϴ�.';
			document.getElementById('res').style.color='red';
			count2=0;
		}
	}
}

	
	
