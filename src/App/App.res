@react.component
let make = () => {
  let (section, setSection) = React.useState(() => "All")
  let handleClick = e => {
    let value = %raw(`e.target.id`)
    switch value {
    | "All" => setSection(_ => "All")
    | "About" => setSection(_ => "About")
    | "Projects" => setSection(_ => "Projects")
    | "Media" => setSection(_ => "Media")
    | _ => ()
    }
  }
  <main className={"m-10"}>
    <Header state={section} handle={handleClick} />
    <Cards/>
  </main>
}
