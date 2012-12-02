

.data
	x	dword 1
	y	dword 1
	printFmt db '%d*%d=%d ', 0
	printEntry dword 0ah

.code 

	doFunP4 proc
	
		beginLoop:
			cmp x, 10
			jnb endProcess
			
			yIncProcess:
				cmp y, 10
				jnb xIncProcess
				mov eax, x
				mul y
				
				invoke crt_printf, addr printFmt, x, y,eax
				inc	y
				jmp yIncProcess
			
			xIncProcess:
				invoke crt_printf, addr printEntry
				inc x
				mov	y, 1
				jmp beginLoop
		
		endProcess:
			ret

	doFunP4 endp