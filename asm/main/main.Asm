 
  .386                
 .model flat, stdcall       
 .stack 4096           
 option casemap:none
 


include p4.inc
include p4.asm


	
 .code
     start:
     	
     	invoke doFunP4
        rtnProcess:
         	ret
     
     end start
     
