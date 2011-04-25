class ProductsController < ApplicationController
  def create
    @consumer = Consumer.find(params[:consumer_id])
    @product = @consumer.products.create!(params[:product])
    
    #@product.consumer_id = params[:consumer_id]
    #@product = Product.new(params[:product])
    redirect_to @consumer
  end

  def destroy
     @consumer = Consumer.find(params[:consumer_id])
     @product = Product.find(params[:id])
     @product.destroy
 
     respond_to do |format|
       format.html { redirect_to @consumer }
       format.xml  { head :ok }
     end
   end
  
  def update
    @consumer = Consumer.find(params[:consumer_id])
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to(@consumer, :notice => 'Consumer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @consumer.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @consumer = Consumer.find_by_id(params[:consumer_id])
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

end
