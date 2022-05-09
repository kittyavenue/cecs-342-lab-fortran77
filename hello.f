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


		     
