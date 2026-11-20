---
layout: page
title: Meetings
permalink: /meetings/
lead: "Agendas and reports of working group meetings."
---

{% if site.data.meetings.size > 0 -%}
| Date | Meeting | Agenda | Report |
| --- | --- | --- | --- |
{% for meeting in site.data.meetings -%}
| {{ meeting.date }} | {{ meeting.title }} | {% if meeting.agenda %}[Agenda]({{ site.source_url }}/blob/main/02-Meetings/{{ meeting.date }}/agenda.md){% endif %} | {% if meeting.report %}[Report]({{ site.source_url }}/blob/main/02-Meetings/{{ meeting.date }}/report.md){% endif %} |
{% endfor %}
{%- else -%}
No meetings have been held yet.
{%- endif %}

All public agendas and reports are kept in the [02-Meetings]({{ site.source_url }}/tree/main/02-Meetings) folder of the repository. Materials that are confidential to OSTERA members are kept in the [OSTERA Portal](https://member.ostera.org/).
