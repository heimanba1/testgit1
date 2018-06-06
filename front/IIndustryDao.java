package com.wgl.dao;

import java.util.ArrayList;

import com.wgl.bean.Industry;
import com.wgl.bean.News;

public interface IIndustryDao {
	public boolean addIndustry(Industry industry);
	
	public ArrayList<Industry> getAllIndustry(int start,int pageSize);
	
	public int count();
	
	public Industry getIndustryById(int i_id);
	
	public void updateIndustry(Industry industry);
	
	public void deleteIndustry(Industry industry);
	
	//根据分类来查询产业产业公益
	public ArrayList<Industry> getIndustryByGroupName(int start,int pageSize,int i_groupname);
	
	//根据所属产业公益分类统计这类新闻的数量
	public int countGroupnaem_all(int groupname);

	 //根据产业公益标题和发布时间查看
    public ArrayList<Industry> QueryIndustry(int start,int pageSize,String i_title,String i_time);
    
    //根据产业公益标题和发布时间查找分类产业公益
    public ArrayList<Industry> QueryIndustryByGroupname(int start,int pageSize,String i_title,String i_time,int i_groupname);
}
