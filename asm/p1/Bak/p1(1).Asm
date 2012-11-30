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
     index_0 dd  dword
     index_1 dd  dword
     index_2 dd  dword
     szFmt db '%d%d%d', 0
     entryFmt db '  ',0
 
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
     				mov ebx, index_1
     				mov edx, index_2
     				
     				cmp eax, ebx
     				je forProcess_2
     				
     				cmp eax, edx
     				je forProcess_2
     				
     				cmp ebx, edx
     				je forProcess_2
     				
     				invoke crt_printf, addr szFmt,eax, ebx, edx
     				invoke crt_printf, addr entryFmt
     				jmp forProcess_2

        rtnProcess:
         	invoke ExitProcess,0
     
     end start