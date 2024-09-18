<?php 
include 'partials/header.php'
?>
<section class="empty__page">
    <h1>Contact Page</h1>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <style>
        /* Scoped styles for the contact form to avoid conflicts */
        .contact-form-wrapper {
            max-width: 800px;
            padding: 20px; /* Increased padding */
            margin: 40px auto;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 15px;
        }

        .contact-form-wrapper h2 {
            text-align: center;
            color: #333;
            margin-bottom: 10px; /* Increased margin */
        }

        .contact-form-wrapper .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .contact-form-wrapper .form-group label {
            width: 30%;
            text-align: right;
            color: #444;
            padding-right: 10px;
        }

        .contact-form-wrapper .form-group input,
        .contact-form-wrapper .form-group textarea {
            flex: 1; /* Flex for responsive layout */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px; /* Increased border radius */
            margin-bottom: 10px;
        }

        .contact-form-wrapper .form-group textarea {
            height: 100px; /* Shorter textarea */
        }

        .contact-form-wrapper button {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .contact-form-wrapper button:hover {
            background-color: #45a049;
        }

        /* Ensure the button is centered */
        .contact-form-wrapper .button-wrapper {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="contact-form-wrapper">
        <h2>Contact Us</h2>
        <form action="/send_contact" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" placeholder="Your name" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Your email" required>
            </div>

            <div class="form-group">
                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" placeholder="Subject" required>
            </div>

            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" placeholder="Your message" required></textarea>
            </div>

            <div class="button-wrapper"> <!-- Center-align the button -->
                <button type="submit">Send</button>
            </div>
        </form>
    </div>
</body>
</html>


</section>

<?php
include './partials/footer.php';
?>