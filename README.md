👨‍⚕️ AI-Powered Medical Chatbot
A conversational AI application designed to answer medical questions based on a specialized knowledge base. This project leverages Large Language Models (LLMs) and Retrieval-Augmented Generation (RAG) to provide informative and contextually relevant responses.

✨ [[Live Demo Link Here](https://medical-chatbot-eivx.onrender.com)] ✨
📖 About The Project
This Medical Chatbot provides a user-friendly web interface where users can ask health-related questions. The backend is powered by the LangChain framework, which orchestrates the entire process of retrieving relevant information from a specialized document set and generating a human-like answer.

The core of this project is its RAG architecture. Medical documents (PDFs) are processed, broken down into chunks, and stored as vector embeddings in a Pinecone vector database. When a user asks a question, the system first searches the Pinecone database for the most relevant text chunks and then feeds that context, along with the user's question, to a powerful LLM (Groq) to generate a comprehensive and accurate answer.

🚀 Key Features
Conversational Interface: A simple and intuitive chat UI built with Flask.

Retrieval-Augmented Generation (RAG): Provides answers based on a specific set of medical documents, reducing hallucinations and improving accuracy.

Vector Search: Uses Pinecone's high-performance vector database for efficient similarity searches.

Fast Inferencing: Leverages the Groq LPU™ Inference Engine for real-time, low-latency responses from the LLM.

Cloud Deployment: The application is deployed and hosted on Render for public access.

🛠️ Tech Stack
Backend: Python, Flask

AI Framework: LangChain

LLM Provider: Groq (using Llama 3)

Vector Database: Pinecone

Embeddings Model: Hugging Face sentence-transformers/all-MiniLM-L6-v2

Deployment: Render

⚙️ Setup and Local Usage
To run this project on your local machine, follow these steps:

Clone the repository:

git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name

Create a Conda environment and install dependencies:

conda create -n medibot python=3.10 -y
conda activate medibot
pip install -r requirements.txt

Set up environment variables:

Create a .env file in the root directory.

Add your secret keys to this file:

PINECONE_API_KEY="YOUR_PINECONE_API_KEY"
GROQ_API_KEY="YOUR_GROQ_API_KEY"

Load data into Pinecone:

Place your medical PDF documents into the data/ directory.

Run the store_index.py script to process the PDFs and load them into your Pinecone index.

python store_index.py

Run the Flask application:

flask run

Open your browser and navigate to http://127.0.0.1:5000 to interact with the chatbot.