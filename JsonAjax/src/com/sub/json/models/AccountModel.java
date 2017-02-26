package com.sub.json.models;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class AccountModel implements Serializable {
	
		private static final long serialVersionUID = -4835224895952766346L;
		private String bookname;
		private String price;
		private String size;
		private String pages;
		
		public AccountModel(){}

		
		}

	

