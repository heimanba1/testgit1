package com.wgl.services.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wgl.bean.Industry;
import com.wgl.dao.IIndustryDao;
import com.wgl.services.IIndustryService;
@Service
public class IndustryServices implements IIndustryService {
	@Resource(name="industryDao")
	private IIndustryDao industryDao;

	@Override
	public String addIndustry(Industry industry) {
		// TODO Auto-generated method stub
		boolean res=industryDao.addIndustry(industry);
		if (res) {
			return "addIndustry";
			
		}else {
			return "addIndustry_error";
		}
	}

	@Override
	public ArrayList<Industry> getAllIndustry(int currentpage, int pagesize) {
		// TODO Auto-generated method stub
		int start=(currentpage-1)*pagesize;
		return industryDao.getAllIndustry(start, pagesize);
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return industryDao.count();
	}

	@Override
	public int sumPage(int pagesize) {
		// TODO Auto-generated method stub
		int count=industryDao.count();
		return count%pagesize>0?count/pagesize+1:count/pagesize;
	}

	@Override
	public Industry getIndustryById(int i_id) {
		// TODO Auto-generated method stub
		return industryDao.getIndustryById(i_id);
	}

	@Override
	public String updateIndustry(Industry industry) {
		// TODO Auto-generated method stub
		industryDao.updateIndustry(industry);
		return "updateIndustry";
	}

	@Override
	public String deleteIndustry(Industry industry) {
		// TODO Auto-generated method stub
		industryDao.deleteIndustry(industry);
		return "deleteIndustry";
	}

	@Override
	public ArrayList<Industry> getIndustryByGroupname(int start, int pagesize,
			int i_groupname) {
		// TODO Auto-generated method stub
		return industryDao.getIndustryByGroupName(start, pagesize, i_groupname);
	}

	@Override
	public ArrayList<Industry> getIndustryByGroupname_all(int currentpage,
			int pagesize, int i_groupname) {
		// TODO Auto-generated method stub
		int start=(currentpage-1)*pagesize;
		return industryDao.getIndustryByGroupName(start,pagesize, i_groupname);
	}

	@Override
	public int countGroupname_all(int i_groupname) {
		// TODO Auto-generated method stub
		return industryDao.countGroupnaem_all(i_groupname);
	}

	@Override
	public int sumPageGroup(int i_groupName, int pageSize) {
		// TODO Auto-generated method stub
		int count= industryDao.countGroupnaem_all(i_groupName);
		return count%pageSize>0?count/pageSize+1:count/pageSize;
	}

	@Override
	public ArrayList<Industry> QueryIndustry(int currentPage, int pageSize,
			String i_title, String i_time) {
		// TODO Auto-generated method stub
		int start=(currentPage-1)*pageSize;
		return industryDao.QueryIndustry(start, pageSize, i_title, i_time);
	}

	@Override
	public ArrayList<Industry> QueryIndustryByGroupname(int currentPage,
			int pageSize, String i_title, String i_time, int i_groupname) {
		// TODO Auto-generated method stub
		int start=(currentPage-1)*pageSize;
		return industryDao.QueryIndustryByGroupname(start, pageSize, i_title, i_time, i_groupname);
	}

}
