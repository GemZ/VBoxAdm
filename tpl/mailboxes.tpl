[% INCLUDE header.tpl %]
    <div id="main">
		[% FOREACH line IN mailboxes %]
		[% IF loop.first %]
		<table class="sortable">
			<thead>
			<tr>
				<th>Mailbox</th>
				<th>Active</th>
				<th>Max. Msgsize</th>
				<th>Vacation</th>
				<th>Quota</th>
				<th></th>
				<th></th>
			</tr>
			</thead>
			<tbody>
		[% END %]
			<tr>
				<td>
					<a href="vboxadm.pl?rm=edit_mailbox&mailbox_id=[% line.id %]">[% line.local_part %]@[% line.domain %]</a>
				</td>
				<td>
					[% IF line.is_active == 1 %]
					Yes
					[% ELSE %]
					No
					[% END %]
				</td>
				<td>
					[% line.max_msg_size %]
				</td>
				<td>
					[% IF line.is_on_vacatione == 1 %]
					Yes
					[% ELSE %]
					No
					[% END %]
				</td>
				<td>
					[% line.quota %]
				</td>
				<td>
					<a href="vboxadm.pl?rm=edit_mailbox&mailbox_id=[% line.id %]">edit</a>
				</td>
				<td>
					<a href="vboxadm.pl?rm=remove_mailbox&mailbox_id=[% line.id %]">del</a>
				</td>
			</tr>
		[% IF loop.last %]
		</tbody>
		<tfoot>
		</tfoot>
		</table>
		[% END %]
		[% END %]
		<br />
		<a href="vboxadm.pl?rm=create_mailbox">Add Mailbox</a>
    </div>
[% INCLUDE footer.tpl %]