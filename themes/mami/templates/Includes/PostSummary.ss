<div class="post-summary">
	<h2 class="major">
		<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
			<% if $MenuTitle %>$MenuTitle
			<% else %>$Title<% end_if %>
		</a>
	</h2>

	<% if $FeaturedImage %>
		<a class="post-image" href="$Link" <%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>>
			$FeaturedImage.setWidth(795)
		</a>
	<% end_if %>

	<p>
		<% if $Summary %>
			$Summary
		<% else %>
			$Excerpt
		<% end_if %>

		<a href="$Link">
			<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>
		</a>
	</p>

	<% include EntryMeta %>
</div>
