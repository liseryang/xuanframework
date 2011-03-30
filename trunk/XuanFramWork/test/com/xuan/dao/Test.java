package com.xuan.dao;

import org.apache.cxf.jaxws.endpoint.dynamic.JaxWsDynamicClientFactory;

public class Test {

	public static void main(String[] args) throws Exception {
		String URI = "http://localhost/ws//HelloWorld?wsdl";
		JaxWsDynamicClientFactory dcf = JaxWsDynamicClientFactory.newInstance();
		org.apache.cxf.endpoint.Client client = dcf.createClient(URI);
		// sayHello 为接口中定义的方法名称 张三为传递的参数 返回一个Object数组
		Object[] objects = client.invoke("sayHi", "darkxie");
		// 输出调用结果
		System.out.println(objects[0].toString());
	}
}
