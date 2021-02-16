<?php

use PHPUnit\Framework\TestCase;

class CountArgumentsTest extends TestCase
{
    public function testPositive()
    {
        $this->assertEquals(['argument_count' => 0, 'argument_values' => []], countArguments());

        $this->assertEquals(['argument_count' => 1, 'argument_values' => ['string']], countArguments('string'));

        $this->assertEquals( ['argument_count' => 2, 'argument_values' => ['string', 'stringstring']], countArguments('string','stringstring'));
    }
}
