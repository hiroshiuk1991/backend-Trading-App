class InvestorsController < ApplicationController

    def index
        investor =Investor.all 
        render json: investor
    end 

    def show 
        investor = Investor.find(params[:id])
        render json: {id: investor.id, name: investor.name, email: investor.email, password: investor.password}
    end 

    def create
        investor = Investor.create(investor_params)
        render json: {investor_name: investor.name, investor_id: investor.id, token:issue_token({id: investor.id})}
    end 

    def destroy
        Investor.destroy(params[:id])
    end 

    def update
        investor = Investor.find(params[:id])
    end 

    def fetchinvestorportfolio
        investor = get_current_investor
        render json: investor.portfolio
    end 


    def login
        investor = Investor.find_by(name: params[:investor][:name])

        if investor and investor.authenticate(params[:investor][:password])

            render json: {investor_name: investor.name, investor_id: investor.id, token:issue_token({id: investor.id})}
        else 

            render json: {error: 'Investor name/password invalid'}, status: 403
        end 
    end 

    def validate 
        investor = get_current_investor
        if investor
            render json:{investor: investor.name, token:issue_token({id: investor.id})}
        else
            render json: {error: 'Not Authorized'}, status: 401
        end 
    end 

    private 

    def investor_params
        params.require(:investor).permit(:username, :password)
    end 

end
