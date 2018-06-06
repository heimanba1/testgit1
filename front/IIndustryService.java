package com.wgl.services;

import java.util.ArrayList;

import com.wgl.bean.Industry;
import com.wgl.bean.News;

public interface IIndustryService {
	public String addIndustry(Industry industry);
	
	public ArrayList<Industry> getAllIndustry(int currentpage,int pagesize);
	
	public int count();
	
	public int sumPage(int pagesize);
	
	public Industry getIndustryById(int i_id);
	
	public String updateIndustry(Industry industry);
	
	public String deleteIndustry(Industry industry);
	
	public ArrayList<Industry> getIndustryByGroupname(int start,int pagesize,int i_groupname);
	
	public ArrayList<Industry> getIndustryByGroupname_all(int currentpage,int pagesize,int i_groupname);
	
	//根据所属新闻分类统计这类新闻的数量（主要用于分页）
    public int countGroupname_all(int i_groupname);
    //计算分页的页数
	public int sumPageGroup(int i_groupName,int pageSize);
	
	//根据新闻标题和发布时间查看新闻
    public ArrayList<Industry> QueryIndustry(int currentPage,int pageSize,String i_title,String i_time);
    
  //根据新闻标题和发布时间查看分类新闻
    public ArrayList<Industry> QueryIndustryByGroupname(int currentPage,int pageSize,String i_title,String i_time,int i_groupname);
	
	

}
