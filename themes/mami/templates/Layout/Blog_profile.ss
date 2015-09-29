<% require themedCSS('blog', 'blog') %>

<div class="blog-entry content-container" id="main">

    <article id="one">

        <% include MemberDetails %>

        <% if $PaginatedList.Exists %>
            <h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname for $Title:</h2>
            <% loop $PaginatedList %>
                <% include PostSummary %>
            <% end_loop %>
        <% end_if %>

        $Form
        $CommentsForm

        <% with $PaginatedList %>
            <% include Pagination %>
        <% end_with %>

    </article>

</div>

<%-- include BlogSideBar --%>
