let description =
  `Hello, iam Rhymeflakes. Curious data analyst venturing into the world of full-stack ML engineer, fueled by a passion for data-driven innovation.`
  ->React.string

@react.component
let make = (~span) => {
  <CardStyle span={span}>
    <div className={"flex justify-between items-start"}>
      <img src={"logo.png"} />
      <button
        className={"border-2 hover:border-4 border-slate-200 rounded-xl flex justify-center items-center gap-2 py-1 px-3 transition-all duration-100"}>
        <img src={"sync.svg"} width="14" height="14" className={"rotate-90"} />
        <p> {React.string("Follow")} </p>
      </button>
    </div>
    <p> {description} </p>
  </CardStyle>
}
