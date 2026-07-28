This folder is searched for JSON files that do not start with a double underscore.
All JSON files must have an "entity" string key (mod:entity) and a "targets" JSON array.
The "targets" array contains a list of JSON objects, for each entity target.
Each entity target object must have an "entity" string key (mod:entity), optionally integer "priority" and boolean "check_sight" entries may be added.
"priority" responds to how important the AI task for attacking is.
"check_sight" responds for the sight checking, in other words, should the entity target another entity if there is no direct sight.

One extra note is the "/cmt" command
You can reload configs by running "/cmt reload"