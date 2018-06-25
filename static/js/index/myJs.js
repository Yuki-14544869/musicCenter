function test() {
    let usr = $('#signUpUsername').val();
    if(usr === "") {
        document.querySelector('#signUpUsername').style.backgroundColor = "red";
    }
}
