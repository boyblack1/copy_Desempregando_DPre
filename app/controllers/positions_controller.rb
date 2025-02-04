class PositionsController < ApplicationController
  before_action :set_company, :set_i18n_careers, :set_i18n_contracts, except: [:public_position]
  before_action :set_position, only: [:edit, :show, :update]
  def index
    @positions = @company.positions
  end

  def new
    @position = @company.positions.new
  end

  def edit
  end

  def show
  end

  def create
    @position = @company.positions.new(params_position)
    if @position.save
      flash[:success] = 'Vaga cadastrada com sucesso'
      redirect_to positions_path
    else
      render :new
    end
  end

  def update
    if @position.update(params_position)
      redirect_to positions_path
    else
      render :edit
    end
  end

  def public_position
    @position = Position.find_by(slug: params[:slug])
    @applicant = current_user.applicants.new(position_id: @position.id) if user_signed_in?

    respond_to do |format|
      format.html
      format.js { render partial: 'applicants/new' }
    end
  end

  def public_position
    UserPosition.create(user_id: current_user.id, position_id: params["slug"])
    redirect_to root_path
  end

  private

  def set_position
    @position = @company.positions.find(params[:id])
  end

  def params_position
    params.require(:position).permit(:name, :career, :contract, :remote, :publish, :city, :state, :summary, :description, :full_time)
  end

  def set_company
    redirect_to new_company_path if current_user.company.nil?
    @company = current_user.company
  end

  def set_i18n_careers
    @careers = I18n.t('activerecord.attributes.position.careers')
  end

  def set_i18n_contracts
    @contracts = I18n.t('activerecord.attributes.position.contracts')
  end
end
