<?php

use PHPUnit\Framework\TestCase;


class SayHelloArgumentWrapperTest extends TestCase
{
    /**
     * @dataProvider positiveDataProvider
     */
    public function testException($arg)
    {
        $this->expectException(InvalidArgumentException::class);
        sayHelloArgumentWrapper($arg);
    }

    public function positiveDataProvider()
    {
        return [
            [[1, 2, 5]],
            [12.12],
            [null]
        ];
    }
}