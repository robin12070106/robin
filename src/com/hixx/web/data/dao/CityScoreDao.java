package com.hixx.web.data.dao;


public interface CityScoreDao {
	int init(String id);
	
	int[] cityRank();
	int[] cityPass(String id);
	
	void add(String id,int ccode,int trate,int frate,int srate);
}
