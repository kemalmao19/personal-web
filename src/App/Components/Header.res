open Profile

let menu = ["All", "About", "Projects", "Media"]
let iconColor = "bg-clip-text text-transparent bg-gradient-to-r from-violet-400 to-blue-500"

@react.component
let make = (~state, ~handle) => {
  let colorMenu = (menu, state) =>
    switch menu === state {
    | true => "bg-white"
    | _ => ""
    }
    
  <header className={"flex justify-between items-center"}>
    <Title color={iconColor} />
    <div className={"flex p-2 gap-2 menu-item rounded-3xl"}>
      {menu
      ->Belt.Array.mapWithIndex((i, x) =>
        <div
          key={i |> Belt.Int.toString}
          id={x}
          className={`py-1 px-3 ${colorMenu(x, state)} rounded-full cursor-pointer hover:text-gray-400 transition-colors duration-300`}
          onClick={e => handle(e)}>
          <div className={""}> {x |> React.string} </div>
        </div>
      )
      ->React.array}
    </div>
    <p className={"cursor-pointer"}> {"Contact" |> React.string} </p>
  </header>
}
