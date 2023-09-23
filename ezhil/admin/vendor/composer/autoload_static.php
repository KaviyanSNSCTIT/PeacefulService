<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitc3f53ca9cb9d1861e49e5185dbe18560
{
    public static $prefixLengthsPsr4 = array (
        'M' => 
        array (
            'MessageBird\\' => 12,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'MessageBird\\' => 
        array (
            0 => __DIR__ . '/..' . '/messagebird/php-rest-api/src/MessageBird',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitc3f53ca9cb9d1861e49e5185dbe18560::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitc3f53ca9cb9d1861e49e5185dbe18560::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitc3f53ca9cb9d1861e49e5185dbe18560::$classMap;

        }, null, ClassLoader::class);
    }
}
