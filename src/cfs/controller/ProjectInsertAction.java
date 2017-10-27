package cfs.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProjectInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String saveDir = request.getServletContext().getRealPath("/saveimg");
		int maxSize=1024*1024*100;
		String encoding= "UTF-8";
		MultipartRequest m = 
				new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		String fName = m.getOriginalFileName("proimg");
		int pos = fName.lastIndexOf(".");
		String ext = fName.substring( pos + 1 );
		PrintWriter out = response.getWriter();
		if(!ext.equals("img")||!ext.equals("png")||!ext.equals("jpg")) {
			
		}
		else {
			
		}
		request.getRequestDispatcher("").forward(request,response);

	}

}
