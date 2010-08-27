<form method='post' action='/User/{$uid}/update'>
  <table>
    <tr>
      <th colspan='3'>{$lang_headline}</th>
    </tr>
    <tr class='row1'>
      <td class='td_left'>
        <label for='name'>{$lang_name} ({$lang_required})</label>
      </td>
      <td class='td_right'>
        <div class="input">
          <input name='name' value='{$name}' type='text'
                 id='name' />
        </div>
      </td>
      <td rowspan='5' style='vertical-align:top;min-width:140px'>
		{if $USER_ID === $uid}
          <a href='{$avatar_popup}' rel='lightbox' title='{$name}'>
            <img class='image' alt='{$name}' src="{$avatar_100}" />
          </a>
          <br />
          <a href="#js-upload_image" onclick="javascript:showDiv('js-upload_image');" class='small'>
            {$lang_image_change}
          </a>
        {/if}
      </td>
    </tr>
    <tr class='row2'>
      <td class='td_left'>
        <label for='surname'>{$lang_surname}</label>
      </td>
      <td class='td_right'>
        <div class="input">
          <input name='surname' value='{$surname}' type='text' id='surname' />
        </div>
      </td>
    </tr>
    <tr class='row1'>
      <td class='td_left'>
        <label for='email'>{$lang_email}</label>
      </td>
      <td class='td_right'>
        <div class="input">
          <input name='email' value='{$email}' type='text' id='email' />
        </div>
      </td>
    </tr>
    <tr class='row2'>
      <td class='td_left'>
        <label for='use_gravatar'>{$lang_use_gravatar}</label>
      </td>
      <td class='td_right'>
        <div class="checkbox">
          <input type='checkbox' id='use_gravatar' name='use_gravatar'
                 value='1' {if $use_gravatar == 1}checked='checked'{/if} />
          <span class="description">
            {$lang_image_gravatar_info}
            <a href="#js-upload_image" onclick="javascript:showDiv('js-upload_image');">
              {$lang_image_change}
            </a>
          </span>
        </div>
      </td>
    </tr>
    <tr class='row1'>
      <td class='td_left'>
        <label for='description'>{$lang_about_you}</label>
      </td>
      <td class='td_right'>
        <div class="textarea">
          <textarea name='description' id='description'
                    rows='6' cols='30'>{$description}</textarea>
        </div>
      </td>
    </tr>
    <tr class='row2'>
      <td class='td_left'>
        <label for='receive_newsletter'>{$lang_newsletter}</label>
      </td>
      <td class='td_right'>
        <div class="checkbox">
          <input name='receive_newsletter' value='1' type='checkbox'
                 id='receive_newsletter'
                 {if $receive_newsletter == 1}checked='checked'{/if} />
        </div>
      </td>
    </tr>
    {if $USER_RIGHT == 4 && $USER_ID !== $uid}
      <tr class='row1'>
        <td class='td_left'>
          <label for='user_right'>{$lang_user_right}</label>
        </td>
        <td class='td_right'>
          <div class="dropdown">
            <select name='user_right' class='inputdropdown'>
              <option value='1' {if $user_right == 1}selected='selectsed'{/if}>{$lang_user_right_1}</option>
              <option value='2' {if $user_right == 2}selected='selectsed'{/if}>{$lang_user_right_2}</option>
              <option value='3' {if $user_right == 3}selected='selectsed'{/if}>{$lang_user_right_3}</option>
              <option value='4' {if $user_right == 4}selected='selectsed'{/if}>{$lang_user_right_4}</option>
            </select>
          </div>
        </td>
      </tr>
    {/if}
  </table>
  {if $USER_ID == $uid}
    <p></p>
    <table>
      <tr>
        <th colspan='2'>{$lang_password_change}</th>
      </tr>
      <tr class='row1'>
        <td class='td_left'>
          <label for='oldpw'>{$lang_password_old}</label>
        </td>
        <td class='td_right'>
          <div class="input">
            <input name='oldpw' value='' type='password' id='oldpw' />
          </div>
        </td>
      </tr>
      <tr class='row2'>
        <td class='td_left'>
          <label for='newpw'>{$lang_password_new}</label>
        </td>
        <td class='td_right'>
          <div class="input">
            <input name='newpw' value='' type='password' id='newpw' />
          </div>
        </td>
      </tr>
      <tr class='row1'>
        <td class='td_left'>
          <label for='newpw2'>{$lang_password_repeat}</label>
        </td>
        <td class='td_right'>
          <div class="input">
            <input name='newpw2' value='' type='password' id='newpw2' />
          </div>
        </td>
      </tr>
    </table>
  {/if}
  <div class="submit">
    <input type='submit' class='inputbutton' value='{$lang_submit}' />
  </div>
  <input type='hidden' value='formdata' name='update_user' />
</form>
<script type="text/javascript">
  var sFilesSuffix = '{$_compress_files_suffix_}';
  {literal}
    window.addEvent('domready', function() {
      new Asset.javascript('%PATH_PUBLIC%/js/slimbox' + sFilesSuffix + '.js');
    });
  {/literal}
</script>
<p></p>
<a name="js-upload_image"></a>
<form id='js-upload_image' style='{$style}' action='{$_action_url_}' method='post' enctype='multipart/form-data'>
  <table>
    <tr>
      <th colspan='2'>{$lang_image_upload}</th>
    </tr>
    <tr class='row1'>
      <td class='td_left'>
        <label for='image'>{$lang_image_choose}</label>
      </td>
      <td class='td_right'>
        <div class="input">
          <input type='file' name='image' id='image' />
        </div>
        <div class='description'>{$lang_image_upload_info}</div>
      </td>
    </tr>
    <tr class='row2'>
      <td class='td_left'>
        <label for='agreement'>{$lang_image_agreement}</label>
      </td>
      <td class='td_right'>
        <div class="checkbox">
          <input type='checkbox' id='agreement' name='agreement' value='1' />
        </div>
      </td>
    </tr>
  </table>
  <div class="submit">
    <input type='submit' value='{$lang_image_upload}' />
  </div>
  <input type='hidden' value='formdata' name='create_avatar' />
  <input type='hidden' name='MAX_FILE_SIZE' value='409600' />
</form>