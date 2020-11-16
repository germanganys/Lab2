<%@page contentType="text/html" pageEncoding="UTF-8"
        language="java"
        session="true"
%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Lab 2</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="js/scripts.js"></script>
</head>
<body>

<main role="main" class="container">
    <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded shadow-lg">
        <div class="lh-100">
            <h2 class="mb-0 text-white lh-100">Бондаренко Данила Эдуардович P3210 10814</h2>
        </div>
    </div>

    <div class="my-3 p-3 bg-white rounded shadow-lg">
        <h6 class="pb-2 mb-0">Enter Data:</h6>
        <div class="container">
            <div class="card-deck">
                <div class="card">
                    <form class="form card-body" id="form" action="check" method="post"
                          onsubmit="return validate(this);">
                        <label> X = </label>
                        <table class="table radio_btn">
                            <tr>
                                <td>
                                    <input type="radio" name="X" value="-4">-4</input>
                                </td>
                                <td>
                                    <input type="radio" name="X" value="-3">-3</input>
                                </td>

                                <td>
                                    <input type="radio" name="X" value="-2">-2</input>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" name="X" value="-1">-1</input>
                                </td>
                                <td>
                                    <input type="radio" name="X" value="0" checked>-0</input>
                                </td>
                                <td>
                                    <input type="radio" name="X" value="1">1</input>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" name="X" value="2">2</input>
                                </td>
                                <td>
                                    <input type="radio" name="X" value="3">3</input>
                                </td>
                                <td>
                                    <input type="radio" name="X" value="4">4</input>
                                </td>
                            </tr>
                        </table>

                        <label> Y = </label>
                        <input type="text" name="Y" id="Y" placeholder="(-5...5)">

                        <label> R = </label>
                        <input type="text" name="R" id="r" value="1" readonly>
                        <input type="checkbox" class="r" value="1" onclick="drawCanvas('canvas', 1)">1</input>
                        <input type="checkbox" class="r" value="2" onclick="drawCanvas('canvas', 2)">2</input>
                        <input type="checkbox" class="r" value="3" onclick="drawCanvas('canvas', 3)">3</input>
                        <input type="checkbox" class="r" value="4" onclick="drawCanvas('canvas', 4)">4</input>
                        <input type="checkbox" class="r" value="5" onclick="drawCanvas('canvas', 5)">5</input>
                        <br>
                        <small class="d-block text-left mt-3">
                            <input class="button" type="submit" name="submit" value="Send">
                            <a href="check" class="btn">Show results</a>
                        </small>
                    </form>
                </div>
                <br>
                <div class="card">
                    <div class="card-body"
                         style="min-height: 300px;min-width: 300px; max-height: 300px;max-width: 300px">
                        <canvas id="canvas" onclick="clickCanvas('canvas')"
                                style="background-color:#ffffff;" width="300"
                                height="300"></canvas>
                    </div>
                </div>

                <div class="my-3 p-3 bg-white rounded shadow-sm">
                    <table class="table table-bordered tbl">
                        <tr>
                            <td>X</td>
                            <td>Y</td>
                            <td>R</td>
                            <td>Result</td>
                        </tr>
                        ${table}
                    </table>
                    <br>
                </div>

            </div>

        </div>

    </div>

</main>
</body>
</html>
