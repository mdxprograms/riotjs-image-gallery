<card>
  <li each={ opts.gifs } if={data.media.oembed.thumbnail_url}>
    <div class="imgwrap">
      <a href="#">
        <img src="{data.media.oembed.thumbnail_url}" alt="image">
        <span class="imgmask"></span>
      </a>
    </div>
  </li>
</card>