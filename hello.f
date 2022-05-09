c     Fortan 77 

c 		Insertion Sort Method
		subroutine insertionsort(a,n)

		integer a(10),n

		integer i,j,temp

		do 100 i=1,n,1

		temp = a(i)

		j=i-1

200 	if(0.LT.j .AND. temp.LT.a(j)) then

		a(j+1)=a(j)

		j=j-1

		go to 200

		endif

		a(j+1) = temp

100	continue

		return

		end
		
c 		Binary Search Method 

		integer function binarySearch(a,x,n)

		integer a(10),x,n

		integer low,high

		low=1

		high=n

300 	if(low .LE. high) then

		binarySearch = (low + high)/2

		if(a(binarySearch) .EQ. x)then

		return

		elseif(a(binarySearch) .LT. x)then

		low = binarySearch+1

		else

		high = binarySearch-1

		endif

		go to 300

		endif

		binarySearch = -1

		return

		end

c 		Main Program to call functions and ask user

		program SORTING

		integer n, i, temp, a(10),binarySearch

		PRINT *,"Enter size of array: "

		READ(*,*) n
		
		PRINT *, "Enter numbers to add in the array: "

		do 400 i=1,n,1

		READ(*,*) temp

		a(i) = temp

400 	continue

		call insertionsort(a,n)

		PRINT *,"Sorted Array:"

		do 500 i=1,n,1

		write(*,*) a(i)

500	continue

600 	if(1.EQ.1) then

		PRINT *,"Enter number to look up or -1 to exit:"

		READ(*,*) temp

		if(temp.EQ.-1)then

		go to 700

		else

		j = binarySearch(a,temp,n)

		endif

		if(j.EQ. -1)then

		PRINT *,"Number is not in the array"

		else

		WRITE(*,*) "Number location in array:",j

		endif

		go to 600

700	endif   

		STOP

		END



		     
