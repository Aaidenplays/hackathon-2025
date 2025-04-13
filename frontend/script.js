import env from './env.js';

async function query(data) {
    const response = await fetch(
        `http://localhost:3000/api/v1/prediction/${env.PREDICTION_ID}`,
        {
            headers: {
                "Content-Type": "application/json"
            },
            method: "POST",
            body: JSON.stringify(data)
        }
    );
    const result = await response.json();
    return result;
}


// filepath: frontend-modern/script.js
document.addEventListener('DOMContentLoaded', function() {
    const submitButton = document.getElementById('submitButton');
    const userPrompt = document.getElementById('userPrompt');
    const responseArea = document.getElementById('responseArea');
    const sourcesArea = document.getElementById('sourcesArea');
    const toggleSources = document.getElementById('toggleSources');

    submitButton.addEventListener('click', function() {
        const prompt = userPrompt.value;
        if (prompt) {
            query({"question": prompt}).then((response) => {
                if(response.message && response.message.includes("error")) {
                    responseArea.innerHTML = `<p>The db agent was unable to generate a query with the prompt that you entered and has returned this error as a result: ${response.message}</p>`;
                    sourcesArea.innerHTML = "";
                } else {
                    // Simulate a response for demonstration purposes
                    responseArea.innerHTML = `<p>You asked: ${prompt}</p><p>Response: ${response.json.answer}</p>`;
                    userPrompt.value = ''; // Clear input after submission
        
                    // Example sources simulation
                    sourcesArea.innerHTML = `
                    <p>
                        ${response.json.sqlQuery}
                    </p>
                    `;
                }

            })
        }
    });

    toggleSources.addEventListener('click', function() {
        if (sourcesArea.style.display === 'none' || sourcesArea.style.display === '') {
            sourcesArea.style.display = 'block';
            toggleSources.textContent = '[Hide]';
        } else {
            sourcesArea.style.display = 'none';
            toggleSources.textContent = '[Show]';
        }
    });
});