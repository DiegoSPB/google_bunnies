# a =10125
# b = 675
#
# (1..300).each do
#   if a == b
#     p "got it"
#     break
#   end
#   if a < b
#     b = b - a
#     a = a + a
#   else
#     a = a - b
#     b = b + b
#   end
# end

#
# arr = [1, 7, 3, 21, 13, 19]
# if x + y == 2**n
# if x + y == x(2**n)

arr = [1, 7,2, 3, 21,1, 13, 19,5,14]
guards = arr.length().floor()
found = false
m =[2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536,131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432,67108864,134217728,268435456,536870912]
j=0
for i in 0...arr.length do
  if guards == 0 or arr.length==1
    break
  end
   p arr
  j=i+1
  for x in j..arr.length do
    if(arr[j]==nil)
      break
    end
    print "testing: ",arr," ", arr[i]," ",arr[j],"\n"
    if ((arr[i] != arr[j]) and m.include?(arr[i] + arr[j]))
       print " removing case1: ",arr[i]," ",arr[j],"\n"
      arr.delete_at(i)
      arr.delete_at(j-1)
      guards-=2
      j = 1
      i = 0
    elsif ((arr[i] != arr[j]) and m.include?((arr[i].to_f+arr[j].to_f)/arr[i]))
       print " removing case2: ",arr[i]," ",arr[j],"\n"
      arr.delete_at(i)
      arr.delete_at(j-1)
      guards-=2
      j = 1
      i = 0
    end
  end
end
print "guards: ", guards
