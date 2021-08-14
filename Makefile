ENCORE=docker-compose run --rm encore
COMPOSER=docker-compose run --rm web
CONSOLE=docker-compose run --rm web bin/console


yarn_watch:
	${ENCORE} yarn dev --watch
yarn_install:
	${ENCORE} yarn install
composer_install:
	${COMPOSER} composer install
composer_require:
	${COMPOSER} composer require $(cmd)
db_create:
	${CONSOLE} doctrine:database:create