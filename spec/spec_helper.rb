require 'base64'
require 'json'

RSpec.configure do |config|
  
  encoded_answers = "eyIxIjoiQ1JFQVRFIFRBQkxFIGNhdHM7IiwiMiI6IlNFTEVDVCAqIEZST00g\nY2F0czsiLCIzIjoiU0VMRUNUIENPVU5UKCopIEZST00gY2F0czsiLCI0Ijpb\nIlNFTEVDVCBuYW1lIEZST00gY2F0cyBXSEVSRSBpZCA9IDI7IiwiU0VMRUNU\nIG5hbWUgRlJPTSBjYXRzIFdIRVJFIGlkPTI7Il0sIjUiOlsiVVBEQVRFIGNh\ndHMgU0VUIGFnZSA9IDcgV0hFUkUgbmFtZSA9IFwiTWFydVwiOyIsIlVQREFU\nRSBjYXRzIFNFVCBhZ2U9NyBXSEVSRSBuYW1lPVwiTWFydVwiOyJdLCI2Ijoi\nU0VMRUNUICogRlJPTSBjYXRzIE9SREVSIEJZIGFnZTsiLCI3IjpbIkRFTEVU\nRSBGUk9NIGNhdHMgV0hFUkUgaWQgPSA0OyIsIkRFTEVURSBGUk9NIGNhdHMg\nV0hFUkUgaWQ9NDsiXSwiOCI6IkRST1AgVEFCTEUgY2F0czsifQ==\n"
  json = Base64.decode64(encoded_answers)
  answers = JSON.parse(json)

  binding.pry
  answers.each do |index, ans|
    define_method("answer_#{index}") do 
      ans
    end
  end

end

def __
  raise 'Replace the underscore with your answer in "quotes"'
end
