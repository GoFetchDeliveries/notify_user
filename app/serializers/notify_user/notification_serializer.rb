class NotifyUser::NotificationSerializer < ActiveModel::Serializer
  require 'cgi'
  root :notifications

  attributes :id, :type, :message, :read, :params, :created_at

  def message
    NotifyUser::ChannelPresenter.present(object)
  end

  def read
    object.read?
  end
end