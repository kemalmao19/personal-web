@react.component
let make = (~children, ~span) => (
    <div className= `bg-white p-8 rounded-3xl space-y-4 col-span-${span}`>
    {children}
    </div>
)