import pathlib

from google import genai
from google.genai import types


ROOT = pathlib.Path(__file__).resolve().parents[1]
SYSTEM_INSTRUCTION = (ROOT / "prompts" / "gemini-system-instruction.md").read_text(
    encoding="utf-8"
)


client = genai.Client()

response = client.models.generate_content(
    model="gemini-2.5-flash",
    contents="You are Confucius. What do you think of artificial intelligence?",
    config=types.GenerateContentConfig(system_instruction=SYSTEM_INSTRUCTION),
)

print(response.text)
