class WelcomeController < ApplicationController
  def index_array
    @homeworks = ["Science", "ESL SKILLS", "ESL History", "Math", "ESL Literature"]
    @teachers = ["Mrs. Mandl", "Ms. Dufresne", "Mr. Budd", "Mr. Perreault", "Ms. Keech"]
    @hwcontent = ["Finish P. 283 and answer lab sheet", "Review your speeches and say out loud with the dorm parent.", "Read 3.1 and answer questions", "Finish 6-3 Form G", "Read the rest of Chapter 6."]
  end

  def index_hash
    @homeworks = [
      {
        "subject" => "Science",
        "teacher" => "Mrs. Mandl",
        "content" => "Finish P. 283 and answer lab sheet"
      },
      {
        "subject" => "ESL Skills",
        "teacher" => "Ms. Dufresne",
        "content" => "Review your speeches and say out loud with the dorm parent."
      },
      {
        "subject" => "ESL History",
        "teacher" => "Mr. Budd",
        "content" => "Read 3.1 and answer questions"
      },
      {
        "subject" => "Math",
        "teacher" => "Mr. Perreault",
        "content" => "Finish 6-3 Form G"
      },
      {
        "subject" => "ESL Literature",
        "teacher" => "Ms. Keech",
        "content" => "Read the rest of Chapter 6."
      }
    ]
  end
  
  def index_db
    @homeworks = Homework.all
  end
  
  def create_homework
    Homework.create(
      subject: params[:subject],
      teacher: params[:teacher],
      content: params[:content],
      url: params[:url],
    )
    
    redirect_to :back
  end

  def delete_homework
    Homework.find(params[:id]).destroy
    
    redirect_to :back
  end
  
  def delete_all
    Homework.all.destroy
    
    redirect_to :back
  end
end
