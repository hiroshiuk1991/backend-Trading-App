class QuizScoresController < ApplicationController

def index
    quizscore = QuizScore.all 
    render json: quizscore
end 

def show
    quizscore = QuizScore.find(paras[:id])
    render json: quizscore
end 

def create
    quizscore = QuizScore.create(QuizScore_params)
    render json: quizscore 
end

private 

def QuizScore_params
    params.require(:quizscore).permit(:score, :investor_id)
end 


end
