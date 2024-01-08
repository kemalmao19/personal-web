@react.component
let make = (~state) => {
  <div
    className={`relative flex justify-center items-center w-full h-full bg-white rounded-3xl ${state === "Projects" ||
        state === "All"
        ? ""
        : "opacity-20"} hover:scale-105 transition-all duration-200 cursor-pointer row-span-2 overflow-hidden`}>
    <img className={"absolute top-16 -right-16 transform -rotate-12"} src={"adopthunt.png"} />
    <a href={"https://adopt-hunt.vercel.app"} className={"absolute bottom-4 left-4 flex bg-white py-1 px-3 rounded-full hover:border-4 border-gray-200 gap-2 transition-all duration-100 ease-in-out"}>
      <img
        src={"arrow.svg"}
        width={"20"}
        height={"20"}
        className={" "}
      />
      <p className={""}>{React.string("Adopt Hunt")}</p>
    </a>
  </div>
}
