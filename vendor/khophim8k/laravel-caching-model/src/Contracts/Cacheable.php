<?php

namespace Khophim8k\CachingModel\Contracts;

use \Khophim8k\CachingModel\Contracts\BuilderInterface;

interface Cacheable
{
    public static function primaryCacheKey(): string;

    public static function getCacheKey($id, string $key = null): string;

    public static function getCacheKeyList(): string;

    public static function cacheTimeout(): int;

    public function scopeCacheWithRelation($query);
}
