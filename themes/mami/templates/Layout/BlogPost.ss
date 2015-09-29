<% require themedCSS('blog', 'blog') %>

<div class="blog-entry content-container" id="main">

	<article id="one">

		<h1>$Title</h1>

        <% if $FeaturedImage %>
			<p class="post-image">$FeaturedImage.setWidth(795)</p>
		<% end_if %>

		$Content

		<% include EntryMeta %>
	</article>

    $Form
	$CommentsForm
</div>

<%-- include BlogSideBar --%>
