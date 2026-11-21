---
layout: home
title: Home
hero_title: "[WG_NAME] ([WG_ACRONYM]) Working Group"
hero_text: "[WG_SHORT_DESCRIPTION]"
hero_buttons:
  - label: Work Items
    url: /work-items/
  - label: Read the Charter
    url: "[WG_CHARTER_URL]"
    style: secondary
---

## Purpose and Scope

[WG_SCOPE]

{% comment %}
  Goals and Outcomes (optional). To show this section on the home page,
  delete the "comment" line above the heading and the "endcomment" line
  after it, then replace the example goals with the goals from the charter.
{% endcomment %}
{% comment %}
## Goals and Outcomes

* First goal of the working group.
* Second goal of the working group.

See [Work Items]({{ '/work-items/' | relative_url }}) for the current status of each.
{% endcomment %}

## Working Group Information

* **Chair:** {{ site.chair }}
* **Charter:** [Read the charter]({{ site.charter_url }})
* **Repository:** [{{ site.repo_url | remove: 'https://' }}]({{ site.repo_url }})
* **Published documents:** [{{ site.publications_url | remove: 'https://' }}]({{ site.publications_url }})
* **Policies:** [OSTERA Working Methods and other Association policies](https://ostera.org/policies/)

## Participating

Participation is open to OSTERA members. See [How to Participate](https://wg.ostera.org/participate/) to learn how to join, and [Membership](https://ostera.org/membership/) to become a member.
