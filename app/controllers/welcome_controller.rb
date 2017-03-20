class WelcomeController < ApplicationController
  def index
    @homeworks = ["Science", "History", "Math", "Design", "Painting", "Singing"]
    @hwcontent = ["Finish Lab", "Finish Martin Luther", "Finish p.284", "Design this", "Paint that", "Sing this"]
  end

  def detail
  end
end
