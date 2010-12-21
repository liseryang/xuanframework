package com.xuan.comm.util.report.jasper;

import java.io.InputStreamReader;
import java.util.List;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.view.JasperViewer;

import org.logicalcobwebs.proxool.ProxoolDataSource;
import org.logicalcobwebs.proxool.ProxoolException;
import org.logicalcobwebs.proxool.configuration.JAXPConfigurator;
import org.springframework.jdbc.datasource.embedded.DataSourceFactory;

import ar.com.fdvs.dj.core.DynamicJasperHelper;
import ar.com.fdvs.dj.core.layout.ClassicLayoutManager;
import ar.com.fdvs.dj.domain.DynamicReport;
import ar.com.fdvs.dj.domain.Style;
import ar.com.fdvs.dj.domain.builders.ColumnBuilder;
import ar.com.fdvs.dj.domain.builders.ColumnBuilderException;
import ar.com.fdvs.dj.domain.builders.GroupBuilder;
import ar.com.fdvs.dj.domain.entities.DJGroup;
import ar.com.fdvs.dj.domain.entities.columns.AbstractColumn;
import ar.com.fdvs.dj.domain.entities.columns.PropertyColumn;
import ar.com.fdvs.dj.test.TestRepositoryProducts;

import com.xuan.dao.CommonJdbcDao;

public class DynamicJasperBuilderTester {
	
	private static void test1() throws JRException, ColumnBuilderException{
		AbstractColumn columnState = ColumnBuilder.getNew()             //creates a new instance of a ColumnBuilder
        .setColumnProperty("state", String.class.getName())                     //defines the field of the data source that this column will show, also its type
        .setTitle("State")                                                                                      //the title for the column
        .setWidth(85)                                                                   //the width of the column
        .build();                                                                                                       //builds and return a new AbstractColumn

		//Create more columns
		AbstractColumn columnBranch = ColumnBuilder.getNew()
		        .setColumnProperty("branch", String.class.getName())
		        .setTitle("Branch").setWidth(85)
		        .build();
		
		AbstractColumn columnaProductLine = ColumnBuilder.getNew()
		        .setColumnProperty("productLine", String.class.getName())
		        .setTitle("Product Line").setWidth(85)
		        .build();
		
		AbstractColumn columnaItem = ColumnBuilder.getNew()
		        .setColumnProperty("item", String.class.getName())
		        .setTitle("Item").setWidth(85)
		        .build();
		
		AbstractColumn columnCode = ColumnBuilder.getNew()
		        .setColumnProperty("id", Long.class.getName())
		        .setTitle("ID").setWidth(40)
		        .build();
		
		AbstractColumn columnaCantidad = ColumnBuilder.getNew()
		        .setColumnProperty("quantity", Long.class.getName())
		        .setTitle("Quantity").setWidth(80)
		        .build();
		
		Style amountStyle = null;
		AbstractColumn columnAmount = ColumnBuilder.getNew()
		        .setColumnProperty("amount", Float.class.getName())
		        .setTitle("Amount").setWidth(90)
		        .setPattern("$ 0.00")           //defines a pattern to apply to the values swhown (uses TextFormat)
		        .setStyle(amountStyle)          //special style for this column (align right)
		        .build();
		GroupBuilder gb1 = new GroupBuilder();
		DJGroup g1 = gb1.setCriteriaColumn((PropertyColumn) columnState).build();
		AbstractColumn[] columns = new AbstractColumn[]{columnState,columnBranch,columnaProductLine,columnaItem,columnaItem,columnCode,columnaCantidad,columnAmount};
		
		DynamicReport dr  = DynamicJasperBuilder.getJasper("TITLE for test report","sub title",new DJGroup[]{g1},columns);
		
	    JRDataSource ds = new JRBeanCollectionDataSource(TestRepositoryProducts.getDummyCollection());    //Create a JRDataSource, the Collection used
	    
		JasperPrint jp = DynamicJasperHelper.generateJasperPrint(dr, new ClassicLayoutManager(), ds);    //Creates the JasperPrint object, we pass as a Parameter
	                                                                                                        //the DynamicReport, a new ClassicLayoutManager instance (this
	                                                                                                        //one does the magic) and the JRDataSource
	    JasperViewer.viewReport(jp);    //finally display the report report
	}
	
	
	private static void testSQL() throws ColumnBuilderException, JRException{
		try {
			CommonJdbcDao dao = new CommonJdbcDao();
			Class.forName("org.logicalcobwebs.proxool.ProxoolDriver");
			JAXPConfigurator.configure(new InputStreamReader(DataSourceFactory.class.getClassLoader().getResourceAsStream("proxool.xml")), false);
			ProxoolDataSource proxoolDataSource = new ProxoolDataSource("epayment");
			dao.setDataSource(proxoolDataSource);
//			List<Map<String, Object>> queryForList = dao.queryForList("select * from tab");
//			System.out.println(queryForList);
			String sql = "select biller_id,biller_name,PORTNO from biller";
			DynamicReport dr = DynamicJasperBuilder.getDynamicReportBySQL("SQL 报表","sub title",dao,sql);
//		    JRDataSource ds = new JRBeanCollectionDataSource(TestRepositoryProducts.getDummyCollection());    //Create a JRDataSource, the Collection used
		    
//			JasperPrint jp = DynamicJasperHelper.generateJasperPrint(dr, new ClassicLayoutManager(), ds);    //Creates the JasperPrint object, we pass as a Parameter
                                                            //one does the magic) and the JRDataSource
			List resultSet = dao.queryForList(sql);			
			JasperPrint jp =  DynamicJasperHelper.generateJasperPrint(dr, new ClassicLayoutManager(), resultSet);
			JasperViewer.viewReport(jp);    //finally display the report report
		} catch (ProxoolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	
	
	public static void main(String[] args) throws ColumnBuilderException, JRException {
		test1();
			
	}

}
