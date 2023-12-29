@react.component
let make = (~state) => {
  <div
    className={`relative flex justify-center items-center w-full h-full bg-white rounded-3xl ${state === "Projects" ||
        state === "All"
        ? ""
        : "opacity-20"} hover:scale-105 transition-all duration-200 cursor-pointer row-span-2`}>
    <img src={"project.png"} />
    <a href={"https://github.com/kemalmao19"} className={"absolute bottom-4 left-4 flex bg-white py-1 px-3 rounded-full hover:border-4 border-gray-200 gap-2"}>
      <img
        src={"arrow.svg"}
        width={"20"}
        height={"20"}
        className={" "}
      />
      <p className={""}>{React.string("Github")}</p>
    </a>
  </div>
}
