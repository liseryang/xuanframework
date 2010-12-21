package com.xuan.comm.util.report.jasper;

import java.awt.Color;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.sf.jasperreports.engine.JRException;

import org.springframework.jdbc.core.RowCallbackHandler;

import ar.com.fdvs.dj.domain.DynamicReport;
import ar.com.fdvs.dj.domain.Style;
import ar.com.fdvs.dj.domain.builders.ColumnBuilder;
import ar.com.fdvs.dj.domain.builders.ColumnBuilderException;
import ar.com.fdvs.dj.domain.builders.DynamicReportBuilder;
import ar.com.fdvs.dj.domain.builders.StyleBuilder;
import ar.com.fdvs.dj.domain.constants.Border;
import ar.com.fdvs.dj.domain.constants.Font;
import ar.com.fdvs.dj.domain.constants.HorizontalAlign;
import ar.com.fdvs.dj.domain.constants.Transparency;
import ar.com.fdvs.dj.domain.constants.VerticalAlign;
import ar.com.fdvs.dj.domain.entities.DJGroup;
import ar.com.fdvs.dj.domain.entities.columns.AbstractColumn;

import com.xuan.dao.CommonJdbcDao;

public class DynamicJasperBuilder {
	
	private static void initStyle(DynamicReportBuilder drb) {
		 Font font = new Font(12,"微软雅黑","MSYH.TTF",Font.PDF_ENCODING_Identity_H_Unicode_with_horizontal_writing,true);
//		Font font = new Font(12, "黑体", false);
		Style titleStyle = new StyleBuilder(false).setFont(new Font(12, "黑体", false))
				.setHorizontalAlign(HorizontalAlign.CENTER).setVerticalAlign(
						VerticalAlign.MIDDLE).setTransparency(
						Transparency.OPAQUE)
				.setBorderBottom(Border.PEN_2_POINT).build();
		drb.setTitleStyle(titleStyle);

		Style columnHeaderStyle = new StyleBuilder(false).setHorizontalAlign(
				HorizontalAlign.CENTER).setVerticalAlign(VerticalAlign.MIDDLE)
				.setFont(font).setTextColor(Color.BLUE)
				.build();
		Style subtitleStyle =  new StyleBuilder(false).setFont(new Font(12, "黑体", false))
		.setHorizontalAlign(HorizontalAlign.RIGHT).setVerticalAlign(
				VerticalAlign.MIDDLE).setTransparency(
				Transparency.OPAQUE)
		.setBorderBottom(Border.PEN_2_POINT).build();
		drb.setSubtitleStyle(subtitleStyle);
		Style columDetailStyle = new StyleBuilder(false).setHorizontalAlign(
				HorizontalAlign.LEFT).setVerticalAlign(VerticalAlign.TOP)
				.setFont(font).
				build();

		
		drb.setDefaultStyles(titleStyle, subtitleStyle, columnHeaderStyle,
				columDetailStyle);
	}
	
	public static DynamicReport getJasper(String title,String subTitle,DJGroup[] groups,AbstractColumn[] columns) throws ColumnBuilderException, JRException {
		DynamicReportBuilder drb = new DynamicReportBuilder();
		initStyle(drb);        
		drb.setTitle(title)                                      //defines the title of the report
                .setSubtitle(subTitle)
                .setDetailHeight(15)                                            //defines the height for each record of the report
                .setMargins(30, 20, 30, 15)                                                     //define the margin space for each side (top, bottom, left and right)
//                .setDefaultStyles(titleStyle, subtitleStyle, headerStyle, detailStyle)
                .setColumnsPerPage(1);                                          //defines columns per page (like in the telephone guide)

        /**
         * Note that we still didn't call the build() method
         */

        /**
         * Column definitions. We use a new ColumnBuilder instance for each
         * column, the ColumnBuilder.getNew() method returns a new instance
         * of the builder
         */
		for (AbstractColumn column : columns) {
			drb.addColumn(column);
		}
        

        /**
         * add some more options to the report (through the builder)
         */
        drb.setUseFullPageWidth(true);  //we tell the report to use the full width of the page. this rezises
        drb.setPrintColumnNames(true);                                                                //the columns width proportionally to meat the page width.
        
        //add the group to the DynamicReportBuilder
        if (groups!=null){
        	for (DJGroup group : groups) {
            	drb.addGroup(group);             
    		}
        }
        
        

        DynamicReport dr = drb.build(); //Finally build the report!
        return dr;
	}
	
	public static DynamicReport getDynamicReportBySQL(String title,String subTitle,CommonJdbcDao jdbcDao,String sql, Object... args) throws ColumnBuilderException, JRException{
		String sql2 = "select * from (" + sql + ") where rownum <2";
		
		List<AbstractColumn> columns = new ArrayList<AbstractColumn>();
		RowCallbackHandler rowCallbackHandler = new CRowCallbackHandler(columns);
		jdbcDao.query(rowCallbackHandler, sql2, args);
		return getJasper(title,subTitle,null, columns.toArray(new AbstractColumn[columns.size()]));
	}
	
	private static class CRowCallbackHandler implements RowCallbackHandler{
		final List<AbstractColumn> columns ;

		public CRowCallbackHandler(List<AbstractColumn> columns) {
			super();
			this.columns = columns;
		}

		public void processRow(ResultSet rs) throws SQLException {
			ResultSetMetaData metaData = rs.getMetaData();
			int columnCount = metaData.getColumnCount();
			for (int i = 1; i < columnCount+1; i++) {
				int size = metaData.getColumnDisplaySize(i);
				String className = metaData.getColumnClassName(i);
				String columnName = metaData.getColumnName(i);
				String columnLabel = metaData.getColumnLabel(i);
				try {
					AbstractColumn column = ColumnBuilder.getNew()
					.setColumnProperty(columnName, className)
					.setTitle(columnLabel).setWidth(size)
					.build();
					columns.add(column);
				} catch (ColumnBuilderException e) {
					e.printStackTrace();
				}
			}
		}
		
	}
	

}
