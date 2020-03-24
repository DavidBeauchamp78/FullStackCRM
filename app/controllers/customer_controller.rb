class CustomerController < ApplicationController
    def index
        @customers = Customer.all
    end
    def alphabetized
        @customers = Customer.order(name: :desc)
    end
    def missing_email
        @customers = Customer.where("email_address = ''")
    end
end
