@react.component
let make = (~state, ~id) => {
  <div
    className={`relative bg-pink-300 flex justify-center items-center w-full h-full ${state === "About" ||
        state === "All"
        ? ""
        : "opacity-20"}
        p-4
          hover:scale-105 transition-all duration-200 cursor-pointer rounded-3xl`}>
    <img src={"tech.svg"} />
    <a href={"https://github.com/kemalmao19"} className={"absolute bottom-4 left-4 flex bg-white py-1 px-3 rounded-full hover:border-4 border-gray-200 gap-2 transition-all duration-100 ease-in-out"}>
      <img
        src={"arrow.svg"}
        width={"20"}
        height={"20"}
        className={" "}
      />
      <p className={""}>{React.string("Tech")}</p>
    </a>
  </div>
}
