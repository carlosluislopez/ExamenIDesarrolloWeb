class SongsController < ApplicationController
	def new
		@album = Album.find(:album_id)
		@song = Song.new(@album)
	end

	def create
		@album = Album.find(params[:album_id])
		@song = @album.songs.create(song_params)

		if @song.save
			redirect_to album_path(:album_id), flash: {notice: "Cancion creada exitosamente"}
		else
			render :new
		end
	end

	def destroy
		@song = Song.find(:id)

		if @song.destroy
			redirect_to album_path(:album_id), flash: {notice: "Cancion eliminada exitosamente"}
		else
			render :new
		end	

private
  	def song_params
  		params.require(:song).permit!
  	end
	end

end
