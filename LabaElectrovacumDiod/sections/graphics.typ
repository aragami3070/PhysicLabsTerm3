#import "@preview/plotst:0.2.0": *
#let graph_plot_test() = {
    let data = (
      (0, 4), (2, 2), (3, 0), (4, 4), (5, 7), (6, 6), (7, 9), (8, 5), (9, 9), (10, 1)
    )
    let data2 = (
      (0, 0), (2, 2), (3, 1), (4, 4), (5, 2), (6, 6), (7, 5), (8, 7), (9, 10), (10, 3)
    )
    let x_axis = axis(min: 0, max: 11, step: 2, location: "bottom")
    let y_axis = axis(min: 0, max: 11, step: 2, location: "left", helper_lines: false)
    let pl = plot(data: data, axes: (x_axis, y_axis))
    let graphDisplay1 = graph_plot(pl, (100%, 25%), markings: [])
    let graphDisplay2 = graph_plot(pl, (100%, 25%), markings: [ #circle(radius: 2pt, fill: black) ])
    let graphDisplay3 = graph_plot(pl, (100%, 25%), rounding: 30%, caption: "Graph Plot with caption and rounding", markings: [#circle(radius: 3pt, fill: black)])
    overlay((graphDisplay1, graphDisplay3, graphDisplay2), (100%, 25%))
}

#graph_plot_test()
