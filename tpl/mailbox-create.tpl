[% INCLUDE header.tpl %]
    <div id="main">
    	<div id="edit_form">
    	<form name="create_domain" method="POST">
    	<input type="hidden" name="rm" value="add_domain" />
    	<table>
    		<tr>
    			<td colspan="3">
    				<h3>Create a new mailbox</h3>
    			</td>
    		</tr>
    		<tr>
				<td>Username:</td>
				<td><input class="flat" type="text" name="username" /></td>
				<td>@
					[% FOREACH line IN domains %]
					[% IF loop.first %]
					<select name="domain">
					[% END %]
						<option value="[% line.id %]">[% line.name %]</option>
					[% IF loop.last %]
					</select>
					[% END %]
					[% END %]
				</td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input class="flat" type="text" name="password" /></td>
				<td>Leave both password fields empty to autogenerate a password.</td>
			</tr>
			<tr>
				<td>Password (again):</td>
				<td><input class="flat" type="text" name="password_2" /></td>
				<td></td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><input class="flat" type="text" name="name" /></td>
				<td></td>
			</tr>
			<tr>
				<td>Active:</td>
				<td><input class="flat" type="checkbox" name="is_active" checked /></td>
				<td></td>
			</tr>
			<tr>
				<td>Send Welcome Mail:</td>
				<td><input class="flat" type="checkbox" name="send_welcome_mail" checked /></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input class="button" type="submit" name="submit" value="Add Mailbox" />
				</td>
			</tr>
		</table>
		</form>
		</div>
    </div>
[% INCLUDE footer.tpl %]
