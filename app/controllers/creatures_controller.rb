class CreaturesController < ApplicationController

	#GET / and /creatures
	def index
		@creatures = Creature.all.order('created_at DESC').all
		render :index
	end

	# #GET /creatures/new
	# def new
	# 	render :new
	# end

	#POST /creatures
	def create
		creature_params = params.require(:creature).permit(:name, :description)
		@creature = Creature.new(creature_params)
		if @creature.save
			redirect_to creatures_path
		end
	end

	#GET /creatures/:id
	def show
		id = params[:id]
		@creature = Creature.find(id)
	end

	#GET /creatures/:id/edit
	def edit
		id = params[:id]
		@creature = Creature.find(id)
	end

	#PUT /creatures/:id
	def update
		creature_id = params[:id]
		@creature = Creature.find(creature_id)

		#get updated data
		updated_attributes = params.require(:creature).permit(:name, :description)
		#update the creature 
		@creature.update_attributes(updated_attributes)

		#redirect to show
		redirect_to @creature
	end

	#DELETE /creatures/:id
	def destroy
		id = params[:id]
		creature = Creature.find(id)
		creature.destroy
		redirect_to creatures_path
	end

end
