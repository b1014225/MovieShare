class UserController < ApplicationController


def add
  @user=User.new
end

def create
  @user=User.new
  #file=params[:image]
  #file_name=file.original_filename
  #if !file.nil?
    #file_name = file_name.kconv(Kconv::SJIS, Kconv::UTF8)
    #File.open("public/user_images/#{file_name}",'wb'){ |f| f.write(file.read) }
    #@user.image=file_name
  #end
  @user.name=params[:name]
  @user.email=params[:email]
  @user.save
  if @user.save
  redirect_to user_show_path
else
  render:add
end
end

def show
  @user=User.all
end

def show_detail
  @user=User.find(params[:id])
  @texts=Text.where(user_id:@user.id)
end

end
