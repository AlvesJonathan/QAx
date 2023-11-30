*** Settings ***
Documentation    Arquivo principal do projeto
Library          Browser
Resource         actions/signup.resource
Resource         fixtures/toretto

*** Keywords ***
Start session  
    New Browser        browser=chromium        headless=False
    New Page           https://walkdog.vercel.app

    Wait For Elements State    css=h1 >> Cuidado e diversão em cada passo
    ...                        visible    5         
