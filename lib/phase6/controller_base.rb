require_relative '../phase5/controller_base'

module Phase6
  class ControllerBase < Phase5::ControllerBase
    # use this with the router to call action_name (:index, :show, :create...)


    def invoke_action(name)
      self.send(name)
    end
  end

  def create_flash
    @flash = Flasher::Flash.new
    @flash.build_from_cookie(session)
  end


end
