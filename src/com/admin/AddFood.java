package com.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddFood
 */
@WebServlet("/AddFood")
public class AddFood extends HttpServlet {
	private final String UPLOAD_DIRECTORY = "C:\\Users\\RnD\\Desktop\\kashipara.com_onlineshoppingsystemcode-d\\OnlineShoppingSystemCode+Database\\OnlineShoppingSystem\\WebContent\\uploads";
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				String imageName=null;
				String foodName = null;
				String foodPrice =null;
				String descrip=null;
				String mrpPrice=null;
				String status=null;
				String category=null;
				String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		        StringBuilder salt = new StringBuilder();
		        Random rnd = new Random();
		        while (salt.length() < 3) { // length of the random string.
		            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
		            salt.append(SALTCHARS.charAt(index));
		        }
		        String code = salt.toString();
				
				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						imageName = new File(item.getName()).getName();
						item.write(new File(UPLOAD_DIRECTORY + File.separator + imageName));
						FileItem pName = (FileItem) multiparts.get(0);
						foodName = pName.getString();
						
						FileItem price = (FileItem) multiparts.get(1);
						foodPrice = price.getString();	
					
						
						FileItem description = (FileItem) multiparts.get(2);
						descrip = description.getString();
						
						
						FileItem mprice = (FileItem) multiparts.get(3);
						mrpPrice = mprice.getString();
						
						
						FileItem fstatus = (FileItem) multiparts.get(4);
						status = fstatus.getString();
						
						FileItem fcategory = (FileItem) multiparts.get(5);
						category = fcategory.getString();
							
					}
				}
				try {
					int id = 0;
					String imagePath = UPLOAD_DIRECTORY + imageName;
					
					int i = DatabaseConnection.insertUpdateFromSqlQuery("insert into tblproduct(id,active,code,description,image,image_name,name,price,mrp_price,product_category) values('" + id + "','" + status + "','" + code + "','" + descrip + "','" + imagePath + "','"+imageName+"','"+foodName+"','"+foodPrice+"','"+mrpPrice+"','"+category+"')");
					if (i > 0) {
						String success = "Food item added successfully!";
						session.setAttribute("message", success);
						response.sendRedirect("admin-add-food.jsp");
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			} catch (Exception ex) {
				request.setAttribute("message", "File upload failed due to " + ex);
			}

		} else {
			request.setAttribute("message", "Sorry this servlet only handles file upload request!");
		}
	}
}
