class TestController < ApplicationController
  def index
  end

  def text_only
    TestMailer.text_only.deliver
    redirect_to :root
  end

  def text_with_attachment
    TestMailer.text_with_attachment.deliver
    redirect_to :root
  end

  def multipart
    TestMailer.multipart.deliver
    redirect_to :root
  end

  def multipart_with_attachments
    TestMailer.multipart_with_attachments.deliver
    redirect_to :root
  end

end
