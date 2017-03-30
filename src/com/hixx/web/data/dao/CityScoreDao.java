package com.hixx.web.data.dao;

import java.util.List;

import com.hixx.web.data.entity.CityScore;

public interface CityScoreDao {
	
	int init(String id);
	
	int[] cityRank();
	int[] cityPass(String id);
	
	int add(String id,int ccode,int trate,int frate,int srate);

}
