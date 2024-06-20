from fastapi import FastAPI
from transformers import pipeline

## create a new FastAPI app instance
app = FastAPI()

# Initialize the text generation pipeline

pipe = pipeline("text2text-generation", model="fanzru/t5-small-finetuned-xsum")

@app.get("/")
def home():
    return {"message": " Hello WOrld "}

# Define a function to handle the GET request at `/generate`

@app.get("/generate")
def generate(text:str):
    ## use teh pipeline to generate text from given input text
    output= pipe(text)
    
    ## return the generated text in Json response
    return {"output":output[0]['generated_text']}