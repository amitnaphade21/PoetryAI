# import google.generativeai as genai
import google.generativeai as genai
# from langchain_google_genai import ChatGoogleGenerativeAI
from langchain.prompts import PromptTemplate
from dotenv import load_dotenv
import os
load_dotenv()

api_key = os.getenv("GENERATIVEAI_API_KEY")
genai.configure(api_key=api_key)

generation_config = {
    "temperature": 0.9,
    "top_p": 0.5,  # Focus on high probability words, but allow some variation
    "top_k": 5,     # Consider top 5 most probable words at each step
    "max_output_tokens": 1000,  # Maximum number of tokens to generate
}


chat = None

def chatbot(text, isNew = False):
    model = genai.GenerativeModel(model_name="gemini-pro",
                                generation_config=generation_config)
    global chat
    
    if isNew:
        chat = model.start_chat()
        chat.send_message("Act like your are a poet generate poetries according to prompts.")
        response = chat.send_message(text)
        return response.text
    else:
        response = chat.send_message(text)
        return response.text