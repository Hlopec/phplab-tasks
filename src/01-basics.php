<?php
/**
 * The $minute variable contains a number from 0 to 59 (i.e. 10 or 25 or 60 etc).
 * Determine in which quarter of an hour the number falls.
 * Return one of the values: "first", "second", "third" and "fourth".
 * Throw InvalidArgumentException if $minute is negative of greater then 60.
 * @see https://www.php.net/manual/en/class.invalidargumentexception.php
 *
 * @param  int  $minute
 * @return string
 * @throws InvalidArgumentException
 */
function getMinuteQuarter(int $minute)
{
    if($minute !== 0 || $minute > 60){
        throw new InvalidArgumentException('$minute is negative of greater then 60');
    }else if($minute > 0  && $minute <= 15){
        return "first";
    }
    else if($minute > 15 && $minute <=30){
        return "second";
    }
    else if($minute > 30 && $minute <= 45){
        return "third";
    }
    else if($minute > 45 && $minute <= 60 || $minute == 0){
        return "fourth";
    }
}

/**
 * The $year variable contains a year (i.e. 1995 or 2020 etc).
 * Return true if the year is Leap or false otherwise.
 * Throw InvalidArgumentException if $year is lower then 1900.
 * @see https://en.wikipedia.org/wiki/Leap_year
 * @see https://www.php.net/manual/en/class.invalidargumentexception.php
 *
 * @param  int  $year
 * @return boolean
 * @throws InvalidArgumentException
 */
function isLeapYear(int $year)
{
    if($year < 1900){
        throw new InvalidArgumentException('The year is lower then 1900');
    }else{
        if($year % 400 == 0){
            return true;
        }
        if($year % 4 == 0){
            return true;
        }else{
            return false;
        }
    }
}

/**
 * The $input variable contains a string of six digits (like '123456' or '385934').
 * Return true if the sum of the first three digits is equal with the sum of last three ones
 * (i.e. in first case 1+2+3 not equal with 4+5+6 - need to return false).
 * Throw InvalidArgumentException if $input contains more then 6 digits.
 * @see https://www.php.net/manual/en/class.invalidargumentexception.php
 *
 * @param  string  $input
 * @return boolean
 * @throws InvalidArgumentException
 */
function isSumEqual(string $input)
{
    if(!is_string($input)){
        throw new InvalidArgumentException('The $input is not a string');
    }
    if (strlen($input) !== 6 ){
        throw new InvalidArgumentException('The $input not contains 6 digits');
    }
    if(strlen($input) == 6){
        $first = 0;
        $second = 0;
        $a = substr($input, 0, 3);
        $b = substr($input, 3, 3);

        for ($i = 0; $i < strlen($a); $i++){
            $first += $a[$i];
        }
        for ($k = 0; $k < strlen($b); $k++){
            $second += $b[$k];
        }
        if ($first === $second){
            return true;
        }else{
            return false;
        }
    }
}