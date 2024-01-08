@react.component
let make = (~state, ~id) => {
  <div
    className={`relative flex justify-center items-center w-full h-full bg-white rounded-3xl ${state === "Media" ||
        state === "All"
        ? ""
        : "opacity-20"} hover:scale-105 transition-all duration-200 cursor-pointer`}>
    <img src={"logo.png"} width={"70"} height={"70"} />
    <a href={"https://elgharuty.com"} className={"absolute bottom-4 left-4 flex bg-white py-1 px-3 rounded-full hover:border-4 border-gray-200 gap-2 transition-all duration-100 ease-in-out"}>
      <img
        src={"arrow.svg"}
        width={"20"}
        height={"20"}
        className={" "}
      />
      <p className={""}>{React.string("My Blog")}</p>
    </a>
  </div>
}
