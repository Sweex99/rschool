class Account::ClassRoomsController < Account::AccountController
  before_action :set_class_rooms, only: [:index, :show]

  def index; end
  
  def show
    @class_rooms.find_by(id: params[:id])
  end

  def new
    @class_room = ClassRoom.new
  end

  def create
    @class_room = ClassRoom.new(organization_params)

    if current_user.class_rooms << @class_room
      redirect_to [:account, @class_room] 
    else
      render :new
    end
  end

  def edit
    @class_room = ClassRoom.new
  end

  def update
    class_room = @class_rooms.find(params[:id])
    if class_room.update(class_room_params)
      redirect_to [:account, class_room]
      flash[:success] = 'Content successfully updated.'
    else
      flash[:danger] = 'Failed to update content.'
      render :edit
    end
  end

  def destroy
    class_room = @class_rooms.find(params[:id])
    if class_room.destroy
      flash[:success] = 'Content successfully deleted.'
    else
      flash[:danger] = 'Failed to delete content.'
    end
    redirect_to account_class_rooms_path
  end

  protected

  def set_class_rooms
    @class_rooms ||= current_user.class_rooms
  end

  def class_room_params
    params.require(:class_room).permit(:title, :description)
  end
end
