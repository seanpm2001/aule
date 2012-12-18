<ul class="nav nav-pills">
  <li{{#if_eq current compare="sample_show"}} class="active"{{/if_eq}}><a href="/varda-web/samples/{{escape sample.uri}}"><i class="icon-file"></i> Details</a></li>
  <li{{#if_eq current compare="sample_variations"}} class="active"{{/if_eq}}><a href="/varda-web/variations/{{escape sample.variations_uri}}"><i class="icon-th-large"></i> Observations</a></li>
  <li{{#if_eq current compare="sample_coverages"}} class="active"{{/if_eq}}><a href="/varda-web/coverages/{{escape sample.coverages_uri}}"><i class="icon-th-large"></i> Regions</a></li>
  <li class="{{#if_eq current compare="sample_edit"}}active {{/if_eq}}pull-right"><a href="/varda-web/samples/{{escape sample.uri}}/edit"><i class="icon-pencil"></i> Edit sample</a></li>
  <li class="{{#if_eq current compare="sample_delete"}}active {{/if_eq}}pull-right"><a href="/varda-web/samples/{{escape sample.uri}}/delete"><i class="icon-trash"></i> Delete sample</a></li>
</ul>

{{> page}}