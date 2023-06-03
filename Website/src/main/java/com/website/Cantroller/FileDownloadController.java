package com.website.Cantroller;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jmd.contact.model.VendorDto;
import com.jmd.contact.service.VendorDetailsService;
*/
/* 
@Controller
@RequestMapping("/filedownload")*/
public class FileDownloadController {
     
	/*CellStyle cellStyle;
	@Autowired
	private VendorDetailsService vendorDetailsService;
	*//**
     * Size of a byte buffer to read/write file
     *//*
    private static final int BUFFER_SIZE = 14096;
             
    *//**
     * Path of the file to be downloaded, relative to application's directory
     *//*
    private String filePath =  null;
     
    *//**
     * Method for handling file download request from client
     *//*
    @RequestMapping(method = RequestMethod.GET)
    public void doDownload(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
 
        // get absolute path of the application
        ServletContext context = request.getServletContext();
        String appPath = context.getRealPath("");
        String exe = "reportVendor".replace("_", " ");
        List<VendorDto> report=vendorDetailsService.listVendor("","");
        filePath=generateExcel(exe,report);
        String fullPath =  filePath;      
        System.out.println("fullPath = " + fullPath);
        File downloadFile = new File(fullPath);
        FileInputStream inputStream = new FileInputStream(downloadFile);
       
        // get MIME type of the file
        String mimeType = context.getMimeType(fullPath);
        if (mimeType == null) {
            // set to binary type if MIME mapping not found
            mimeType = "application/octet-stream";
        }
        System.out.println("MIME type: " + mimeType);
 
        // set content attributes for the response
        response.setContentType(mimeType);
        response.setContentLength((int) downloadFile.length());
 
        // set headers for the response
        String headerKey = "Content-Disposition";
        String headerValue = String.format("attachment; filename=\"%s\"",
                downloadFile.getName());
        response.setHeader(headerKey, headerValue);
 
        // get output stream of the response
        OutputStream outStream = response.getOutputStream();
 
        byte[] buffer = new byte[BUFFER_SIZE];
        int bytesRead = -1;
 
        // write bytes read from the input stream into the output stream
        while ((bytesRead = inputStream.read(buffer)) != -1) {
            outStream.write(buffer, 0, bytesRead);
        }
 
        inputStream.close();
        outStream.close();
 
    }
    
    public String generateExcel(String exePath,List<VendorDto> surveyReport) {
    	 File f = null; 	
    	 try
         {    
    		 //File file = new File("D:\\Back up 18-08-17 file upload\\20_1_2018 Desk Backup");
    @SuppressWarnings("deprecation")
	XSSFWorkbook workbook = new XSSFWorkbook( ); 
      
    XSSFSheet sheet = workbook.createSheet("Report");// creating a blank sheet
      cellStyle = workbook.createCellStyle();
    CreationHelper createHelper = workbook.getCreationHelper();
    short dateFormat = createHelper.createDataFormat().getFormat("dd-MM-YYYY");
    cellStyle.setDataFormat(dateFormat);
    Row row =sheet.createRow(0);
    createListHeader( row);
     int rownum = 1;
     for (VendorDto user : surveyReport)
        {
         row = sheet.createRow(rownum++);
        createList(user, row);
            
      } 
 	String rootPath = System.getProperty("catalina.home");
	File dir = new File(rootPath + File.separator + "Ulwe" + File.separator + exePath.replace("-", "_").replaceAll(":",	 "").split(" ")[0]   );
	
	if (!dir.exists())
		dir.mkdirs();

	// Create the file on server
	f= new File(dir.getAbsolutePath()
			+ File.separator + exePath.replace("-", "_").replaceAll(":",	 "")+"Report.xlsx");
      
        FileOutputStream out = new FileOutputStream(f); // file name with path+
        workbook.write(out);
        out.close();
       
    } 
    catch (Exception e) 
    {
        e.printStackTrace();
    }
    	return f.getAbsolutePath();
    	
    }
    private void createListHeader(Row row) {
    ArrayList<String>	id=new ArrayList<>();
    id.add("Vendor Id");
	id.add("Business Name");
	id.add("Vendor Name");
	id.add("Email ID"	);
	id.add("mobile no"	);
	id.add("Category 1");
	id.add("Category 2");	
	id.add("Category 3"	);
	id.add("Start Date");	
	id.add("End Date");
	id.add("Status");
	id.add ("Vendor Hits");
 
	Cell cell ;
    	for(int i=0;i<id.size();i++) {
    	  cell = row.createCell(i);
    	  cell.setCellValue(id.get(i));}
	}

	private   void createList(VendorDto user, Row row) // creating cells for each row
    {
		 
            Cell cell = row.createCell(0);
            cell.setCellValue(user.getVendor_id());
         
            cell = row.createCell(1);
            cell.setCellValue(user.getBussiness_name());

            cell = row.createCell(2);
            cell.setCellValue(user.getVendor_name());
            

            cell = row.createCell(3);
            cell.setCellValue(user.getEmail_id());

            cell = row.createCell(4);
            cell.setCellValue(user.getMobile_no());
 
            cell = row.createCell(5);
            cell.setCellValue(user.getCategoryName());

            cell = row.createCell(6);
            cell.setCellValue(user.getSub_categoryName());

            cell = row.createCell(7);
            cell.setCellValue(user.getExpr1());

            cell = row.createCell(8);
            cell.setCellValue(user.getStart_date());
            cell.setCellStyle(cellStyle);
            
            cell = row.createCell(9);
            cell.setCellValue(user.getEnd_date());
            cell.setCellStyle(cellStyle);
            
            
            cell = row.createCell(10);
            if(user.getStatusAI().equals("A"))
            	cell.setCellValue("Active");
            else
            	cell.setCellValue("Inactive");


            cell = row.createCell(11);
            cell.setCellValue(user.getCntLog());

            */
             
        }
