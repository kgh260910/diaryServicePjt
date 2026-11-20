package com.office.diary;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class DiaryService {
	
	final private DiaryDao diaryDao;
	
	public DiaryService(DiaryDao diaryDao) {
		this.diaryDao = diaryDao;
	}

	public int writeNewDiary(HttpServletRequest request, HttpServletResponse response) {
		
		String diaryWord = request.getParameter("diaryWord");
		
		HttpSession session = request.getSession();
		String singinedMemberId = String.valueOf(session.getAttribute("singinedMemberId"));
		
		DiaryDto diaryDto = new DiaryDto(diaryWord, singinedMemberId);
		
		int result = diaryDao.insertNewDiary(diaryDto);
		
		return result;
	}

}
