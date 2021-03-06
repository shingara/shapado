class GroupsWidget < Widget
  before_validation_on_create :set_name

  def recent_groups
    Group.all(:limit => 5, :order => "activity_rate desc", :state => "active")
  end


  protected
  def set_name
    self[:name] ||= "groups"
  end
end
