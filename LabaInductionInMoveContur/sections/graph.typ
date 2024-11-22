
#import "@preview/plotst:0.2.0": *
#let graph_plot_test() = {
    let data1 = (
      (0.02851, 4), (0.0209, 3), (0.01387, 2), (0.0059, 1)
    )
    let x_axis = axis(min: 0, max: 0.03, step: 0.004, location: "bottom", helper_lines: true, title: $v " " м/c$)
    let y_axis = axis(min: 0, max: 5, step: 1, location: "left", helper_lines: true, title: $U " " B$)
    let pl1 = plot(data: data1, axes: (x_axis, y_axis))
    let graphDisplay1 = graph_plot(pl1, (100%, 25%), caption: "График", markings: [#circle(radius: 2.5pt, fill: black)], stroke: blue)
    // let graphDisplay3 = graph_plot(pl, (100%, 25%), rounding: 30%, caption: "Graph Plot with caption and rounding", markings: [#circle(radius: 2pt, fill: black)], stroke: blue)
    // graphDisplay1
    graphDisplay1
}

#graph_plot_test()
