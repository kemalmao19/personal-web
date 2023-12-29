@react.component
let make = (~state) => {
  <div
    className={`relative bg-blue-300 flex justify-center items-center w-full h-full ${state === "About" ||
        state === "All"
        ? ""
        : "opacity-20"}
          hover:scale-105 transition-all duration-200 cursor-pointer rounded-3xl`}>
    <img src={"tw.svg"} width="70" height="70" />
    <a href={"https://x.com/kemalmao19"}><img src={"arrow.svg"} width={"40"} height={"40"} className={"absolute bottom-4 left-4 bg-white p-2 rounded-full hover:border-4 border-gray-200"} /></a>
  </div>
}
