default:
	@just --list

serve:
	hugo server --buildFuture

preview:
	hugo server --buildDrafts

new name:
	hugo new content content/posts/{{name}}.md
	hugo new content content/posts/{{name}}.en.md
