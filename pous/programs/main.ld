PROGRAM main
VAR
	Green : bool := FALSE;
	Yellow : bool := FALSE;
	Red : bool := FALSE;
	GreenOn : bool := True;
	YellowOn : bool := False;
	RedOn : bool := False;
	GreenTimer : TON;
	YellowTimer : TON;
	RedTimer : TON;
END_VAR

{
  "name": "main",
  "rungs": [
    {
      "id": "rung_main_7fda2c21-a0d6-4da3-9ad6-2778ba17a32c",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        747,
        134
      ],
      "nodes": [
        {
          "id": "left-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "height": 40,
          "width": 3,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "5105219",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false,
            "hasDivergence": false
          }
        },
        {
          "id": "CONTACT_7bafcc09-c1ab-4dec-bc50-ea25eb144d69",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "height": 24,
          "width": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "8803855",
            "variable": {
              "name": "GreenOn",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "bool"
              },
              "location": "",
              "initialValue": "False",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          }
        },
        {
          "id": "BLOCK_ee4fb69f-1889-420a-9b53-e468edf36d60",
          "type": "block",
          "position": {
            "x": 257,
            "y": 14
          },
          "height": 100,
          "width": 66,
          "measured": {
            "width": 66,
            "height": 100
          },
          "draggable": true,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "PT",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 323,
                  "y": 50
                },
                "relPosition": {
                  "x": 66,
                  "y": 36
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 323,
                  "y": 90
                },
                "relPosition": {
                  "x": 66,
                  "y": 76
                },
                "id": "ET",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "PT",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 323,
                  "y": 50
                },
                "relPosition": {
                  "x": 66,
                  "y": 36
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 323,
                  "y": 90
                },
                "relPosition": {
                  "x": 66,
                  "y": 76
                },
                "id": "ET",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 257,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "IN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 323,
                "y": 50
              },
              "relPosition": {
                "x": 66,
                "y": 36
              },
              "id": "Q",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "6588013",
            "variant": {
              "name": "TON",
              "type": "function-block",
              "language": "st",
              "variables": [
                {
                  "name": "IN",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "documentation": "first input parameter"
                },
                {
                  "name": "PT",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  },
                  "documentation": "second input parameter"
                },
                {
                  "name": "Q",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "initialValue": {
                    "value": "FALSE"
                  },
                  "documentation": "first output parameter"
                },
                {
                  "name": "ET",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  },
                  "initialValue": {
                    "value": "T#0s"
                  },
                  "documentation": "second output parameter"
                },
                {
                  "name": "STATE",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "SINT"
                  },
                  "initialValue": {
                    "value": "0"
                  },
                  "documentation": "internal state: 0-reset, 1-counting, 2-set"
                },
                {
                  "name": "PREV_IN",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "initialValue": {
                    "value": "FALSE"
                  }
                },
                {
                  "name": "CURRENT_TIME",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  }
                },
                {
                  "name": "START_TIME",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  }
                }
              ],
              "body": "{__SET_VAR(data__->,CURRENT_TIME,,__CURRENT_TIME)}\n\n      IF ((STATE = 0) AND NOT(PREV_IN) AND IN)   (* found rising edge on IN *)\n      THEN\n        (* start timer... *)\n        STATE := 1;\n        Q := TRUE;\n        START_TIME := CURRENT_TIME;\n\n      ELSE\n        (* STATE is 1 or 2 !! *)\n        IF (NOT(IN))\n        THEN\n          ET := T#0s;\n          Q := FALSE;\n          STATE := 0;\n\n        ELSIF (STATE = 1)\n        THEN\n          IF ((START_TIME + PT) <= CURRENT_TIME)\n          THEN\n            STATE := 2;\n            Q := TRUE;\n            ET := PT;\n          ELSE\n            ET := CURRENT_TIME - START_TIME;\n          END_IF;\n        END_IF;\n\n      END_IF;\n\n      PREV_IN := IN;",
              "documentation": "The on-delay timer can be used to delay setting an output true, for fixed period after an input becomes true."
            },
            "variable": {
              "name": "GreenTimer",
              "type": {
                "definition": "derived",
                "value": "TON"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "executionControl": false,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "ET",
                "type": "output",
                "variable": {
                  "name": ""
                }
              },
              {
                "handleId": "PT",
                "type": "input",
                "variable": {
                  "name": "T#10s"
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          }
        },
        {
          "id": "COIL_98c10754-4961-4972-a66f-b5c6cbf20ceb",
          "type": "coil",
          "position": {
            "x": 488,
            "y": 38
          },
          "height": 24,
          "width": 28,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 488,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 516,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "reset",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 488,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 516,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 488,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 516,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "8687977",
            "variable": {
              "name": "GreenOn",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "bool"
              },
              "location": "",
              "initialValue": "False",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          }
        },
        {
          "id": "COIL_9a488f32-ee5b-47ed-b632-523bb12a421e",
          "type": "coil",
          "position": {
            "x": 606,
            "y": 38
          },
          "height": 24,
          "width": 28,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 606,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 634,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "set",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 606,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 634,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 606,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 634,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "4119921",
            "variable": {
              "name": "YellowOn",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "bool"
              },
              "location": "",
              "initialValue": "False",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          }
        },
        {
          "id": "right-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5",
          "type": "powerRail",
          "position": {
            "x": 744,
            "y": 30
          },
          "height": 40,
          "width": 3,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 744
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "5632479",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false,
            "hasDivergence": false
          }
        },
        {
          "id": "VARIABLE_9d0a9b10-af5b-4b74-b564-154dc9bff938",
          "type": "variable",
          "position": {
            "x": 147,
            "y": 74
          },
          "height": 32,
          "width": 80,
          "measured": {
            "width": 80,
            "height": 32
          },
          "draggable": false,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 307,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "4829343",
            "variable": {
              "name": "T#10s"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_ee4fb69f-1889-420a-9b53-e468edf36d60",
              "handleId": "PT",
              "variableType": {
                "name": "PT",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "TIME"
                },
                "documentation": "second input parameter"
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          }
        },
        {
          "id": "VARIABLE_b869c785-e936-4f20-b1c3-2a91425252a1",
          "type": "variable",
          "position": {
            "x": 353,
            "y": 74
          },
          "height": 32,
          "width": 80,
          "measured": {
            "width": 80,
            "height": 32
          },
          "draggable": false,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 353,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 353,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 353,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "3326326",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_ee4fb69f-1889-420a-9b53-e468edf36d60",
              "handleId": "ET",
              "variableType": {
                "name": "ET",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "TIME"
                },
                "initialValue": {
                  "value": "T#0s"
                },
                "documentation": "second output parameter"
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          }
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5_CONTACT_7bafcc09-c1ab-4dec-bc50-ea25eb144d69__left-rail_input",
          "source": "left-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5",
          "sourceHandle": "left-rail",
          "target": "CONTACT_7bafcc09-c1ab-4dec-bc50-ea25eb144d69",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_7bafcc09-c1ab-4dec-bc50-ea25eb144d69_BLOCK_ee4fb69f-1889-420a-9b53-e468edf36d60__output_IN",
          "source": "CONTACT_7bafcc09-c1ab-4dec-bc50-ea25eb144d69",
          "sourceHandle": "output",
          "target": "BLOCK_ee4fb69f-1889-420a-9b53-e468edf36d60",
          "targetHandle": "IN"
        },
        {
          "id": "e_BLOCK_ee4fb69f-1889-420a-9b53-e468edf36d60_COIL_98c10754-4961-4972-a66f-b5c6cbf20ceb__Q_input",
          "source": "BLOCK_ee4fb69f-1889-420a-9b53-e468edf36d60",
          "sourceHandle": "Q",
          "target": "COIL_98c10754-4961-4972-a66f-b5c6cbf20ceb",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_98c10754-4961-4972-a66f-b5c6cbf20ceb_COIL_9a488f32-ee5b-47ed-b632-523bb12a421e__output_input",
          "source": "COIL_98c10754-4961-4972-a66f-b5c6cbf20ceb",
          "sourceHandle": "output",
          "target": "COIL_9a488f32-ee5b-47ed-b632-523bb12a421e",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_9a488f32-ee5b-47ed-b632-523bb12a421e_right-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5__output_right-rail",
          "source": "COIL_9a488f32-ee5b-47ed-b632-523bb12a421e",
          "sourceHandle": "output",
          "target": "right-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_9d0a9b10-af5b-4b74-b564-154dc9bff938_BLOCK_ee4fb69f-1889-420a-9b53-e468edf36d60__output_PT",
          "source": "VARIABLE_9d0a9b10-af5b-4b74-b564-154dc9bff938",
          "sourceHandle": "output",
          "target": "BLOCK_ee4fb69f-1889-420a-9b53-e468edf36d60",
          "targetHandle": "PT"
        },
        {
          "id": "e_BLOCK_ee4fb69f-1889-420a-9b53-e468edf36d60_VARIABLE_b869c785-e936-4f20-b1c3-2a91425252a1__ET_input",
          "source": "BLOCK_ee4fb69f-1889-420a-9b53-e468edf36d60",
          "sourceHandle": "ET",
          "target": "VARIABLE_b869c785-e936-4f20-b1c3-2a91425252a1",
          "targetHandle": "input"
        }
      ]
    },
    {
      "id": "rung_main_1274a241-881c-4791-93dd-7b70a85c0c01",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        747,
        134
      ],
      "nodes": [
        {
          "id": "left-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "height": 40,
          "width": 3,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "9904779",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false,
            "hasDivergence": false
          }
        },
        {
          "id": "CONTACT_0ee29a31-ab72-40fc-9e7d-6c79195bf932",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "height": 24,
          "width": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "9736353",
            "variable": {
              "name": "YellowOn",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "bool"
              },
              "location": "",
              "initialValue": "False",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          }
        },
        {
          "id": "BLOCK_6de811bf-c57e-4621-8f59-ce5faad80944",
          "type": "block",
          "position": {
            "x": 257,
            "y": 14
          },
          "height": 100,
          "width": 66,
          "measured": {
            "width": 66,
            "height": 100
          },
          "draggable": true,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "PT",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 323,
                  "y": 50
                },
                "relPosition": {
                  "x": 66,
                  "y": 36
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 323,
                  "y": 90
                },
                "relPosition": {
                  "x": 66,
                  "y": 76
                },
                "id": "ET",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "PT",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 323,
                  "y": 50
                },
                "relPosition": {
                  "x": 66,
                  "y": 36
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 323,
                  "y": 90
                },
                "relPosition": {
                  "x": 66,
                  "y": 76
                },
                "id": "ET",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 257,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "IN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 323,
                "y": 50
              },
              "relPosition": {
                "x": 66,
                "y": 36
              },
              "id": "Q",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "8110109",
            "variant": {
              "name": "TON",
              "type": "function-block",
              "language": "st",
              "variables": [
                {
                  "name": "IN",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "documentation": "first input parameter"
                },
                {
                  "name": "PT",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  },
                  "documentation": "second input parameter"
                },
                {
                  "name": "Q",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "initialValue": {
                    "value": "FALSE"
                  },
                  "documentation": "first output parameter"
                },
                {
                  "name": "ET",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  },
                  "initialValue": {
                    "value": "T#0s"
                  },
                  "documentation": "second output parameter"
                },
                {
                  "name": "STATE",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "SINT"
                  },
                  "initialValue": {
                    "value": "0"
                  },
                  "documentation": "internal state: 0-reset, 1-counting, 2-set"
                },
                {
                  "name": "PREV_IN",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "initialValue": {
                    "value": "FALSE"
                  }
                },
                {
                  "name": "CURRENT_TIME",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  }
                },
                {
                  "name": "START_TIME",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  }
                }
              ],
              "body": "{__SET_VAR(data__->,CURRENT_TIME,,__CURRENT_TIME)}\n\n      IF ((STATE = 0) AND NOT(PREV_IN) AND IN)   (* found rising edge on IN *)\n      THEN\n        (* start timer... *)\n        STATE := 1;\n        Q := TRUE;\n        START_TIME := CURRENT_TIME;\n\n      ELSE\n        (* STATE is 1 or 2 !! *)\n        IF (NOT(IN))\n        THEN\n          ET := T#0s;\n          Q := FALSE;\n          STATE := 0;\n\n        ELSIF (STATE = 1)\n        THEN\n          IF ((START_TIME + PT) <= CURRENT_TIME)\n          THEN\n            STATE := 2;\n            Q := TRUE;\n            ET := PT;\n          ELSE\n            ET := CURRENT_TIME - START_TIME;\n          END_IF;\n        END_IF;\n\n      END_IF;\n\n      PREV_IN := IN;",
              "documentation": "The on-delay timer can be used to delay setting an output true, for fixed period after an input becomes true."
            },
            "variable": {
              "name": "YellowTimer",
              "type": {
                "definition": "derived",
                "value": "TON"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "executionControl": false,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "ET",
                "type": "output",
                "variable": {
                  "name": ""
                }
              },
              {
                "handleId": "PT",
                "type": "input",
                "variable": {
                  "name": "T#3s"
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          }
        },
        {
          "id": "COIL_868a5ca5-8965-4fb9-82b0-72933f3595b8",
          "type": "coil",
          "position": {
            "x": 488,
            "y": 38
          },
          "height": 24,
          "width": 28,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 488,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 516,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "reset",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 488,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 516,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 488,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 516,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "9218131",
            "variable": {
              "name": "YellowOn",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "bool"
              },
              "location": "",
              "initialValue": "False",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          }
        },
        {
          "id": "COIL_95d7ad75-9623-4e20-9875-4cbb7f3ec8f6",
          "type": "coil",
          "position": {
            "x": 606,
            "y": 38
          },
          "height": 24,
          "width": 28,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 606,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 634,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "set",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 606,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 634,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 606,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 634,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "6667873",
            "variable": {
              "name": "RedOn",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "bool"
              },
              "location": "",
              "initialValue": "False",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          }
        },
        {
          "id": "right-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5",
          "type": "powerRail",
          "position": {
            "x": 744,
            "y": 30
          },
          "height": 40,
          "width": 3,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 744
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "7511612",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false,
            "hasDivergence": false
          }
        },
        {
          "id": "VARIABLE_a2ac5b91-d807-4844-af14-f8945bcb06fd",
          "type": "variable",
          "position": {
            "x": 147,
            "y": 74
          },
          "height": 32,
          "width": 80,
          "measured": {
            "width": 80,
            "height": 32
          },
          "draggable": false,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 307,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "2869337",
            "variable": {
              "name": "T#3s"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_6de811bf-c57e-4621-8f59-ce5faad80944",
              "handleId": "PT",
              "variableType": {
                "name": "PT",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "TIME"
                },
                "documentation": "second input parameter"
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          }
        },
        {
          "id": "VARIABLE_cd2d1ef9-994a-425f-b53d-5397b997860b",
          "type": "variable",
          "position": {
            "x": 353,
            "y": 74
          },
          "height": 32,
          "width": 80,
          "measured": {
            "width": 80,
            "height": 32
          },
          "draggable": false,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 353,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 353,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 353,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "1882267",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_6de811bf-c57e-4621-8f59-ce5faad80944",
              "handleId": "ET",
              "variableType": {
                "name": "ET",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "TIME"
                },
                "initialValue": {
                  "value": "T#0s"
                },
                "documentation": "second output parameter"
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          }
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5_CONTACT_0ee29a31-ab72-40fc-9e7d-6c79195bf932__left-rail_input",
          "source": "left-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5",
          "sourceHandle": "left-rail",
          "target": "CONTACT_0ee29a31-ab72-40fc-9e7d-6c79195bf932",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_0ee29a31-ab72-40fc-9e7d-6c79195bf932_BLOCK_6de811bf-c57e-4621-8f59-ce5faad80944__output_IN",
          "source": "CONTACT_0ee29a31-ab72-40fc-9e7d-6c79195bf932",
          "sourceHandle": "output",
          "target": "BLOCK_6de811bf-c57e-4621-8f59-ce5faad80944",
          "targetHandle": "IN"
        },
        {
          "id": "e_BLOCK_6de811bf-c57e-4621-8f59-ce5faad80944_COIL_868a5ca5-8965-4fb9-82b0-72933f3595b8__Q_input",
          "source": "BLOCK_6de811bf-c57e-4621-8f59-ce5faad80944",
          "sourceHandle": "Q",
          "target": "COIL_868a5ca5-8965-4fb9-82b0-72933f3595b8",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_868a5ca5-8965-4fb9-82b0-72933f3595b8_COIL_95d7ad75-9623-4e20-9875-4cbb7f3ec8f6__output_input",
          "source": "COIL_868a5ca5-8965-4fb9-82b0-72933f3595b8",
          "sourceHandle": "output",
          "target": "COIL_95d7ad75-9623-4e20-9875-4cbb7f3ec8f6",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_95d7ad75-9623-4e20-9875-4cbb7f3ec8f6_right-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5__output_right-rail",
          "source": "COIL_95d7ad75-9623-4e20-9875-4cbb7f3ec8f6",
          "sourceHandle": "output",
          "target": "right-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_a2ac5b91-d807-4844-af14-f8945bcb06fd_BLOCK_6de811bf-c57e-4621-8f59-ce5faad80944__output_PT",
          "source": "VARIABLE_a2ac5b91-d807-4844-af14-f8945bcb06fd",
          "sourceHandle": "output",
          "target": "BLOCK_6de811bf-c57e-4621-8f59-ce5faad80944",
          "targetHandle": "PT"
        },
        {
          "id": "e_BLOCK_6de811bf-c57e-4621-8f59-ce5faad80944_VARIABLE_cd2d1ef9-994a-425f-b53d-5397b997860b__ET_input",
          "source": "BLOCK_6de811bf-c57e-4621-8f59-ce5faad80944",
          "sourceHandle": "ET",
          "target": "VARIABLE_cd2d1ef9-994a-425f-b53d-5397b997860b",
          "targetHandle": "input"
        }
      ]
    },
    {
      "id": "rung_main_c7dd0b69-211b-4f8c-87dd-ecb593308757",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        747,
        134
      ],
      "nodes": [
        {
          "id": "left-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "height": 40,
          "width": 3,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "2340171",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false,
            "hasDivergence": false
          }
        },
        {
          "id": "CONTACT_214a34bb-034c-4ab7-a9e6-30c2921a7ff5",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "height": 24,
          "width": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "6541474",
            "variable": {
              "name": "RedOn",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "bool"
              },
              "location": "",
              "initialValue": "False",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          }
        },
        {
          "id": "BLOCK_a02d4802-d98d-4877-a2c1-a9b76942cbf1",
          "type": "block",
          "position": {
            "x": 257,
            "y": 14
          },
          "height": 100,
          "width": 66,
          "measured": {
            "width": 66,
            "height": 100
          },
          "draggable": true,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "PT",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 323,
                  "y": 50
                },
                "relPosition": {
                  "x": 66,
                  "y": 36
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 323,
                  "y": 90
                },
                "relPosition": {
                  "x": 66,
                  "y": 76
                },
                "id": "ET",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "PT",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 323,
                  "y": 50
                },
                "relPosition": {
                  "x": 66,
                  "y": 36
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 323,
                  "y": 90
                },
                "relPosition": {
                  "x": 66,
                  "y": 76
                },
                "id": "ET",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 257,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "IN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 323,
                "y": 50
              },
              "relPosition": {
                "x": 66,
                "y": 36
              },
              "id": "Q",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "2868493",
            "variant": {
              "name": "TON",
              "type": "function-block",
              "language": "st",
              "variables": [
                {
                  "name": "IN",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "documentation": "first input parameter"
                },
                {
                  "name": "PT",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  },
                  "documentation": "second input parameter"
                },
                {
                  "name": "Q",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "initialValue": {
                    "value": "FALSE"
                  },
                  "documentation": "first output parameter"
                },
                {
                  "name": "ET",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  },
                  "initialValue": {
                    "value": "T#0s"
                  },
                  "documentation": "second output parameter"
                },
                {
                  "name": "STATE",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "SINT"
                  },
                  "initialValue": {
                    "value": "0"
                  },
                  "documentation": "internal state: 0-reset, 1-counting, 2-set"
                },
                {
                  "name": "PREV_IN",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "initialValue": {
                    "value": "FALSE"
                  }
                },
                {
                  "name": "CURRENT_TIME",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  }
                },
                {
                  "name": "START_TIME",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  }
                }
              ],
              "body": "{__SET_VAR(data__->,CURRENT_TIME,,__CURRENT_TIME)}\n\n      IF ((STATE = 0) AND NOT(PREV_IN) AND IN)   (* found rising edge on IN *)\n      THEN\n        (* start timer... *)\n        STATE := 1;\n        Q := TRUE;\n        START_TIME := CURRENT_TIME;\n\n      ELSE\n        (* STATE is 1 or 2 !! *)\n        IF (NOT(IN))\n        THEN\n          ET := T#0s;\n          Q := FALSE;\n          STATE := 0;\n\n        ELSIF (STATE = 1)\n        THEN\n          IF ((START_TIME + PT) <= CURRENT_TIME)\n          THEN\n            STATE := 2;\n            Q := TRUE;\n            ET := PT;\n          ELSE\n            ET := CURRENT_TIME - START_TIME;\n          END_IF;\n        END_IF;\n\n      END_IF;\n\n      PREV_IN := IN;",
              "documentation": "The on-delay timer can be used to delay setting an output true, for fixed period after an input becomes true."
            },
            "variable": {
              "name": "RedTimer",
              "type": {
                "definition": "derived",
                "value": "TON"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "executionControl": false,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "ET",
                "type": "output",
                "variable": {
                  "name": ""
                }
              },
              {
                "handleId": "PT",
                "type": "input",
                "variable": {
                  "name": "T#13s"
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          }
        },
        {
          "id": "COIL_349c1c3f-1625-409b-a608-e05b69cecd8b",
          "type": "coil",
          "position": {
            "x": 488,
            "y": 38
          },
          "height": 24,
          "width": 28,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 488,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 516,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "reset",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 488,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 516,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 488,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 516,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "10533589",
            "variable": {
              "name": "RedOn",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "bool"
              },
              "location": "",
              "initialValue": "False",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          }
        },
        {
          "id": "COIL_b4cdfbf1-94f8-4173-a1b5-50bbd1052934",
          "type": "coil",
          "position": {
            "x": 606,
            "y": 38
          },
          "height": 24,
          "width": 28,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 606,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 634,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "set",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 606,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 634,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 606,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 634,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "10728587",
            "variable": {
              "name": "GreenOn",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "bool"
              },
              "location": "",
              "initialValue": "False",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          }
        },
        {
          "id": "right-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5",
          "type": "powerRail",
          "position": {
            "x": 744,
            "y": 30
          },
          "height": 40,
          "width": 3,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 744
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "8062484",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false,
            "hasDivergence": false
          }
        },
        {
          "id": "VARIABLE_f4f3ee0d-4148-48a5-8a28-d277ed0dfcc5",
          "type": "variable",
          "position": {
            "x": 147,
            "y": 74
          },
          "height": 32,
          "width": 80,
          "measured": {
            "width": 80,
            "height": 32
          },
          "draggable": false,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 307,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "9683176",
            "variable": {
              "name": "T#13s"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_a02d4802-d98d-4877-a2c1-a9b76942cbf1",
              "handleId": "PT",
              "variableType": {
                "name": "PT",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "TIME"
                },
                "documentation": "second input parameter"
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          }
        },
        {
          "id": "VARIABLE_ff7ec120-479d-4854-9a04-70cfaf94c3d1",
          "type": "variable",
          "position": {
            "x": 353,
            "y": 74
          },
          "height": 32,
          "width": 80,
          "measured": {
            "width": 80,
            "height": 32
          },
          "draggable": false,
          "selectable": true,
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 353,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 353,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 353,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "10500502",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_a02d4802-d98d-4877-a2c1-a9b76942cbf1",
              "handleId": "ET",
              "variableType": {
                "name": "ET",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "TIME"
                },
                "initialValue": {
                  "value": "T#0s"
                },
                "documentation": "second output parameter"
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          }
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5_CONTACT_214a34bb-034c-4ab7-a9e6-30c2921a7ff5__left-rail_input",
          "source": "left-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5",
          "sourceHandle": "left-rail",
          "target": "CONTACT_214a34bb-034c-4ab7-a9e6-30c2921a7ff5",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_214a34bb-034c-4ab7-a9e6-30c2921a7ff5_BLOCK_a02d4802-d98d-4877-a2c1-a9b76942cbf1__output_IN",
          "source": "CONTACT_214a34bb-034c-4ab7-a9e6-30c2921a7ff5",
          "sourceHandle": "output",
          "target": "BLOCK_a02d4802-d98d-4877-a2c1-a9b76942cbf1",
          "targetHandle": "IN"
        },
        {
          "id": "e_BLOCK_a02d4802-d98d-4877-a2c1-a9b76942cbf1_COIL_349c1c3f-1625-409b-a608-e05b69cecd8b__Q_input",
          "source": "BLOCK_a02d4802-d98d-4877-a2c1-a9b76942cbf1",
          "sourceHandle": "Q",
          "target": "COIL_349c1c3f-1625-409b-a608-e05b69cecd8b",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_349c1c3f-1625-409b-a608-e05b69cecd8b_COIL_b4cdfbf1-94f8-4173-a1b5-50bbd1052934__output_input",
          "source": "COIL_349c1c3f-1625-409b-a608-e05b69cecd8b",
          "sourceHandle": "output",
          "target": "COIL_b4cdfbf1-94f8-4173-a1b5-50bbd1052934",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_b4cdfbf1-94f8-4173-a1b5-50bbd1052934_right-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5__output_right-rail",
          "source": "COIL_b4cdfbf1-94f8-4173-a1b5-50bbd1052934",
          "sourceHandle": "output",
          "target": "right-rail-rung_main_f8a40b39-f2d5-41d7-b8d4-41466d6b55d5",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_f4f3ee0d-4148-48a5-8a28-d277ed0dfcc5_BLOCK_a02d4802-d98d-4877-a2c1-a9b76942cbf1__output_PT",
          "source": "VARIABLE_f4f3ee0d-4148-48a5-8a28-d277ed0dfcc5",
          "sourceHandle": "output",
          "target": "BLOCK_a02d4802-d98d-4877-a2c1-a9b76942cbf1",
          "targetHandle": "PT"
        },
        {
          "id": "e_BLOCK_a02d4802-d98d-4877-a2c1-a9b76942cbf1_VARIABLE_ff7ec120-479d-4854-9a04-70cfaf94c3d1__ET_input",
          "source": "BLOCK_a02d4802-d98d-4877-a2c1-a9b76942cbf1",
          "sourceHandle": "ET",
          "target": "VARIABLE_ff7ec120-479d-4854-9a04-70cfaf94c3d1",
          "targetHandle": "input"
        }
      ]
    }
  ]
}
END_PROGRAM