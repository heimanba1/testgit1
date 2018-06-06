package com.wgl.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;









import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;

import com.wgl.bean.Industry;
import com.wgl.bean.News;
import com.wgl.common.DBHelp;
import com.wgl.dao.IIndustryDao;
@Repository
public class IndustryDao extends DBHelp implements IIndustryDao {

	@Override
	public boolean addIndustry(Industry industry) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(industry);
		return industry.getI_id()>0?true:false;
	}

	@Override
	public ArrayList<Industry> getAllIndustry(final int start, final int pageSize) {
		// TODO Auto-generated method stub
		return (ArrayList<Industry>) this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				String hql="select n from Industry as n order by n.i_time desc";
				Query query=session.createQuery(hql);
				query.setFirstResult(start);
				query.setMaxResults(pageSize);
				return query.list();
			}
		});
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return Integer.valueOf(this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				String hql="select count(n) from Industry as n";
				Query query= session.createQuery(hql);
				return query.uniqueResult();
			}
		}).toString());
	}

	@Override
	public Industry getIndustryById(int i_id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Industry.class,i_id);
	}

	@Override
	public void updateIndustry(Industry industry) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(industry);
		
	}

	@Override
	public void deleteIndustry(Industry industry) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(industry);
		
	}

	@Override
	public ArrayList<Industry> getIndustryByGroupName(final int start, final int pageSize,
			final int i_groupname) {
		// TODO Auto-generated method stub
		return (ArrayList<Industry>) this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				String hql="select n from Industry as n where n.i_groupname=? order by n.i_time desc ";
				Query query= session.createQuery(hql);
				query.setFirstResult(start);
				query.setMaxResults(pageSize);
				query.setInteger(0,i_groupname);
				return query.list();
			}
		});
	}

	@Override
	public int countGroupnaem_all(final int groupname) {
		// TODO Auto-generated method stub
		return Integer.valueOf(this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				String hql="select count(n) from Industry as n where n.i_groupname=?";
				Query query= session.createQuery(hql);
				query.setInteger(0,groupname);
				return query.uniqueResult();
			}
		}).toString());
	}

	@Override
	public ArrayList<Industry> QueryIndustry(final int start, final int pageSize, final String i_title,
			final String i_time) {
		// TODO Auto-generated method stub
		return (ArrayList<Industry>) this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				
				String hql="From Industry n where 1=1";
				if(!i_title.equals("")) hql = hql + " and n.i_title like '%" + i_title + "%'";
	            if(!i_time.equals("")) hql = hql + " and n.i_time like '%" + i_time + "%'";
				Query query= session.createQuery(hql);
				query.setFirstResult(start);
				query.setMaxResults(pageSize);
				return query.list();
			}
		});
	}

	@Override
	public ArrayList<Industry> QueryIndustryByGroupname(final int start,
			final int pageSize, final String i_title, final String i_time, final int i_groupname) {
		// TODO Auto-generated method stub
		return (ArrayList<Industry>) this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				String hql="select n from Industry as n where n.i_groupname=?";
				if(!i_title.equals("")) hql = hql + " and n.i_title like '%" + i_title + "%'";
	            if(!i_time.equals("")) hql = hql + " and n.i_time like '%" + i_time + "%'";
				Query query= session.createQuery(hql);
				query.setInteger(0,i_groupname);
				query.setFirstResult(start);
				query.setMaxResults(pageSize);
				return query.list();
			}
		});
	}
	}


