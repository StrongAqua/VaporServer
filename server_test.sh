#!/bin/bash

baseUrl="https://vast-tor-76749.herokuapp.com/"
# baseUrl="http://127.0.0.1:8080/"

curl --location --request POST "${baseUrl}register" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "id_user": 123,
            "username": "Tester",
            "password": "T3ster",
            "email": "test@test.ru",
            "gender": "tester",
            "credit_card": "1234 5678 9012 3456",
            "bio": "tester"
    }'
echo

curl --location --request POST "${baseUrl}login" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "username": "Tester",
            "password": "T3ster"
    }'
echo

curl --location --request POST "${baseUrl}changeUserData" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "id_user": 123,
            "username": "Tester",
            "password": "T3ster",
            "email": "test@test.ru",
            "gender": "tester",
            "credit_card": "1234 5678 9012 3456",
            "bio": "tester"
    }'
echo

curl --location --request POST "${baseUrl}catalogData" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "page_number": 1,
            "id_category": 1 
    }'
echo

curl --location --request POST "${baseUrl}getGoodById" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "id_product": 123
    }'
echo

curl --location --request POST "${baseUrl}logout" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "id_user": 1 
    }'
echo

curl --location --request POST "${baseUrl}addReview" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "id_user": 1,
            "text": "abyrvalg"
    }'
echo

curl --location --request POST "${baseUrl}approveReview" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "id_comment": 1
    }'
echo

curl --location --request POST "${baseUrl}removeReview" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "id_comment": 1 
    }'
echo

curl --location --request POST "${baseUrl}listReview" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "page_number": 1,
            "id_product": 1
    }'
echo

curl --location --request POST "${baseUrl}getBasket" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "id_user": 1
    }'
echo

curl --location --request POST "${baseUrl}addToBasket" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "id_product": 1,
            "quantity": 1
    }'
echo

curl --location --request POST "${baseUrl}removeProductFromBasket" \
    --header 'Content-Type: application/json' \
    --data-raw '{
            "id_product": 1,
            "quantity": 1
    }'
echo

curl --location --request POST "${baseUrl}payForBasket" \
    --header 'Content-Type: application/json' \
    --data-raw '{}'
echo
