require_relative '../phase3/controller_base'
require_relative './session'
require_relative '../bonus/flash.rb'

module Phase4
  class ControllerBase < Phase3::ControllerBase
    attr_reader :flash

    def redirect_to(url)
      super
      flash.write_to_cookie(session)
      session.store_session(res)
    end

    def render_content(content, content_type)
      super
      flash.write_to_cookie(session)
      session.store_session(res)
    end

    # method exposing a `Session` object
    def session
      @session ||= Session.new(req)
      @session
    end



  end
end
