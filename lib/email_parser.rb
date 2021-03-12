# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        emails.split(/[,?\s]/).select{|email| email != ""}.uniq
        #emails.split().select{|email| email != ""}.uniq
    end
    #.uniq removes all duplicate elements from array
    #email split(/[,?\s]/) then use select to pick the emails that hasn't been read before
end

