// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Cards from "./Components/Cards/Cards.bs.mjs";
import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as Header from "./Components/Header.bs.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function App(props) {
  var match = React.useState(function () {
        return "All";
      });
  var setSection = match[1];
  var section = match[0];
  var handleClick = function (e) {
    var value = e.target.innerHTML;
    switch (value) {
      case "About" :
          return Curry._1(setSection, (function (param) {
                        return "About";
                      }));
      case "All" :
          return Curry._1(setSection, (function (param) {
                        return "All";
                      }));
      case "Media" :
          return Curry._1(setSection, (function (param) {
                        return "Media";
                      }));
      case "Projects" :
          return Curry._1(setSection, (function (param) {
                        return "Projects";
                      }));
      default:
        return ;
    }
  };
  return JsxRuntime.jsxs("main", {
              children: [
                JsxRuntime.jsx(Header.make, {
                      state: section,
                      handle: handleClick
                    }),
                JsxRuntime.jsx(Cards.make, {
                      state: section
                    })
              ],
              className: "m-10"
            });
}

var make = App;

export {
  make ,
}
/* Cards Not a pure module */
