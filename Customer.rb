class Customer
  @@no_of_customers=0
  def initialized(id,name,addr)
    @cust_id=id
    @cust_name=name
    @cust_addr=addr
  end
  def display_details()
    puts "Customer id #@cust_id"
    puts "Customer_name #@cust_name"
    puts "Customer_address #@cust_addr"
  end
end
