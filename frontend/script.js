async function query(data) {
    const response = await fetch(
        "http://flowise:3000/api/v1/prediction/1e7c6310-564d-49a7-9449-02a62871bd61",
        {
            headers: {
                Authorization: "Bearer engqFgdQTKY0nQH95KoHxSU2DbvmamVPf6g_5QqtF64",
                "Content-Type": "application/json"
            },
            method: "POST",
            body: JSON.stringify(data)
        }
    );
    const result = await response.json();
    return result;
}



document.getElementById('submitButton').addEventListener('click', () => {
    const userPrompt = document.getElementById('userPrompt').value;
    
    query({"question": userPrompt}).then((response) => {
        console.log(response);
        
        // Example response simulation
        document.getElementById('responseArea').innerHTML = `<p><strong>You asked:</strong> ${userPrompt}</p><p>Here's your AI response: ${response}</p>`;
    
        // Example sources simulation
        document.getElementById('sourcesArea').innerHTML = `
            <ul>
                <li>Source 1: Example Source Material</li>
                <li>Source 2: Additional Context</li>
            </ul>
        `;
    });

});

// Toggle expandable div
document.getElementById('toggleSources').addEventListener('click', () => {
    const sourcesArea = document.getElementById('sourcesArea');
    sourcesArea.classList.toggle('open');
    const toggleText = sourcesArea.classList.contains('open') ? '[Hide]' : '[Show]';
    document.getElementById('toggleSources').textContent = toggleText;
    
});


