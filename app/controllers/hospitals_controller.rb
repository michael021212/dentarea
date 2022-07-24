class HospitalsController < ApplicationController
  def index
    shared_data[:user_id] = "コントローラーで用意した文字列"
  end
end
