# YARN=yarn --cwd /var/www
# SYMFONY_CONSOLE=php /var/www/bin/console --env=dev
# COMPOSER=composer --working-dir=/var/www
# CMD=docker-compose -f docker-compose.yml

# SF=docker-compose run --rm --no-deps --user $$(id -u):$$(id -g) ${PARAM} --entrypoint php php_box bin/console


ENCORE=docker-compose run --rm encore
COMPOSER=docker-compose run --rm web



yarn_watch:
	${ENCORE} yarn dev --watch
yarn_install:
	${ENCORE} yarn install

composer_require:
	${COMPOSER} composer require $(cmd)



# start: down up update
# 	$(CMD) exec php $(SYMFONY_CONSOLE) doctrine:schema:update --force
# 	$(CMD) exec php $(SYMFONY_CONSOLE) genelead:database:seed

# up:
# 	$(CMD) up -d

# down:
# 	$(CMD) down

# update:
# 	$(CMD) exec php $(COMPOSER) install
# 	$(CMD) exec php $(YARN) install --save-dev

# yarn-watch:
# 	$(CMD) exec web ./coaching $(YARN) watch

# test:
# 	$(CMD) exec php phpunit -c /var/www

# console:
# 	$(CMD) exec php $(SYMFONY_CONSOLE) $(cmd)

# console-vv:
# 	$(CMD) exec php $(SYMFONY_CONSOLE) -vv $(cmd)

# console-db-dump:
# 	$(CMD) exec php $(SYMFONY_CONSOLE) doctrine:schema:update --dump-sql

# composer:
# 	$(CMD) exec php $(COMPOSER) $(cmd)

# redis:
# 	$(CMD) exec redis redis-cli

# db-import:
# 	mysql -u genelead --password=genelead -D genelead -h 127.0.0.1 < databases/genelead.sql