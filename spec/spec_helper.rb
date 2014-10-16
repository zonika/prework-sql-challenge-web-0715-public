require 'base64'

RSpec.configure do |config|
  config.before(:each) do 
    encoded_answers = "Q1JFQVRFIFRBQkxFIGNhdHM7LCBTRUxFQ1QgKiBGUk9NIGNhdHM7LCBTRUxF\nQ1QgQ09VTlQoKikgRlJPTSBjYXRzOywgU0VMRUNUIG5hbWUgRlJPTSBjYXRz\nIFdIRVJFIGlkPTI7LCBVUERBVEUgY2F0cyBTRVQgYWdlPTcgV0hFUkUgaWQ9\nMTssIFNFTEVDVCAqIEZST00gY2F0cyBPUkRFUiBCWSBhZ2U7LCBERUxFVEUg\nRlJPTSBjYXRzIFdIRVJFIGlkPTQ7LCBEUk9QIFRBQkxFIGNhdHM7\n"
    decoded_answers = Base64.decode64(encoded_answers)

    @answers = decoded_answers.split(", ")
  end

  def is_correct(student_answer, index)
    @answers[index] == student_answer ? true : false
  end
end