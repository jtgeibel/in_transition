authorization do
  role :guest do
    has_permission_on :initiatives, :to => :read
    has_permission_on :work_groups, :to => :read
  end
  role :user do
    includes :guest
    has_permission_on :initiatives, :to => :manage
    has_permission_on :work_groups, :to => :manage
    has_permission_on :authorization_rules, :to => :read
    has_permission_on :authorization_usages, :to => :read
  end
end

privileges do
  privilege :manage, :includes => [:create, :read, :update, :delete]
  privilege :read, :includes => [:index, :show]
  privilege :create, :includes => :new
  privilege :update, :includes => :edit
  privilege :delete, :includes => :destroy
end
