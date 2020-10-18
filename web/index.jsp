<%@page contentType="text/html" pageEncoding="UTF-8"
        language="java"
        session="true"
%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="German Ganys">
    <title>Lab 2</title>


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="js/scripts.js"></script>
</head>
<body>

<main role="main" class="container">
    <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded shadow-lg">
        <img class="mr-3" src="img/blade.svg" alt="" width="48" height="48">
        <div class="lh-100">
            <h6 class="mb-0 text-white lh-100">Web Laboratory</h6>
            <small>PIP install)</small>
        </div>
    </div>

    <div class="my-3 p-3 bg-white rounded shadow-lg">
        <h6 class="pb-2 mb-0">Enter Data:</h6>
        <div class="container">
            <div class="card-deck">
                <div class="card">
                    <form class="form card-body" id="form" action="checking" method="post"
                          onsubmit="return validate(this);">

                        <table class="table table-bordered radio_btn">
                            <tr>
                                <th scope="col"></th>
                                <th scope="col"><input type="radio" id="-5" name="X" value="-5">-5</th>
                                <th scope="col"><input type="radio" id="-4" name="X" value="-4">-4</th>
                                <th scope="col"><input type="radio" id="-3" name="X" value="-3">-3</th>
                            </tr>
                            <tr>
                                <td scope="col"> X =</td>
                                <th scope="col"><input type="radio" id="-2" name="X" value="-2">-2</th>
                                <th scope="col"><input type="radio" id="-1" name="X" value="-1">-1</th>
                                <th scope="col"><input type="radio" id="0" name="X" value="0" checked>0</th>
                            </tr>
                            <tr>
                                <th scope="col"></th>
                                <th scope="col"><input type="radio" id="1" name="X" value="1">1</th>
                                <th scope="col"><input type="radio" id="2" name="X" value="2">2</th>
                                <th scope="col"><input type="radio" id="3" name="X" value="3">3</th>
                            </tr>
                        </table>

                        <label for="Y"> Y = </label>
                        <input class="input_Y" id="Y" type="text" name="Y" placeholder="(-3 ... 3)"><br>

                        <label for="R"> R = </label>
                        <select size="4" multiple name="R" id="R">
                            <option disabled>Select R</option>
                            <option selected value="1" onclick="drawCanvas('canvas', 1)">1</option>
                            <option value="2" onclick="drawCanvas('canvas', 2)">2</option>
                            <option value="3" onclick="drawCanvas('canvas', 3)">3</option>
                            <option value="4" onclick="drawCanvas('canvas', 4)">4</option>
                            <option value="5" onclick="drawCanvas('canvas', 5)">5</option>
                        </select>
                        <br>
                        <small class="d-block text-left mt-3">
                            <input class="btn" type="submit" name="submit" value="Send" style="background-color: #6f42c1;color: white">
                        </small>
                    </form>
                </div>
                <div class="card">
                    <div class="card-body"
                         style="min-height: 300px;min-width: 300px; max-height: 300px;max-width: 300px">
                        <canvas id="canvas" onclick="clickCanvas('canvas', document.getElementById('form').R.value)"
                                style="background-color:#ffffff;" width="300"
                                height="300"></canvas>
                    </div>
                </div>
            </div>

        </div>

    </div>

</main>
</body>
</html>
