Title: Hello world 
 ;Author: sld6666666@gmail.com    
 ;Data: 2010-11-05 
 ;Description: Assemble hello world
 .386                ;该程序对CPU的最低要求是intel 386 
 .model flat, stdcall        ; 平坦内存模型， stacll 函数调用方式 
 .stack 4096            ;栈的大小为4096B
 option casemap:none
 ;include 头文件， 连接库 
 include windows.inc 
 include kernel32.inc 
 include user32.inc 
 includelib kernel32.lib 
 includelib user32.lib
 
 include masm32.inc
 includelib masm32.lib
 
 include msvcrt.inc
includelib msvcrt.lib
 
 .data                    ;数据段
     sztitle db "hello",0        ;0 很重要， 因为是0结尾 
     helloWorld db "Hello ",0 
     index_0 dd  dword
     index_1 dd  dword
     index_2 dd  dword
 
 .code
     start:
     	mov	index_0, 0
     
     	forProcess_0:
     		cmp	index_0, 5
     		jge	rtnProcess	
     		inc	index_0	
     		mov	index_1, 0
     		
     		forProcess_1:
     			cmp index_1, 5
     			jge	forProcess_0
     			inc index_1
     			mov	index_2, 0
     			
     			forProcess_2:
     				cmp index_2, 5
     				jge forProcess_1
     				inc index_2
     				
     				mov eax, index_0
     				cmp eax, index_1
     				je forProcess_2
     				
     				cmp eax, index_2
     				je forProcess_2
     				
     				mov eax, index_1
     				je forProcess_2
     				
     				invoke crt_printf, addr helloWorld
     				jmp forProcess_2

        rtnProcess:
         	invoke ExitProcess,0
     
     end start