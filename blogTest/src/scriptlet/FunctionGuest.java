package scriptlet;

public class FunctionGuest {

	public static String getGuest(int idx, String id, String pw, 
			String answer, String secret, String date){
		answer = answer.replace("<script>", "");
		answer = answer.replace("<SCRIPT>", "");
		answer = answer.replace("</script>", "");
		answer = answer.replace("</script>", "");
				
		String temp = 
					"<div class=\"guestBox\">"+
				        "<div class=\"guestInfo\">"+
				        "<div class=\"guestID\">" +id+ "</div>"+
				        "<div class=\"guestDate\">" + "No." +idx+ " "
				        +date+ "</div>"+
					    "</div>"+
					    "<hr><br>"+
					    "<div class=\"guestString\">"+answer+"<br>"+
					    "<textarea class=\"guestField upHiden updateAnswer\">"+answer+"</textarea>"+
					    "</div>"+
					    "<br>"+
					    "<div class=\"guestBoxAction\">"+
					    	"<input class=\"upHiden\" type=\"button\" name=\"guestBoxUp\" "
					    	+ "onclick=\"guestUpProc("+idx+")\" value=\"수정 확인\">"+
					        "<input class=\"importUp\" type=\"button\" name=\"guestBoxDel\" "
					    	+ "onclick=\"guestUp("+idx+")\" value=\"수정\">"+
					        "<input type=\"button\" name=\"guestBoxDel\" "
					        + "onclick=\"guestDel("+idx+")\" value=\"삭제\">"+
					    "</div>"+
					    "<hr>"+
					"</div>";
		return temp;
	}
}
