___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "DMSales",
  "categories": ["SALES", "MARKETING", "REMARKETING", "EMAIL_MARKETING"],
  "brand": {
    "id": "brand_dummy",
    "displayName": "DMSales",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACcAAAAjCAYAAAAXMhMjAAAABHNCSVQICAgIfAhkiAAAABl0RVh0U29mdHdhcmUAZ25vbWUtc2NyZWVuc2hvdO8Dvz4AAAFrSURBVFiFY/z+/ft/hkEKmAbaAfjAoHYcC4xx7dM/hklXfqFIcrExMugLMTMEyDIz8LMyYmi+uvYFw/U1z1HE+GQ5GZRcRRhUXEWwWvikah/D90uvUMQ49cUYhCJ0GLh0xVDEGWFp7sTbfwwdx39iNVBCiJFhhhUHhvjxiQ8YTlXdx6rHZooKg3GiLIb4be/lDN/2PcaqR/VUAooDiYrWF+/+M3z8TVq+ub/zDUnqGRgYGD5uu4XCJzrNXf9E/0w9qDPEqOPIBaOOIxeMOo5cMOo4csGo48gFo44jF9DMcewCrBSbQRPHidjxMNjVqFBsDgthJbiBZb4Cg2W+AsWOwAVGZpqjBhh1HLlg1HHkgC9fvgxex/Hw8BDvOE0+zOEIWgOiHKcowYR1rISqDuFkZxCK1EURg4+VPPn+n2HD498YmnhYmBgSlCiqSFDA2+VXGH49+oAhLhSpy8Aux4/dcYMRDNoMwcDAwAAAG/xUfqxxtIYAAAAASUVORK5CYII\u003d"
  },
  "description": "Dodawanie skryptu analitycznego",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "PageId",
    "displayName": "Page ID",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const pageId = data.pageId;
const injectScript = require('injectScript');
const url = 'https://app.dmsales.com/pl/api/analytical-script?pageId=' + pageId;
const onSuccess = () => {
  data.gtmOnSuccess();
};
const onFailure = () => {
  data.gtmOnFailure();
};

injectScript(url, onSuccess, onFailure);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://app.dmsales.com/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___NOTES___

Created on 10.03.2020, 08:21:08
