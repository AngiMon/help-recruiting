ENCORE=docker-compose run --rm encore
COMPOSER=docker-compose run --rm web
CONSOLE=docker-compose run --rm web bin/console

dc_up:
	docker-compose up -d
dc_down:
	docker-compose down

assets_install:
	${CONSOLE} assets:install

yarn_watch:
	${ENCORE} yarn dev --watch
yarn_install:
	${ENCORE} yarn install
yarn_add:
	${ENCORE} yarn add $(cmd)
yarn_remove:
	${ENCORE} yarn remove $(cmd)
composer_install:
	${COMPOSER} composer install
composer_require:
	${COMPOSER} composer require $(cmd)
db_create:
	${CONSOLE} doctrine:database:create