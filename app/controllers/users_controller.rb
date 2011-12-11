class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.where(:email => params[:user][:email]).limit(1).first
    @user ||= User.new(params[:user])
    @user.token ||= UUID.new.generate

    # send an email or something
    InviteMailer.send_invite(@user).deliver

    respond_to do |format|
      if @user.save
        format.html { redirect_to '/invite', notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def workout
    @user = User.find_by_token(params[:token])
    @workout = Workout.find_by_date(Time.new.to_date)
    @stats_count = Stat.where(:user_id => @user.id, :workout_id => @workout.id).count

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def results
    # handle save
    @user = User.find_by_token(params[:token])
    @workout = Workout.find_by_date(params[:date])

    workout_type_ids = params[:workout_type_ids]
    reps = params[:reps]
    weights = params[:weight]

    @workout.workout_items.each do |workout_item|
      index = workout_item.workout_type.id.to_s
      stat = Stat.new(
        :user_id => @user.id,
        :workout_id => @workout.id,
        :workout_type_id => index,
        :reps => reps[index].to_i,
        :weight => weights[index].to_i
      )
      stat.save
    end

    redirect_to "/" + @user.token
  end
end
