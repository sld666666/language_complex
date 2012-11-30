 
  .386                
 .model flat, stdcall       
 .stack 4096           
 option casemap:none
 


include p3.inc

 .data                    ;Êý¾Ý¶Î
	hello db '%d', 0


	
 .code
     start:
     	
     	invoke donFunP3
        rtnProcess:
         	ret
     
     end start
     
