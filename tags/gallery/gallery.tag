<gallery>

  <h1>Image Gallery</h1>

  <p>
    This is a quick demonstration showing a responsive image grid using riotjs and sub reddit image thumbnails.
  </p>
  
  <h3>{ title }</h3>

  <form id="image-search" onsubmit={submit}>
    <input type="text" name="sub">
    <button name="submit" onsubmit="{formSubmit}">Show me the money</button>
  </form>

  <hr>

  <ul class="gallery">
    <card></card>
  </ul>

  <hr>

  <script>
    submit(e) {
      e.preventDefault();
      this.title = "/r/" + this.sub.value.toLowerCase();
      load(this.sub.value);
    }

    function load(sub) {
      var request = new XMLHttpRequest,
        sub = sub || 'mechanicalkeyboards';

      request.open('GET', 'https://www.reddit.com/r/' + sub + '.json', true)
      request.onload = function () {
        if (this.status >= 200 && this.status < 400) {
          var data = JSON.parse(request.responseText)
          var gifs = data.data.children;
          riot.mount('card', {
            gifs: gifs
          });
        }
      }
      request.send();
    }

    load();
  </script>

</gallery>
