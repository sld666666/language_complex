/** 
* @file         p4.h 
* @Synopsis       
* @author         sld666666@gmail.com 
* @version     1.0.0
* @date         2:12:2012  
*/

//题目：输出9*9口诀。
#include "inlcude.h"

void doFunP4(){
	
	for (int i = 1; i < 10; ++i){
		for (int j = 1; j < 10; ++j){
			cout << j <<"*" << i << "=" << i*j <<" ";
		}
		cout << "\n";
	}
}
