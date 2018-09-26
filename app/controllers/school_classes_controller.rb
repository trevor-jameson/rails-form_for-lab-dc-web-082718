class SchoolClassesController < ApplicationController

  def index
    @school_classs = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to "/school_classes/#{@school_class.id}"
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    if !@school_class
      @school_class.update(school_class_params(:title, :room_number))
    end
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
