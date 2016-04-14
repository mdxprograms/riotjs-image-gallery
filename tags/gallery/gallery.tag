<gallery>

  <h1>Gifs Gallery</h1>

  <hr>

  <ul class="gallery">
    <card></card>
  </ul>
  <hr>

  <script>
    function load() {
      var request = new XMLHttpRequest;

      request.open('GET', 'https://www.reddit.com/r/gifs.json', true)
      request.onload = function () {
        if (this.status >= 200 && this.status < 400) {
          var data = JSON.parse(request.responseText)
          var gifs = data.data.children;
          riot.mount('card', {gifs: gifs});
        }
      }
      request.send();
    }
    
    load();
    
  </script>

</gallery>