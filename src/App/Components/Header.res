open Profile

let menu = ["All", "About", "Projects", "Media"]
let iconColor = "bg-clip-text text-transparent bg-gradient-to-r from-violet-400 to-blue-500"

@react.component
let make = (~state, ~handle) => {
  <header className={"flex justify-between items-center"}>
    <Title color={iconColor} />
    <div className={"flex p-2 gap-4 menu-item rounded-3xl"}>
      {menu
      ->Belt.Array.mapWithIndex((i, x) =>
        <div
          key={i |>Belt.Int.toString}
          id={x}
          className={`py-1 px-3 ${x === state
              ? "bg-white"
              : ""} rounded-full transition-transform duration-500 cursor-pointer`}
          onClick={e => handle(e)}>
          {x |> React.string}
        </div>
      )
      ->React.array}
    </div>
    <p className={"cursor-pointer"}> {"Contact" |> React.string} </p>
  </header>
}
