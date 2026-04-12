---
name: puma-dataview
description: Use the Dataview plugin to query and analyze notes, tasks, and metadata in the vault.
---

# DATAVIEW USAGE

- Query notes by tags or fields (e.g., `type:task`, `status:open`).
- Build tables/lists:
  - Tasks by project/status.
  - Literature references by year or tag.
  - Notes linked to a specific MOC.
- Example query:
  ```dataview
  table status as "Status", file.link as "Task"
  from "90 - GTD/91 Tasks"
  where status != "done"
  sort file.name asc

