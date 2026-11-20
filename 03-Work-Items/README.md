# 03 Work Items

A working group **MAY** develop its documents in any tool it likes, and this folder is optional. It **MAY** hold the source files (Markdown or LaTeX) of drafts, or copies of the drafts the working group has developed outside of GitHub. Each work item **MUST** have its own subfolder, and inside that it **MUST** have a folder for the version. For example, `jcs/v1.0/draft-ts-jcs-01.pdf`.

Whatever tool a working group uses, every draft it releases **MUST** also be uploaded to the [OSTERA Portal](https://member.ostera.org/), which holds the authoritative copy.

Drafts are works in progress and are not OSTERA final deliverables. When a document is approved, it is published at https://pub.ostera.org/.

## Naming Drafts

Name each draft file as follows:

```
draft-<code, lowercase>-<short name, lowercase>-<two digit draft number>.<filetype>
```

For example, `draft-ts-jcs-01.pdf` is the first draft of the Technical Specification with the short name `jcs`. The document type code is what the work item is expected to have. The codes are listed at https://pub.ostera.org/about/.

A working group can release drafts as often as it wants. Each release of a draft **MUST** have its own draft number and it **MUST** be incremented by one, starting at 01.

When a working group starts a new version of the document, its drafts **MUST** be in a new folder named for the new version, and the draft numbers **MUST** start again at 01.

## Public Reviews

Before a work item can be approved, it **MUST** go through at least one 14 day Working Group last call and at least one 30 day public review (Working Methods, Article 29). When the chairs ask for a public review, the Secretariat copies the draft, unchanged, from the OSTERA Portal to https://pub.ostera.org/reviews/, where it keeps its name. For example, the review of `draft-ts-jcs-01.pdf` for version 1.0 would be at https://pub.ostera.org/reviews/jcs/v1.0/01/. The contents of a given draft number **MUST NOT** be changed after it has been released, either to the working group or for public review. Make a new draft with a new draft number instead.

To comment on a draft, open an issue in this repository using the "Work Item Comment" template (https://github.com/OSTERA-org-Working-Groups/[WG_ID]/issues/new/choose). During a public review, comments can also be sent to public-review@ostera.org; each review page at https://pub.ostera.org/reviews/ explains how.

## Intellectual Property

By submitting any contribution (an issue, a pull request, or a comment), you agree that your contribution is made under the [OSTERA IPR and Copyright Policy](https://ostera.org/policies/). Do not submit material that you do not have the right to contribute.
