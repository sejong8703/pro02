package com.sejongfood.controller;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.crypto.util.AES256;
import com.sejongfood.dto.User;
import com.sejongfood.model.UserDAO;

@WebServlet("/UpdateUserPro.do")
public class UpdateUserProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		User user = new User();
		String key = "%03x";
		
		String id = request.getParameter("id");
		String hpw = request.getParameter("hpw");
		String pw = request.getParameter("pw");
		String ppw = request.getParameter("ppw");

		String passwd = "";
		if(pw!=ppw){
			try {
				passwd = AES256.encryptAES256(ppw, key);
			} catch (InvalidKeyException | NoSuchAlgorithmException
					| InvalidKeySpecException | NoSuchPaddingException
					| InvalidParameterSpecException | BadPaddingException
					| IllegalBlockSizeException e) {
				e.printStackTrace();
			}
		}
		user.setId(request.getParameter("id"));
		user.setPw(passwd);
		user.setName(request.getParameter("name"));
		user.setEmail(request.getParameter("email"));
		user.setTel(request.getParameter("tel"));
		if(request.getParameter("address1")=="" || request.getParameter("address2")==""){
			user.setAddr(request.getParameter("addr"));
		} else {
			user.setAddr(request.getParameter("address1")+" "+request.getParameter("address2"));
		}
		
		UserDAO dao = new UserDAO();
		int cnt = 0;
		if(pw!=hpw){
			cnt = dao.updateUser(user);
		} else {
			cnt = dao.updateUser2(user);
		}
		
		if(cnt>=1){
			response.sendRedirect(request.getContextPath());
		} else {
			response.sendRedirect("UpdateUser.do?id="+id);
		}
	}
}
