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
		     
