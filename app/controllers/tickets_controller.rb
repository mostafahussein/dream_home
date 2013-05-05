class TicketsController < ApplicationController
  
  def property
    @property
  end
  
  def property_attributes = (attributes)
    # Process the attributes hash
  end
end



































 # def new
 #   @ticket = Ticket.new
 #   @property = Property.where('ticket_id is NULL').limit(4)
 # end
  
#  def edit
 #   @ticket = Ticket.find(params[:id])
#    @property = Property.where('ticket_id = #{@ticket.id} OR ticket_id IS NULL').order('computer_id DESC').limit(4)
#  end
  
#  def create
#    @ticket = Ticket.new(params[:ticket])
#    if @ticket.save
#      flash[:success] = "Property Booked!"
#     redirect_to root_path
#    else
#      render 'new'
#    end
#  end



