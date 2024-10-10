class OllamaService
  def initialize
    @client = create_client()
  end

  def generate_property_description(property_details)
    prompt = "Generate a detailed description for a property with the following details: #{property_details}."

      response = @client.generate({ model: "llama3.1", prompt: prompt, stream: false })
    response
  end

  def generate_property_image(property_details)
    prompt = "Generate an image for a property with the following details: #{property_details}."

      response = Ollama::Client.new.chat(prompt: prompt)
    response["image_url"]
  end

  private

  def create_client
    Ollama.new(
      credentials: { address: "http://localhost:11434" },
      options: { server_sent_events: true }
    )
  end
end
