package com;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cloudant.client.api.CloudantClient;
import com.cloudant.client.api.Database;
import com.cloudant.client.api.model.Response;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/**
 * Servlet implementation class SimpleServlet
 */
public class SimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SimpleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		
		response.sendRedirect(request.getContextPath() + "/success.jsp");
		
		CloudantClient client = new CloudantDBConnection().getConnection();
		
		String loc=request.getParameter("loc");
		String name=request.getParameter("name");
		String emailid = request.getParameter("emailid");
		String mobile = request.getParameter("mobile");
		String org=request.getParameter("org");
		String rating=request.getParameter("rating");
		String likesession=request.getParameter("likesession");
		String addnsupport=request.getParameter("addnsupport");
		String comments=request.getParameter("comments");
		String interested=request.getParameter("interested");

		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		
		String dbname = "devconnectpunefeedback";
		try {
		//creates a database with the specified name
			
	    Database db = client.database(dbname, false);
	    
		//create a simple doc to place into your new database
		Map<String, Object> doc = new HashMap<String, Object>();
		doc.put("_id", UUID.randomUUID().toString());
		doc.put("Location", loc);
		doc.put("Name", name);
		doc.put("Emailid", emailid);
		doc.put("Mobile", mobile);
		doc.put("Organization", org);
		doc.put("Rating", rating);
		doc.put("LikedSessionDetails", likesession);
		doc.put("AdditionalSupport", addnsupport);
		doc.put("Comment", comments);
		doc.put("FurtherCommunications", interested);
		doc.put("Timestamp",timestamp);
		Response dbResponse = db.save(doc);
		} catch (Exception e) {
		response.getWriter().println(e.getMessage());
		}
	}

}
