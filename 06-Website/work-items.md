---
layout: page
title: Work Items
permalink: /work-items/
lead: "Documents the working group is developing."
---

{% if site.data.work_items.size == 0 -%}
No work items have been started yet.

{% endif -%}
{% for item in site.data.work_items -%}
## {{ item.name }}

{{ item.summary }}

* **Status:** {{ item.status }}
{%- if item.draft and item.draft != "" %}
* **Current draft:** [{{ item.draft | split: '/' | last }}]({{ site.source_url }}/blob/main/{{ item.draft }})
* **Folder:** [03-Work-Items/{{ item.id }}]({{ site.source_url }}/tree/main/03-Work-Items/{{ item.id }})
{%- endif %}

**Public reviews:**

{% comment %}
  The theme fills this in when the page is viewed, from the list of public
  reviews on pub.ostera.org, so it never needs to be edited here.
{% endcomment %}
<div class="work-item-reviews" data-reviews-for="{{ item.id }}">
<p><a href="https://pub.ostera.org/reviews/{{ item.id }}/">Public reviews of this work item</a></p>
</div>

{% endfor -%}

## Public Reviews

The public reviews of each work item are listed above, with their current status. Drafts that are open for public comment, and every past public review of every working group, are listed at [pub.ostera.org/reviews](https://pub.ostera.org/reviews/). Each review page shows how far the work item has progressed and how to comment.

## Commenting on a Draft

To comment on a draft, open an issue in the [repository]({{ site.source_url }}/issues/new/choose) using the "Work Item Comment" template.

Drafts are works in progress. They have not been approved by the Association and must not be cited as OSTERA publications. By submitting any contribution (an issue, a pull request, or a comment), you agree that your contribution is made under the [OSTERA IPR and Copyright Policy](https://ostera.org/policies/).
