<?php
/**
 * The $input variable contains an array of digits
 * Return an array which will contain the same digits but repetitive by its value
 * without changing the order.
 * Example: [1,3,2] => [1,3,3,3,2,2]
 *
 * @param  array  $input
 * @return array
 */
function repeatArrayValues(array $input)
{
    $counted = [];

    for($i = 0; $i < count($input); $i++){
        for($k = 0; $k < $input[$i]; $k++){
            array_push($counted, $input[$i]);
        }
    }

    return $counted;

}

/**
 * The $input variable contains an array of digits
 * Return the lowest unique value or 0 if there is no unique values or array is empty.
 * Example: [1, 2, 3, 2, 1, 5, 6] => 3
 *
 * @param  array  $input
 * @return int
 */
function getUniqueValue(array $input)
{
    if(empty($input)){
        $lowestItem = 0;
    }else{
        sort($input);
        $arr = [];
        $countDuplicates = array_count_values($input);

        foreach($countDuplicates as $key=>$value) {
            if($value < 2){
                array_push($arr, $key);
            }
        }
        if(empty($arr) === true){
            $lowestItem = 0;
        }else{
            $lowestItem = min($arr);
        }

    }
    return $lowestItem;
}

/**
 * The $input variable contains an array of arrays
 * Each sub array has keys: name (contains strings), tags (contains array of strings)
 * Return the list of names grouped by tags
 * !!! The 'names' in returned array must be sorted ascending.
 *
 * Example:
 * [
 *  ['name' => 'potato', 'tags' => ['vegetable', 'yellow']],
 *  ['name' => 'apple', 'tags' => ['fruit', 'green']],
 *  ['name' => 'orange', 'tags' => ['fruit', 'yellow']],
 * ]
 *
 * Should be transformed into:
 * [
 *  'fruit' => ['apple', 'orange'],
 *  'green' => ['apple'],
 *  'vegetable' => ['potato'],
 *  'yellow' => ['orange', 'potato'],
 * ]
 *
 * @param  array  $input
 * @return array
 */
function groupByTag(array $input)
{
        $new_array = [];

        foreach($input as $row){

            foreach($row['tags'] as $tag){
                $new_array[$tag][] = $row['name'];
            }
        }

        foreach($new_array as $tag => $names){
            sort($names);
            $new_array[$tag] = $names;
        }

        return $new_array;
}