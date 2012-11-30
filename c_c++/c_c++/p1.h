/** 
* @file         p1.h 
* @Synopsis       
* @author         diwu.sld
* @version      1.0
* @date         2012-11-28
*/
#pragma once
#include "inlcude.h"

//题目：有1、2、3、4个数字，能组成多少个互不相同且无重复数字的三位数？都是多少？
#pragma region c

void p1_fun()
{
	for (int i = 1; i <= 4; ++i){
		for (int j = 1; j <= 4; ++j){
			for (int k = 1; k <=4; ++k){
				if (i !=j && i !=k && j != k){
					ostringstream stringStream;
					stringStream<<i<<j<<k;
					cout<<stringStream.str()<<",";
				}
			}
		}
	}
}
#pragma endregion c

#pragma region c++
class P1{
public:
	void p1_fun(){

		vector<char> vec1, vec2, vec3;
		vec1.push_back('1');
		vec1.push_back('2');
		vec1.push_back('3');
		vec1.push_back('4');
		vec2 = vec3 = vec1;

		//for_each(vec1.begin(), vec1.end(),)

	}

	void doFun(char a, char b, char c){
		if (a != b && a != c && b !=c){
			ostringstream stringStream;
			stringStream<<a<<b<<c;
			cout<<stringStream.str()<<",";
		}
	}

};

#pragma endregion c++