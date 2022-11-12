#!/bin/bash

if [ "$REPL_SLUG" == 'blog-dev' ] # draft space
then 
  hugo serve --buildDrafts --buildFuture --bind 0.0.0.0 --port 443 --baseURL https://$REPL_SLUG.$REPL_OWNER.repl.co
else # production
  hugo serve --bind 0.0.0.0 --port 443 --baseURL https://$REPL_SLUG.$REPL_OWNER.repl.co
fi