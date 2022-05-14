*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         RequestsLibrary
Library         OperatingSystem
Library         String
Library         BuiltIn

Variables       ../resources/testdata/test_data.yaml

Resource        ../keywords/keywords.robot

