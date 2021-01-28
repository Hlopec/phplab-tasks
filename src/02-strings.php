<?php
/**
 * The $input variable contains text in snake case (i.e. hello_world or this_is_home_task)
 * Transform it into camel cased string and return (i.e. helloWorld or thisIsHomeTask)
 * @see http://xahlee.info/comp/camelCase_vs_snake_case.html
 *
 * @param  string  $input
 * @return string
 */
function snakeCaseToCamelCase(string $input)
{
    $input = str_replace('_', ' ', $input);

    $input = str_replace(' ', '', ucwords($input));

    $input[0] = strtolower($input[0]);

    return $input;
}

/**
 * The $input variable contains multibyte text like 'ФЫВА олдж'
 * Mirror each word individually and return transformed text (i.e. 'АВЫФ ждло')
 * !!! do not change words order
 *
 * @param  string  $input
 * @return string
 */
function mirrorMultibyteString(string $input)
{
    $result = "";
    $words = explode(' ', $input);


//var_dump($words);

    for($i = 0; $i < count($words); $i++){

        $test = preg_split('//u', $words[$i], null, PREG_SPLIT_NO_EMPTY);

        for( $k = count($test); $k >= 0; $k--){
            $result = $result . $test[$k];
        }

        $result = $result . " ";

    }

    $result = ltrim($result);
    $result = rtrim($result);

    return $result;
}

/**
 * My friend wants a new band name for her band.
 * She likes bands that use the formula: 'The' + a noun with first letter capitalized.
 * However, when a noun STARTS and ENDS with the same letter,
 * she likes to repeat the noun twice and connect them together with the first and last letter,
 * combined into one word like so (WITHOUT a 'The' in front):
 * dolphin -> The Dolphin
 * alaska -> Alaskalaska
 * europe -> Europeurope
 * Implement this logic.
 *
 * @param  string  $noun
 * @return string
 */
function getBrandName(string $noun)
{
    $first = strtolower(substr($noun, 0, 1));
    $last = strtolower(substr($noun, -1, 1));

    if($first === $last){
        $bandFirst = $noun;
        $bandSecond = ltrim($noun, $noun[0]);
        $bandFull = $bandFirst . $bandSecond;
        $bandFull = ucwords($bandFull);
        return $bandFull;

    } else {
        return $bandFull = 'The ' . ucfirst($noun);
    }
}