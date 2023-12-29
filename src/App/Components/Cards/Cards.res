@react.component
let make = (~state) => {
  let (isArranged, setArrange) = React.useState(() => true)

  let arrayData = [
    <Bio state={state} toggle={setArrange} arrange={isArranged} />,
    <Twitter state={state} />,
    <AdoptHunt state={state} />,
    <Github state={state} />,
    <Tech state={state} />
  ]

  let random = (arrange, array) =>
    switch arrange {
    | true =>
      array
      ->Belt.Array.map(item => {
        item
      })
      ->React.array
    | _ =>
      let random =
        array
        ->Belt.Array.shuffle
        ->Belt.Array.map(item => {
          item
        })
        ->React.array
      random
    }

  <div
    className={`grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 my-10 transition-transform duration-500 ease-in-out`}>
    {random(isArranged, arrayData)}
  </div>
}
