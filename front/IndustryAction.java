package com.wgl.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.aspectj.util.FileUtil;
import org.springframework.stereotype.Controller;

import com.wgl.bean.Industry;
import com.wgl.services.IIndustryService;

@Controller
public class IndustryAction {
	@Resource(name="industryServices")
	private IIndustryService industryService;
	
   private Industry industry;
	
	private ArrayList<Industry> listIndustry;
	
	private int currentPage=1;
	
	private int pageSize=8;
	
	private int count;
	
    private int sumPage;
  //上传的文件（注意他的类型）
  	private File i_images;
  	
  	//文件名称
  	private String i_imagesFileName;
  	
      
    private String i_title;
  	
  	private String i_time;
      
    private int i_groupname;

	public IIndustryService getIndustryService() {
		return industryService;
	}

	public void setIndustryService(IIndustryService industryService) {
		this.industryService = industryService;
	}

	

	public Industry getIndustry() {
		return industry;
	}

	public void setIndustry(Industry industry) {
		this.industry = industry;
	}

	public ArrayList<Industry> getListIndustry() {
		return listIndustry;
	}

	public void setListIndustry(ArrayList<Industry> listIndustry) {
		this.listIndustry = listIndustry;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getSumPage() {
		return sumPage;
	}

	public void setSumPage(int sumPage) {
		this.sumPage = sumPage;
	}

	
	public File getI_images() {
		return i_images;
	}

	public void setI_images(File i_images) {
		this.i_images = i_images;
	}

	public String getI_imagesFileName() {
		return i_imagesFileName;
	}

	public void setI_imagesFileName(String i_imagesFileName) {
		this.i_imagesFileName = i_imagesFileName;
	}

	public String getI_title() {
		return i_title;
	}

	public void setI_title(String i_title) {
		this.i_title = i_title;
	}

	public String getI_time() {
		return i_time;
	}

	public void setI_time(String i_time) {
		this.i_time = i_time;
	}

	public int getI_groupname() {
		return i_groupname;
	}

	public void setI_groupname(int i_groupname) {
		this.i_groupname = i_groupname;
	}
      
	
	//跳转到添加产业公益页面
	public String tiaozhuan_Industry(){
		return "tiaozhuan_Industry";
	}
	
	//查看详细的产业公益信息
	public String defaultIndustry(){
		industry=industryService.getIndustryById(industry.getI_id());
		if (industry!=null) {
			return "defaultIndustry";
			
		}else {
			return "defaultIndustry_error";
		}
		
	}
	
	public String addIndustry(){
		//获取服务器根路径
		HttpServletRequest request=ServletActionContext.getRequest();
		String realPath=request.getRealPath("/uploadImages");
		if(i_images!=null){
			
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmssS");//格式化时间输出 
			String Rname=sdf.format(new Date());//取得当前时间，Date()是java.util包里的，这作为真实名称 
			//String name=file.getFileName();//得到上传文件的原名称 
			int i=i_imagesFileName.lastIndexOf(".");//原名称里倒数第一个"."在哪里 
			String ext=i_imagesFileName.substring(i+1);//取得后缀，及"."后面的字符 
			i_imagesFileName=Rname+"."+ext;//拼凑而成
			
			
			
			File saveFile=new File(new File(realPath), i_imagesFileName);
			if(!saveFile.getParentFile().exists())
				saveFile.getParentFile().mkdirs();
			try {
				FileUtil.copyFile(i_images, saveFile);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		industry.setI_images(i_imagesFileName);
	    return industryService.addIndustry(industry);
		
	}
	
	//查询所有的产业公益
	public String getAllIndustry(){
		listIndustry=industryService.getAllIndustry(currentPage, pageSize);
		if (listIndustry!=null) {
			count=industryService.count();
			sumPage=industryService.sumPage(pageSize);
			return "getAllIndustry";
			
		}else {
			return "getAllIndustry_error";
		}
		
	}
	
	/**
	 * 查询所有前台产业公益
	 * @return
	 */
	public String getAllFrontIndustry(){		
		listIndustry=industryService.getAllIndustry(currentPage, pageSize);
		if(listIndustry!=null){
			count=industryService.count();//新闻总数
			sumPage=industryService.sumPage(pageSize);//新闻总页数
			return "getAllFrontIndustry";
		}else{
			return "getAllIndustry_error";
		}
	}
	
	
	public String getIndustryById(){
		industry=industryService.getIndustryById(industry.getI_id());
		if (industry!=null) {
			return "getIndustryById";
			
		}else {
			return "getIndustryById_error";
		}
	}
		
	
	/**
	 * 更新产业公益
	 * @return
	 */
	public String updateIndustry(){
		//获取服务器根路径
		HttpServletRequest request=ServletActionContext.getRequest();
		String realPath=request.getRealPath("/uploadImages");
		if(i_images!=null){
			
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmssS");//格式化时间输出 
			String Rname=sdf.format(new Date());//取得当前时间，Date()是java.util包里的，这作为真实名称 
			//String name=file.getFileName();//得到上传文件的原名称 
			int i=i_imagesFileName.lastIndexOf(".");//原名称里倒数第一个"."在哪里 
			String ext=i_imagesFileName.substring(i+1);//取得后缀，及"."后面的字符 
			i_imagesFileName=Rname+"."+ext;//拼凑而成
			
			File saveFile=new File(new File(realPath), i_imagesFileName);
			if(!saveFile.getParentFile().exists())
				saveFile.getParentFile().mkdirs();
			try {
				FileUtil.copyFile(i_images, saveFile);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		industry.setI_images(i_imagesFileName);
		return industryService.updateIndustry(industry);
	}
	
	/**
	 * 删除公益产业
	 * @return
	 */
	public String deleteIndustry(){
		return industryService.deleteIndustry(industry);
	}

	
	//根据新闻类别来获取产业公益
	public String getIndustryByGroupname_all(){
		listIndustry= industryService.getIndustryByGroupname_all(currentPage, pageSize, i_groupname);
		if(listIndustry!=null){
			count=industryService.countGroupname_all(i_groupname);//新闻总数
			sumPage=industryService.sumPage(pageSize);//新闻总页数
			return "getAllIndustryByGroupname";
		}else{
			return "getAllIndustryByGroupname_error";
		}
	}
	
	
	public String getIndustryByGroupname_all1(){
		listIndustry= industryService.getIndustryByGroupname_all(currentPage, pageSize, i_groupname);
		if(listIndustry!=null){
			count=industryService.countGroupname_all(i_groupname);//产业工业总数
			sumPage=industryService.sumPage(pageSize);//新闻总页数
			return "admin_groupnameindustry";
		}else{
			return "admin_groupnameindustry_error";
		}
	}
	//跳转到产业公益分类管理页面
	public String tiao_groupname(){
		
			return "groupnameindustry";
		
		
	}
	
		
	//根据新闻标题和时间查询产业公益
	public String queryIndustry(){
		if(i_title == null) i_title = "";
	    if(i_time == null) i_time = "";
	    listIndustry=industryService.QueryIndustry(currentPage, pageSize, i_title, i_time);
		if(listIndustry!=null){
			return "getAllIndustry_query";
		}else{
			return "getAllIndustry_error_query";
		}
	}
	
	
	//根据新闻标题和时间查询分类产业公益
	public String queryIndustryByGroupname(){
		if(i_title== null) i_title = "";
	    if(i_time == null) i_time= "";
	    listIndustry=industryService.QueryIndustryByGroupname(currentPage, pageSize, i_title, i_time, i_groupname);
		if(listIndustry!=null){
			count=industryService.count();//新闻总数
			sumPage=industryService.sumPage(pageSize);//新闻总页数
			return "getAllGroupnameIndustry_query";
		}else{
			return "getAllGroupnameIndustry_error_query";
		}
	}
	
}
