{
  "Gestures" = [
    {
      "pattern" = [
        [
          0
          750
        ]
      ];
      "command" = {
        "name" = "ScrollPageDown";
        "settings" = {
          "duration" = 100;
          "scrollProportion" = 100;
        };
      };
      "label" = "Down";
    }
    {
      "pattern" = [
        [
          0
          (-750)
        ]
      ];
      "command" = {
        "name" = "ScrollPageUp";
        "settings" = {
          "duration" = 100;
          "scrollProportion" = 100;
        };
      };
      "label" = "Up";
    }
    {
      "pattern" = [
        [
          0
          500
        ]
        [
          0
          (-500)
        ]
      ];
      "command" = {
        "name" = "ScrollTop";
        "settings" = {
          "duration" = 100;
        };
      };
      "label" = "Top";
    }
    {
      "pattern" = [
        [
          0
          (-500)
        ]
        [
          0
          500
        ]
      ];
      "command" = {
        "name" = "ScrollBottom";
        "settings" = {
          "duration" = 100;
        };
      };
      "label" = "Buttom";
    }
    {
      "pattern" = [
        [
          150
          0
        ]
        [
          60
          30
        ]
        [
          30
          60
        ]
        [
          0
          60
        ]
        [
          (-30)
          60
        ]
        [
          (-60)
          30
        ]
        [
          (-150)
          0
        ]
        [
          0
          (-10)
        ]
        [
          60
          0
        ]
        [
          60
          30
        ]
        [
          210
          210
        ]
      ];
      "command" = {
        "name" = "RestoreTab";
        "settings" = {
          "currentWindowOnly" = false;
        };
      };
      "label" = "Restore";
    }
    {
      "pattern" = [
        [
          (-90)
          0
        ]
        [
          (-90)
          30
        ]
        [
          (-90)
          60
        ]
        [
          (-30)
          60
        ]
        [
          (-30)
          120
        ]
        [
          30
          120
        ]
        [
          30
          60
        ]
        [
          90
          60
        ]
        [
          90
          30
        ]
        [
          90
          0
        ]
      ];
      "command" = {
        "name" = "CloseTab";
        "settings" = {
          "closePinned" = true;
          "nextFocus" = "default";
        };
      };
      "label" = "Close";
    }
  ];
  "Settings" = {
    "Gesture" = {
      "Command" = {
        "Style" = {
          "backgroundColor" = "#80801742";
          "fontColor" = "#ffffffff";
          "fontSize" = "8vh";
          "verticalPosition" = 50;
        };
      };
      "Trace" = {
        "Style" = {
          "lineWidth" = 8;
          "strokeStyle" = "#1145141a";
        };
      };
      "deviationTolerance" = 0.2;
      "distanceThreshold" = 64;
      "mouseButton" = "4";
    };
    "Rocker" = {
      "active" = true;
    };
    "Wheel" = {
      "active" = true;
      "mouseButton" = "4";
      "wheelDown" = {
        "name" = "FocusRightTab";
        "settings" = {
          "cycling" = true;
          "excludeDiscarded" = false;
        };
      };
      "wheelSensitivity" = 64;
      "wheelUp" = {
        "name" = "FocusLeftTab";
        "settings" = {
          "cycling" = true;
          "excludeDiscarded" = false;
        };
      };
    };
  };
}
