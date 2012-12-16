{{#if data_sources}}
  {{#if pages}}
    <div class="pagination pagination-centered">
      <ul>
        {{#if pages.prev}}
          <li><a href="?page={{pages.prev.page}}">←</a></li>
        {{else}}
          <li class="disabled"><a>←</a></li>
        {{/if}}
        {{#each pages}}
          <li{{#if active}} class="active"{{/if}}><a href="?page={{page}}">{{label}}</a></li>
        {{/each}}
        {{#if pages.next}}
          <li><a href="?page={{pages.next.page}}">→</a></li>
        {{else}}
          <li class="disabled"><a>→</a></li>
        {{/if}}
      </ul>
    </div>
  {{/if}}
  <table class="table table-hover">
    <thead><tr><th>Added</th><th>Name</th></tr></thead>
    <tbody>
      {{#each data_sources}}
      <tr data-href="/varda-web/data_sources/{{escape uri}}">
        <td>{{added}}</td>
        <td>{{name}}</td>
      </tr>
      {{/each}}
    </tbody>
  </table>
  {{#if pages}}
    <div class="pagination pagination-centered">
      <ul>
        {{#if pages.prev}}
          <li><a href="?page={{pages.prev.page}}">←</a></li>
        {{else}}
          <li class="disabled"><a>←</a></li>
        {{/if}}
        {{#each pages}}
          <li{{#if active}} class="active"{{/if}}><a href="?page={{page}}">{{label}}</a></li>
        {{/each}}
        {{#if pages.next}}
          <li><a href="?page={{pages.next.page}}">→</a></li>
        {{else}}
          <li class="disabled"><a>→</a></li>
        {{/if}}
      </ul>
    </div>
  {{/if}}
{{else}}
  <p>No data sources are here.</p>
{{/if}}
