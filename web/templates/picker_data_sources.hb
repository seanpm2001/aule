{{#pickerTitle}}Choose a data source{{/pickerTitle}}

{{#if data_sources}}
  {{> pagination}}
  <table class="table table-hover">
    <thead><tr><th>Name</th><th>Filetype</th><th>Added</th></tr></thead>
    <tbody>
      {{#each data_sources}}
      <tr data-uri="{{uri}}" data-name="{{name}}">
        <td>{{name}}</td>
        <td>{{filetype}}</td>
        <td>{{dateFormat added}}</td>
      </tr>
      {{/each}}
    </tbody>
  </table>
  {{> pagination}}
{{else}}
  <p>No data sources are here.</p>
{{/if}}