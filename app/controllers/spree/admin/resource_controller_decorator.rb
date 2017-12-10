Spree::Admin::ResourceController.class_eval do
  def new
    invoke_callbacks(:new_action, :before)
    respond_with(@object) do |format|
      format.html { render layout: !request.xhr? }
      format.js   { render layout: false } if request.xhr?
    end
  end
end