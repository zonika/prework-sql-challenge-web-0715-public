require 'base64'

RSpec.configure do |config|
  encoded_answers = "Q1JFQVRFIFRBQkxFIGNhdHM7LCBTRUxFQ1QgKiBGUk9NIGNhdHM7LCBTRUxF\nQ1QgQ09VTlQoKikgRlJPTSBjYXRzOywgU0VMRUNUIG5hbWUgRlJPTSBjYXRz\nIFdIRVJFIGlkPTI7LCBVUERBVEUgY2F0cyBTRVQgYWdlPTcgV0hFUkUgaWQ9\nMTssIFNFTEVDVCAqIEZST00gY2F0cyBPUkRFUiBCWSBhZ2U7LCBERUxFVEUg\nRlJPTSBjYXRzIFdIRVJFIGlkPTQ7LCBEUk9QIFRBQkxFIGNhdHM7\n"
  decoded_answers = Base64.decode64(encoded_answers)

  answers = decoded_answers.split(", ")

  answers.each_with_index do |answer, index|
    define_method("answer_#{index+1}") do 
      answer
    end
  end
end