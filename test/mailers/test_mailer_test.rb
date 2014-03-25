require 'test_helper'

class TestMailerTest < ActionMailer::TestCase
  test "text_only" do
    mail = TestMailer.text_only
    assert_equal "Text only", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "multipart" do
    mail = TestMailer.multipart
    assert_equal "Multipart", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "text_with_attachment" do
    mail = TestMailer.text_with_attachment
    assert_equal "Text with attachment", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "multipart_with_attachments" do
    mail = TestMailer.multipart_with_attachments
    assert_equal "Multipart with attachments", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
