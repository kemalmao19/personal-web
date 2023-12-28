let userName = "Rhymeflakes" |> React.string

module Title = {
    @react.component
    let make = (~color) => {
        <h1 className=`${color} font-logo text-3xl font-bold p-3`> {userName} </h1>
    }
}