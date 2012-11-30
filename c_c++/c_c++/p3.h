/** 
* @file         p3.h 
* @Synopsis       
* @author         diwu.sld
* @version      1.0
* @date         2012-11-30
*/

//输入三个整数x,y,z，请把这三个数由小到大输出
#include "inlcude.h"

void doFunP3(int x, int y, int z){

	if (x > y)swap(x, y);

	if (x > z)swap(x, z);

	if (y > z) swap(y, z);

	cout<< x <<','<< y <<','<< z <<endl;
}
