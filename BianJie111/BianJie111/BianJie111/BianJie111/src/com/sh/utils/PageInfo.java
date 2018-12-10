package com.sh.utils;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PageInfo {
	
	private int sum;//������
	private int pagecount = 5;//ÿҳ��������
	private int page=1;//��ǰҳ
	private int sumpage=1;//��ҳ��
	
	private List list;//��ҳ����
	private Map<String,Integer> map =new HashMap<String,Integer>();//
	private Object object;
	public int getBeginRow(){
		
		return (this.getPage()-1)*this.getPagecount();
	}
	public Map getMap() {
		return map;
	}

	public void setMap(Map map) {
		this.map = map;
	}

	public void setSumpage(int sumpage) {
		this.sumpage = sumpage;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
		if(pagecount>0){
			if(sum%pagecount==0){
				this.sumpage=sum/pagecount;
			}else{
				this.sumpage=(sum/pagecount)+1;
			}
		}
		map.put("b", getBeginRow());
		map.put("c", getPagecount());
		//if(page>=sumpage&&page!=1&&sum%pagecount!=0){
		//	top=sum%pagecount;
		//}
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public int getPagecount() {
		return pagecount;
	}
	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
		//this.top=pagecount;
	}

	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page <= 0){
			page = 1;
		}
		this.page = page;
	}
	public int getSumpage() {
		return sumpage;
	}
	public Object getObject() {
		return object;
	}
	public void setObject(Object object) {
		this.object = object;
	}

//	public int getTop() {
//		return top;
//	}
}
