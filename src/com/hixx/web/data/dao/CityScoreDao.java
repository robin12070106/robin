package com.hixx.web.data.dao;


public interface CityScoreDao {
	int init(String id);
	int[] cityrank();
	int[] citypass();
}
