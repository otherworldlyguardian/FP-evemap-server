class MapController < ApplicationController
  def update
    user = User.find(token_user_id)
    user.maps[0].connections.destroy_all
    params['eve']['sysList'].each do |sys|
      Connection.create(map: user.maps[0], sys_name: sys['name'], p_sys_name: sys['connection'])
    end
    user.save
  end
end
