<section id="content">
  {if $USER_RIGHT >= 3}
    <p class="center">
      <a href='/content/create'>
        <img src='%PATH_IMAGES%/spacer.png' class="icon-create" alt='' width="16" height="16" />
        {$lang.content.title.create}
      </a>
    </p>
  {/if}
  <h1>{$lang.global.contents}</h1>
  <table>
    <tr>
      <th>{$lang.global.name}</th>
      <th>{$lang.global.date}</th>
      <th>{$lang.global.author}</th>
      <th></th>
    </tr>
    {foreach $content as $c}
      <tr class='{cycle values="row1,row2"}'>
        <td>
          <a href='/content/{$c.id}/{$c.encoded_title}'>
            {$c.title}
          </a>
        </td>
        <td>{$c.datetime}</td>
        <td>
          <a href='/user/{$c.author_id}'>
            {$c.name} {$c.surname}
          </a>
        </td>
        {if $USER_RIGHT >= 3}
          <td>
            <a href='/content/{$c.id}/update'>
              <img src='%PATH_IMAGES%/spacer.png' class="icon-update" alt='{$lang.global.update}'
                title='{$lang.global.update}' width="16" height="16" />
            </a>
            <img src='%PATH_IMAGES%/spacer.png' class="icon-destroy pointer" alt='{$lang.global.destroy}'
              title='{$lang.global.destroy}' width="16" height="16"
              onclick="confirmDelete('/content/{$c.id}/destroy')" />
          </td>
        {/if}
      </tr>
    {/foreach}
  </table>
</section>