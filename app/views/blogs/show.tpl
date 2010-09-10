{if $USER_RIGHT > 3}
  <p>
    <a href='/Blog/create'>
      <img src='%PATH_IMAGES%/spacer.gif' class="icon-create" alt='' />
      {$lang_create_entry_headline}
    </a>
  </p>
{/if}
{if !$blog}
  <div class='error' id='js-error' title='{$lang_no_entries}' onclick="hideDiv('js-error')">
    <p>{$lang_no_entries}</p>
  </div>
{else}
  {foreach from=$blog item=b}
    {if !$b.id}
      <div class='error' id='js-error' title='{$lang_missing_entry}' onclick="hideDiv('js-error')">
        <p>{$lang_missing_entry}</p>
      </div>
    {else}
      <div id='b{$b.id}' class='element'>
        <div class='header'>
          <h2>
            {if $b.published == false}
              {$lang_not_published}
            {/if}
            <a href='/Blog/{$b.id}/{$b.eTitle}'>{$b.title}</a>
            {if $USER_RIGHT > 3}
              <a href='/Blog/{$b.id}/update'>
                <img src='%PATH_IMAGES%/spacer.gif' class="icon-update" alt='{$lang_update}'
                     title='{$lang_update}' />
              </a>
            {/if}
          </h2>
          <div class='date'>
            {$b.date} {$lang_by}
            <a href='/User/{$b.author_id}/{$b.full_name_seo}'>{$b.full_name}</a>
            {if $b.date_modified != ''}
              - {$lang_last_update}: {$b.date_modified}
            {/if}
          </div>
        </div>
        {if $b.teaser !== ''}
          <div class="teaser">{$b.teaser}</div>
        {/if}
        {$b.content}
        <div class='footer'>
          {if $b.tags[0] !== ''}
            {$lang_tags}:
            {foreach from=$b.tags item=t name=tags}
              <a class='js-tooltip' title='{$lang_tags_info}::{$t}' href='/Blog/{$t}'>{$t}</a>
              {if $smarty.foreach.tags.iteration < $b.tags_sum}, {/if}
            {/foreach}
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          {/if}
          {$lang_share}:
          <a href='http://www.facebook.com/share.php?u={$URL}/Blog/{$b.id}/{$b.eTitle}&amp;t={$b.eTitle}'
             class='js-tooltip' title='{$lang_add_bookmark}::http://www.facebook.com'>
            <img src='%PATH_IMAGES%/spacer.gif' class="icon-facebook" alt='Facebook' width='16' height='16' />
          </a>
          <a href='http://del.icio.us/post?url={$URL}/Blog/{$b.id}/{$b.eTitle}&amp;title={$b.eTitle}'
             class='js-tooltip' title='{$lang_add_bookmark}::http://del.icio.us'>
            <img src='%PATH_IMAGES%/spacer.gif' class="icon-delicious" alt='del.icio.us' width='16' height='16' />
          </a>
          <a href='http://technorati.com/cosmos/search.html?url={$URL}/Blog/{$b.id}/{$b.eTitle}'
             class='js-tooltip' title='{$lang_add_bookmark}::http://technorati.com'>
            <img src='%PATH_IMAGES%/spacer.gif' class="icon-technorati" alt='Technorati' width='16' height='16' />
          </a>
          <a href='http://digg.com/submit?phase=2&amp;url={$URL}/Blog/{$b.id}/{$b.eTitle}&amp;title={$b.eTitle}'
             class='js-tooltip' title='{$lang_add_bookmark}::http://digg.com'>
            <img src='%PATH_IMAGES%/spacer.gif' class="icon-digg" alt='Digg' width='16' height='16' />
          </a>
          <a href='http://www.mister-wong.de/index.php?action=addurl&amp;bm_url={$URL}/Blog/{$b.id}/{$b.eTitle}&amp;bm_description={$b.eTitle}'
             class='js-tooltip' title='{$lang_add_bookmark}::http://www.mister-wong.de'>
            <img src='%PATH_IMAGES%/spacer.gif' class="icon-mrwong" alt='MrWong' width='16' height='16' />
          </a>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href='/Blog/{$b.id}/{$b.eTitle}#comments'>
            <img src='%PATH_IMAGES%/spacer.gif' class="icon-comments" alt='' /> {$b.comment_sum} {$lang_comments}
          </a>
        </div>
      </div>
    {/if}
  {/foreach}
  {$_blog_pages_}
  <a name='comments'></a>
  {$_blog_comments_}
{/if}
{literal}
  <script type="text/javascript">
    var myAccordion = new Fx.Accordion($$('.js-toggle'), $$('.js-element'), {
      display: -1,
      alwaysHide: true
    });
  </script>
{/literal}