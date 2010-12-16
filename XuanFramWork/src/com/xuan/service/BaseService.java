package com.xuan.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.xuan.dao.IJpaDao;

public class BaseService {
	@Autowired
	protected IJpaDao dao;
}
