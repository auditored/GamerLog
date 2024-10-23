const csrftoken = Cookies.get('csrftoken');

document.addEventListener('DOMContentLoaded', function(){

    document.querySelector('#submitBtn').addEventListener('click', () => chat_ajax());

});

function chat_ajax(){

    let text = document.querySelector('#userText').value
    let selectedModel = document.querySelector("#modelSelect").value
    let chatCard = document.querySelector('#chatCard')
    chatCard.innerHTML += `
    <div style="background-color: #4d1067;" class="card-body bg">
        <h5 class="card-title">${text}</h5>
    </div>
    `
    console.log(text)

    // Clear input:
    document.querySelector('#userText').value = null

    var loading = document.querySelector('#loading')
    loading.innerHTML = `
    <strong>Loading...</strong>
    <div class="spinner-border ms-auto" role="status" aria-hidden="true"></div>
    `

    $.ajax({
        type: 'POST',
        url: 'ajax/',
        headers: {
            "X-CSRFToken": csrftoken
        },
        data: {
            'text': text,
            'selectedModel' : selectedModel
        },
        success: (res)=> {
            let game = res.data.games;
            let link = res.data.links;
        
            // Generate the HTML for displaying the suggested game and link
            let html = `<p>Here is the game you sound like you described:</p>`
            html += `<li>${game}</li>`
            html += `<p>You can search for it using this link:</p>`
            html += `<li><a href="${link}">Click</a></li>`
        
            chatCard.innerHTML += `
            <div style="background-color: #371247;" class="card-body bg text-dark">
                  <h5 class="card-title">${html}</h5>
            </div>
            `
            loading.innerHTML = ''
        },
        error: (err)=> {
            console.log("There was an error!")
            console.log(err)
        }
    })
}
