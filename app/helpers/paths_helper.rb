module PathsHelper

  def format_path( user )
    if current_user.role? :learner
      company_learner_path( user.company, user )
    elsif current_user.role? :company
      user
    end
 
  end
end
