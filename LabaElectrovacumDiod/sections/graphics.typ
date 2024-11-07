#import "@preview/plotst:0.2.0": *
#let graph_plot_test() = {
    let data1 = (
      (0, 0), (10, 20), (20, 34), (30, 37), (40, 39), (50, 39), (60, 40), (80, 41), (100, 41), (120, 42), (140, 42), (160, 42), (200, 43), (300, 44), (420, 45)
    )
    let data2 = (
      (0, 1), (10, 63), (20, 200), (30, 300), (40, 382), (50, 430), (60, 446), (70, 452), (80, 456), (100, 462), (120, 466), (140, 470), (160, 474), (180, 476), (220, 482), (240, 484), (260, 486), (280, 487), (300, 488), 
      (320, 490), (400, 500), (500, 505)
    )
    let data3 = (
      (0, 3), (10, 108), (20, 242), (30, 544), (40, 772), (50, 1126), (60, 1503), (70, 1788)
    )
    let data4 = (
 (0, 0), (25, 8.5498797), (50, 13.572088), (75, 17.784467), (100, 21.544347), (125, 25), (150, 28.231081), (175, 31.286624), (200, 34.199519), (250, 39.685026), (300, 44.814047), (350, 49.664419), (400, 54.288352), (450, 58.723015), (500, 62.996052)
    )
    let x_axis = axis(min: 0, max: 550, step: 50, location: "bottom", helper_lines: true, title: $I_A$)
    let y_axis = axis(min: 0, max: 2000, step: 100, location: "left", helper_lines: true, title: $U_A$)
    let pl1 = plot(data: data1, axes: (x_axis, y_axis))
    let pl2 = plot(data: data2, axes: (x_axis, y_axis))
    let pl3 = plot(data: data3, axes: (x_axis, y_axis))
    let pl4 = plot(data: data3, axes: (x_axis, y_axis))
    let graphDisplay1 = graph_plot(pl1, (100%, 25%), caption: "График \n Синий: U = 4.4B \n Красный: U = 6B \n Зеленый: U = 6.6B", markings: [#circle(radius: 2pt, fill: black)], stroke: blue)
    let graphDisplay2 = graph_plot(pl2, (100%, 25%), markings: [#circle(radius: 2pt, fill: black)], stroke: red)
    let graphDisplay3 = graph_plot(pl3, (100%, 25%), markings: [#circle(radius: 2pt, fill: black)], stroke: green)
    let graphDisplay4 = graph_plot(pl4, (100%, 65%),caption: "График пример для иллюстрации I_A ~ U_A^(3/2)", markings: [#circle(radius: 2pt, fill: black)], stroke: green)
    // let graphDisplay3 = graph_plot(pl, (100%, 25%), rounding: 30%, caption: "Graph Plot with caption and rounding", markings: [#circle(radius: 2pt, fill: black)], stroke: blue)
    // graphDisplay1
    overlay((graphDisplay1, graphDisplay3, graphDisplay2), (100%, 60%))
    graphDisplay4
}

#graph_plot_test()
