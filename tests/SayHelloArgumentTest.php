<?php

use PHPUnit\Framework\TestCase;

class SayHelloArgumentTest extends TestCase
{
    /**
     * @dataProvider positiveDataProvider
     */
    public function testPositive($arg, $expected)
    {
        $this->assertEquals($expected, sayHelloArgument($arg));
    }

    public function positiveDataProvider()
    {
        return [
            [1, 'Hello 1'],
            ['world', 'Hello world'],
            [true, 'Hello 1'],
            [false, 'Hello '],
        ];
    }
}