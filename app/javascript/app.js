// app/javascript/app.js

document.addEventListener('DOMContentLoaded', () => {
  const chatForm = document.getElementById("chat-form");
  const chatInput = document.getElementById("chat-input");
  const chatOutput = document.getElementById("chat-output");

  chatForm.addEventListener("submit", async (event) => {
    event.preventDefault();

    const userMessage = chatInput.value.trim();

    if (userMessage === "") return;

    chatOutput.innerHTML += `<div>あなた: ${userMessage}</div>`;
    chatInput.value = "";

    // 以下の部分はサーバーサイドとの連携が必要です
    // const response = await generate_response(userMessage);

    // ここではダミーレスポンスを使用します
    const response = "これはダミーのAIレスポンスです。";

    chatOutput.innerHTML += `<div>チャットボット: ${response}</div>`;
  });
});
