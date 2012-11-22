class Order < ActiveRecord::Base

  # Associations
  has_many   :line_items, :dependent => :destroy
  belongs_to :account

  # Callbacks
  before_validation :on => :create do set_state( 'created' ) end 
  after_create      :initial_dummy
  
  attr_accessible   :state

  def completed?
    self.state == 'complete'
  end
  
  def get_owner
    owner = User.find_by_id( account.accountable.id )    
  end
  
  # THIS METHOD IS VERY TEMPORARY!!!
  def get_users
    owner = get_owner()
    users = owner.learners.where( "status = ?", 'staged' )
  end

  def get_line_items
    line_items
  end

  def get_line_items_for_user( user )
    line_items_for_user = line_items.where( "user_id = ?", user.id )    
  end
    
  def format_for_checkout
    users = get_users
    formatted_hash = {}
    
    users.each do |user|
      line_items_for_user = get_line_items_for_user( user )
      formatted_hash[user] = line_items_for_user
    end
    
    formatted_hash
  end

  private
  def set_state( state )
    self.state = state
  end


  def initial_dummy
    learners = Company.first.learners.where( "status = ?", 'staged' )
    learners.each do |learner|
      line_item = LineItem.new
      line_item.user = learner
      line_item.product = Product.first
      self.line_items << line_item
    end
  end
end
