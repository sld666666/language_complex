Title: Hello world 
 ;Author: sld6666666@gmail.com    
 ;Data: 2012-11-29 
 ;Description: Assemble hello world
 .386                ;�ó����CPU�����Ҫ����intel 386 
 .model flat, stdcall        ; ƽ̹�ڴ�ģ�ͣ� stacll �������÷�ʽ 
 .stack 4096            ;ջ�Ĵ�СΪ4096B
 option casemap:none
 
 ;include ͷ�ļ��� ���ӿ� 

include msvcrt.inc
includelib msvcrt.lib
 
 .data                    ;���ݶ�
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
  		
  		;days += month/2 + month%2;//31�����
  		mov eax, month
  		cdq
  		mov ebx, 2
  		idiv ebx
  		add totalDays, ebx
  		add totalDays, edx
  		
 
  		invoke crt_printf, addr szFmt,totalDays
  		
        rtnProcess:
         	ret
     
     end start