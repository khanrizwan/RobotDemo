*** Settings ***
Library  Selenium2Library


*** Test Cases ***
RF recorder generated test case
    [Tags]  test  smoke  regression
    [Setup]  open browser  about:blank  chrome
    [Teardown]  close browser
    go to  https://www.facebook.com/
    wait until element is visible  css=form[name=reg] input[name='firstname']
    click element  css=form[name=reg] input[name='firstname']
    wait until element is visible  css=input[name='reg_passwd__']
    input text  css=input[name='reg_passwd__']  test
    wait until element is visible  css=form[name=reg] input[name='sex']
    click element  css=form[name=reg] input[name='sex']
    wait until element is visible  css=#month
    click element  css=#month
    wait until element is visible  css=#year
    click element  css=#year
    wait until element is visible  css=form[name=reg] button[name='websubmit']
    click element  css=form[name=reg] button[name='websubmit']
    submit form
