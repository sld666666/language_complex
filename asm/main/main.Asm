 
  .386                
 .model flat, stdcall       
 .stack 4096           
 option casemap:none
 


include p3.inc
include p3.asm


	
 .code
     start:
     	
     	invoke print
        rtnProcess:
         	ret
     
     end start
     
