# arr = [1, 3]
# arr = [1, 7, 3, 21, 13, 19].shuffle()
arr = [21, 3, 19, 7, 1, 13]
guards = arr.length().floor()
m =[2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536,131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432,67108864,134217728,268435456,536870912]
j=0
i=0
until guards==0 or arr.length == 1 do
  j=i+1
  until arr[j]== nil do
    print "testing: ",arr," ", arr[i]," ",arr[j],"\n"
    if ((arr[i] != arr[j]) and m.include?(arr[i] + arr[j]))
       print " removing case1: ",arr[i]," ",arr[j],"\n"
      arr.delete_at(i)
      arr.delete_at(j-1)
      guards-=2
      j = 1
      i = 0
    # elsif ((arr[i] != arr[j]) and m.include?((arr[i].to_f+arr[j].to_f)/arr[i]))
    #    print " removing case2: ",arr[i]," ",arr[j],"\n"
    #   arr.delete_at(i)
    #   arr.delete_at(j-1)
    #   guards-=2
    #   j = 1
    #   i = 0
    else
      j+=1
    end
    if j == arr.length
      i+=1
    end
  end
  if(j == arr.length and i == arr.length-1)
    break
  end
end
print "guards: ", guards , " arr: ", arr
