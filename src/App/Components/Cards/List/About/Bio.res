let description =
  `Curious data analyst venturing into the world of full-stack Software Engineering, fueled by a passion for data-driven innovation.`->React.string

@react.component
let make = (~state, ~toggle, ~arrange, ~id) => {
  <div
    className={`${state === "About" || state === "All"
        ? ""
        : "opacity-20"} bg-white p-8 rounded-3xl space-y-4 col-span-2 hover:scale-105 transition-all duration-200 cursor-pointer`}>
    <div className={"flex justify-between items-start"}>
      <img src={"logo.png"} />
      <button
        className={"border-2 hover:border-4 border-slate-200 rounded-xl flex justify-center items-center gap-2 py-1 px-3 transition-all duration-100"}>
        <img
          src={"sync.svg"}
          width="14"
          height="14"
          className={"rotate-90 hover:rotate-0 transition-all duration-100"}
        />
        <p
          className={"hover:text-gray-400"}
          onClick={_ => toggle(_ => {arrange === true ? false : true})}>
          {React.string({arrange === true ? "Random" : "Arrange"})}
        </p>
      </button>
    </div>
    <p> {description} </p>
  </div>
}
