<card>
  <li each={ opts.gifs } if={data.media.oembed.thumbnail_url}>
    <div class="imgwrap">
      <a onclick="{previewImage}" href="">
        <img onclick="{previewImage}" src="{data.media.oembed.thumbnail_url}" alt="image">
        <span class="imgmask"></span>
      </a>
    </div>
  </li>
  
  <script>
    previewImage(e) {
      e.preventDefault();
      let previewImage = document.getElementById('preview-image');
      previewImage.src = e.item.data.media.oembed.thumbnail_url;
      previewImage.scrollIntoView();
    }
  </script>
</card>