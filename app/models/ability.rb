class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.user_access? "admin"
        can :manage, :all
    else
      can :create, User
      can :edit, User do |u|
          u.id == user.id
        end
      can :read, User do |u|
          u.id == user.id
        end
      # can :update, User do |u|
      #     u.id == user.id
      #   end
      can :read, Site
      can :read, Classroom
      can :read, Course
      can :read, Announcement
      can :create, Enrollment
      can :destroy, Enrollment do |e|
          e.user_id == user.id
        end
      can :manage, EnrolledUserComment do |c|
         c.enrollment.user_id == user.id
      end

  end



end
end
