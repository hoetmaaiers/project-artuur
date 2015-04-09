class RequestsController < ApplicationController
  def create
    request = Request.new(request_params)
    if params['context'] == 'on_request'
      context = :request
    else
      context = nil
    end

    puts "context"
    puts context

    if request.save(context: context)
      render json: {message: 'succesfully created a new request', request: request}, status: 201
    else
      render json: {errors: request.errors, full_messages: request.errors.full_messages}, status: :unprocessable_entity
    end
  end

private
  def request_params
    params.require(:request).permit(:first_name, :last_name,
                                    :contact_email, :contact_first_name, :contact_last_name,
                                    :organization_name,
                                    :street, :nr, :town, :postal_code,
                                    :workshop_date)
  end
end
