 	

 .data                    ;Êý¾Ý¶Î                 
	x dword 200
	y dword 10
	z dword 400
	printFmt db '%d,%d,%d', 0
	
.code
	sortEaxEbx proc 
		cmp eax, ebx
		jbe rtnProcess
	
		swapProcess:
			xchg eax, ebx
	
		rtnProcess:
			ret

	sortEaxEbx endp

 	print proc 
		mov eax, x
		mov ebx, y
		invoke  sortEaxEbx 
		mov x, eax
		mov y, ebx
		
		mov eax, x
		mov ebx, z
		invoke sortEaxEbx
		mov x, eax
		mov z, ebx
		
		mov eax, y
		mov ebx, z
		invoke sortEaxEbx
		mov y, eax
		mov z, ebx
		
		invoke crt_printf, addr printFmt, x, y, z
		ret
		
	print endp
	
