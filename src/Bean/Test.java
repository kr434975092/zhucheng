package Bean;

import java.util.Date;
import java.text.SimpleDateFormat;

public class Test {

	public Test() {
		// TODO �Զ����ɵĹ��캯�����
	}

	public static void main(String[]arg0) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println(df.format(new Date()));
	}
	
}
