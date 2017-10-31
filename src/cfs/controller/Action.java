package cfs.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 모든 액션의 동일한 메소드 정의 - 인터페이스 <br />
 * 담당 : 박지민  <br />
 * 최근 수정 날짜 : 2017-10-30
 */
public interface Action {
	void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
