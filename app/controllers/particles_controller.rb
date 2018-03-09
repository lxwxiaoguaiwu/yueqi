class ParticlesController < ApplicationController

  def show
    @particle = Particle.find(params[:id]);
    @peerurls = Peerurl.limit(32);
  end

end
