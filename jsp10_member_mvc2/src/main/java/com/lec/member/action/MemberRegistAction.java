package com.lec.member.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.multi.MultiButtonUI;

import com.lec.member.service.MemberRegistService;
import com.lec.member.vo.ActionForward;
import com.lec.member.vo.MemberBean;

public class MemberRegistAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) {
		
		ActionForward forward = null;
		MemberBean member = null;
		
		ServletContext context = req.getServletContext();
		
		try {
			
			member = new MemberBean();
			member.setId(req.getParameter("id"));
			member.setPw(req.getParameter("pw"));
			member.setName(req.getParameter("name"));
			member.setAge(Integer.parseInt(req.getParameter("age")));
			member.setGender(req.getParameter("gender"));
			member.setEmail(req.getParameter("email"));
			
			MemberRegistService memberRegistService = new MemberRegistService();
			boolean isRegistSuccess = memberRegistService.registerMember(member);
			
		} catch (Exception e) {
			
		}
		
		
		
		
		return forward;
	}
	
	

}
