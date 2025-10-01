class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def new
  @student = Student.new #formヘルパーのデータの入れ物になる
end
def create
    @student = Student.new(name: params[:student][:name], number: params[:student][:number],maile: params[:student][:maile])
  if @student.save
    flash[:notice] = '１レコード追加しました'
    redirect_to '/'
     else
        render 'new', status: :unprocessable_entity
    end#=>一覧ページにリダイレクトする
end
def destroy
  student = Student.find(params[:id])
  student.destroy
  redirect_to '/'
end
def show
  @student = Student.find(params[:id])
end
def edit
  @student = Student.find(params[:id])
end
def update
  student = Student.find(params[:id])
  student.update(name: params[:student][:name],number: params[:student][:number],maile: params[:student][:maile])
  redirect_to '/'
end
end
