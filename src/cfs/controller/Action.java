package cfs.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 모든 Action의 동일한 execute 메소드 정의 <br />
 * 담당 : 박지민
 */
public interface Action {
	void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
