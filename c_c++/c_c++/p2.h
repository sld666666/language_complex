/** 
* @file         p2.h 
* @Synopsis       
* @author         diwu.sld
* @version      1.0
* @date         2012-11-30
*/

#pragma once
#include "inlcude.h"
//题目：输入某年某月某日，判断这一天是这一年的第几天？

class P2{

public: 
	void doFun(int year, int month, int day){

		int days =  month*30+day;
		days += month/2 + month%2;//31天的月

		if (month >= 2){
			days -= (year%4==0)?1:2;
		}

		cout << days <<endl;
	}
};