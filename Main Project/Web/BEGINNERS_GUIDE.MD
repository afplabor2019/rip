# How to use the page and basic requirements

## 1. Requirements

1. Xampp || Wamp server installed with mysql
1. Making virtual host or changing $config['base_url'] in config/config.php

## 2. Accessing routing

> [usedVirtualHostOrJustFolder]/index.php/
[usedVirtualHostOrJustFolder]/index.php/login

**More routes will be added, to see all of them visit config/routes.php**

> **EXAMPLES**
>
>- localhost:9990/index.php/
> - localhost:9990/index.php/login
>
> **OR**
>
> - localhost/web/index.php/
> - localhost/web/index.php/login

## Basic calling chain

- url
    - router
        - controller
            - model
            - template
                - header & view