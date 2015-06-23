json.array!(@faqs) do |faq|
  json.extract! faq, :id, :question, :answer, :category, :active
  json.url faq_url(faq, format: :json)
end
