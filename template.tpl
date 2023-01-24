___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "JSON - Parse or Stringify",
  "categories": ["TAG_MANAGEMENT"],
  "description": "Parse a JSON string to construct the object or convert the input into a JSON string.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "jsonFunction",
    "displayName": "Select the needed JSON function.",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "parse",
        "displayValue": "Parse"
      },
      {
        "value": "stringify",
        "displayValue": "Stringify"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "input",
    "displayName": "Provide the value to parse or stringify.",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

const JSON = require('JSON');

if (data.jsonFunction === 'parse') {
  let userInput = data.input || '';
  return JSON.parse(userInput);
}

if (data.jsonFunction === 'stringify') {
  let userInput = data.input || {};
  return JSON.stringify(userInput);
}


___TESTS___

scenarios: []


___NOTES___

Created on 24.1.2023, 13:57:16


