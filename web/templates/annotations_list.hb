{{#if annotations}}
  {{> pagination}}
  <table class="table table-hover">
    <thead><tr><th>Annotation</th><th class="cell-icon">Written</th></tr></thead>
    <tbody>
      {{#each annotations}}
      <tr data-href="{{../base}}/annotations/{{escape uri}}">
        <td>{{annotated_data_source.name}}</td>
        <td class="cell-icon">
{{#if task.done}}
  <i class="icon-ok"></i>
{{else}}
  {{#if_eq task.state compare="failure"}}
    <i class="icon-warning-sign" title="{{task.error.message}}"></i>
  {{/if_eq}}
  {{#if_eq task.state compare="started"}}
    <i class="icon-spinner icon-spin"></i>
  {{/if_eq}}
  {{#if_eq task.state compare="progress"}}
    <div class="progress" title="{{task.progress}}%">
      <div class="bar" style="width: {{task.progress}}%;"></div>
    </div>
  {{/if_eq}}
{{/if}}
        </td>
      </tr>
      {{/each}}
    </tbody>
  </table>
  {{> pagination}}
{{else}}
  <p>No annotations are here.</p>
{{/if}}