import { GoogleGenAI } from "@google/genai";
import { readFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const systemInstruction = readFileSync(
  join(__dirname, "..", "prompts", "gemini-system-instruction.md"),
  "utf8",
);

const ai = new GoogleGenAI({});

const response = await ai.models.generateContent({
  model: "gemini-2.5-flash",
  contents: "Napoleon, advise me on commanding a divided army.",
  config: {
    systemInstruction,
  },
});

console.log(response.text);
