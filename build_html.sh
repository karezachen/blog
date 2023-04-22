pandoc --embed-resources --standalone --metadata title="kareza 的技术博客" --css pandoc.css README.md --output docs/index.html
pandoc --embed-resources --standalone --css pandoc.css posts/command.md --output docs/posts/command.html
