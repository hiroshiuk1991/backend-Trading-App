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
    quizscore = QuizScore.create(quizscore_params)
    render json: quizscore 
end

private 

def quizscore_params
    params.permit(:score, :investor_id)
end 


end
