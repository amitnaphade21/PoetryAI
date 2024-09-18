<?php 
include 'partials/header.php'
?>

<section class="empty__page">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chatbot Poetry Generator</title>
<style>

.chatbot-container {
    max-width: 600px;
    margin: 20px auto;
    padding: 20px;
    background-color: #5621E3;
    border: 1px solid #ccc;
    border-radius: 10px;
}

.chatbot-chat-window {
    border: 1px solid #ccc;
    border-radius: 10px;
    height: 240px;
    overflow-y: auto;
    padding: 10px;
    background-color: #000000;
}

.chatbot-message {
    margin-bottom: 10px;
    padding: 10px;
    border-radius: 10px;
}

.chatbot-user-message {
    background-color: white;
    text-align: left;
}

.chatbot-bot-message {
    background-color: white;
    text-align: left;
}

.chatbot-input-area {
    margin-top: 10px;
    display: flex;
}

.chatbot-input-area input {
    flex: 1;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 10px;
}

.chatbot-input-area button {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 10px;
    background-color: #4CAF50;
    color: white;
    cursor: pointer;
    margin-left: 10px;
}

    </style>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const chatWindow = document.querySelector('.chatbot-chat-window');
            const inputField = document.querySelector('.chatbot-input-area input');
            const sendButton = document.querySelector('.chatbot-input-area button');

            function appendMessage(text, isBot = false) {
                const messageDiv = document.createElement('div');
                messageDiv.classList.add('message');
                messageDiv.classList.add(isBot ? 'bot-message' : 'user-message');
                messageDiv.textContent = text;
                chatWindow.appendChild(messageDiv);
                chatWindow.scrollTop = chatWindow.scrollHeight;
            }

            sendButton.addEventListener('click', () => {
                const text = inputField.value.trim();
                if (text === '') {
                    return;
                }

                appendMessage(text, false); // User message
                inputField.value = '';

                fetch('http://127.0.0.1:5000/chatbot', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ text, isNew: false })
                })
                .then(response => response.json())
                .then(data => {
                    appendMessage(data.response, true); // Bot message
                })
                .catch(error => {
                    appendMessage('Error: ' + error.message, true);
                });
            });

            inputField.addEventListener('keydown', (e) => {
                if (e.key === 'Enter') {
                    sendButton.click();
                }
            });
        });
    </script>
</head>
<body>
        <div class="chatbot-container">
        <h1>Poetry Chatbot</h1>
        <div class="chatbot-chat-window">
            <!-- Messages will be appended here -->
        </div>
        <div class="chatbot-input-area">
            <input type="text" placeholder="Type your message..." />
            <button>Send</button>
        </div>
    </div>
</body>
</html>
</section>

<?php
include './partials/footer.php';
?>
