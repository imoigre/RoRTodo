class GroupsController < ApplicationController
  before_action :require_user

  def index
    @group = Group.new
    @groups = Group.all
  end

  def create
  #  @group = current_user.groups.create(group_params)
    return if @group.invalid?
    @group.save
    redirect_to :root
  end

  def update
    group.update(update_group_params)
    head 200
  end

  def destroy
    Group.delete(params[:id])
    redirect_to :root
  end

  private

  def group
    @group ||= current_user.groups.find(params[:id])
  end

  def update_group_params
    params.require(:group).permit(:status)
  end

  def group_params
    params.require(:group).permit(:title, :description, :expire_at, :status)
  end
end
