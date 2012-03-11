package demo.spring;

import javax.jws.WebService;

@WebService(endpointInterface = "demo.spring.HelloWorld")
public class HelloWorldImpl implements HelloWorld {

	public String sayHi(String text) {
		System.out.println("==============================");
		return "Hello " + text;
	}

}
