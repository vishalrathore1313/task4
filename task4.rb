
def show()
# arr=[12,23,2,1,53,12,34,2,54];
# arr=[1,7,2,4,9,1];
# arr=[5,5,10,100,10,5,20];
arr=[5,5,10,100,100,100,10,5,20];


len=arr.length

store=Array.new(len);

store[0]=arr[0];
store[1]=arr[1];


(2..len).each do |i|

  store[i]=[store[i-1],arr[i].to_i+store[i-2].to_i].max

end 
return store[len-1]
end

ans=show();
puts "#{ans}"