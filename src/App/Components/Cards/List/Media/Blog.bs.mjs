// Generated by ReScript, PLEASE EDIT WITH CARE

import * as JsxRuntime from "react/jsx-runtime";

function Blog(props) {
  var state = props.state;
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx("img", {
                      height: "70",
                      src: "logo.png",
                      width: "70"
                    }),
                JsxRuntime.jsxs("a", {
                      children: [
                        JsxRuntime.jsx("img", {
                              className: " ",
                              height: "20",
                              src: "arrow.svg",
                              width: "20"
                            }),
                        JsxRuntime.jsx("p", {
                              children: "My Blog",
                              className: ""
                            })
                      ],
                      className: "absolute bottom-4 left-4 flex bg-white py-1 px-3 rounded-full hover:border-4 border-gray-200 gap-2 transition-all duration-100 ease-in-out",
                      href: "https://elgharuty.com"
                    })
              ],
              className: "relative flex justify-center items-center w-full h-full bg-white rounded-3xl " + (
                state === "Media" || state === "All" ? "" : "opacity-20"
              ) + " hover:scale-105 transition-all duration-200 cursor-pointer"
            });
}

var make = Blog;

export {
  make ,
}
/* react/jsx-runtime Not a pure module */
