module Spree
  class FormsController < Spree::BaseController

    def new
      @form = Form.new
    end

    def create
      @form = Form.new(params[:form])
      @form.request = request
      if @form.deliver
        flash[:notice] = "Your message sent successfully"
      else
        flash.now[:error] = "Message could not be sent. Try again later"
        render new_form_path
      end
    end
  end
end
