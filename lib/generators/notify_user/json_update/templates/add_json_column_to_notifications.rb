class AddJsonColumnToNotifications < ActiveRecord::Migration
  def up
  	add_column :notify_user_notifications, :json, :json
  end

  def down
  	remove_column :notify_user_notifications, :json
  end
end
