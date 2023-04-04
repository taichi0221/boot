class BootstrapsController < ApplicationController

  #require 'openai'

  def index
    if params[:prompt].present?
    client = OpenAI::Client.new(api_key: ENV["OPENAI_API_KEY"])

      response = client.completions(
        engine: 'davinci',
        prompt: params[:prompt],
        max_tokens: 5
      )

      @generated_text = response.choices[0].text
    end
  end

  def ask
    prompt = params[:prompt]
    response_text = generate_response(prompt)
    render json: { response: response_text }
  end
  

  def new
  end

  def create
  end
  
end
