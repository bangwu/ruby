class Customer
  @@no_of_customers=0
  def initialized(id,name,addr)
    @cust_id=id
    @cust_name=name
    @cust_addr=addr
  end
end
