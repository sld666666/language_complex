Title: Hello world 
 ;Author: sld6666666@gmail.com    
 ;Data: 2012-11-29 
 ;Description: Assemble hello world
 .386                ;该程序对CPU的最低要求是intel 386 
 .model flat, stdcall        ; 平坦内存模型， stacll 函数调用方式 
 .stack 4096            ;栈的大小为4096B
 option casemap:none
 
 ;include 头文件， 连接库 

include msvcrt.inc
includelib msvcrt.lib
 
 .data                    ;数据段
	year dword	2009
	month dword 5
	day dword 24
	totalDays dword 0
	
	szFmt db '%d', 0
 
 .code
     start:
  		
  		;int days =  month*30+day;
  		mov eax, 30
  		mul month
  		add eax, day
  		mov totalDays, eax
  		
  		;days += month/2 + month%2;//31天的月
  		mov eax, month
  		cdq
  		mov ebx, 2
  		idiv ebx
  		add totalDays, ebx
  		add totalDays, edx
  		
 
 		;if (month >= 2){
		;	days -= (year%4==0)?1:2;
		;}
		
		mov  eax, month
		cmp	eax, 2
		jb printProcess
		
		mov eax, year
		cdq
		mov ebx, 4
		idiv ebx
		cmp edx, 0
		je L1
		sub totalDays, 2
		jmp printProcess
			L1:
			sub totalDays, 1
		
		printProcess:
  			invoke crt_printf, addr szFmt,totalDays
  		
        rtnProcess:
         	ret
     
     end start