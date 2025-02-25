project "Box2D"
    kind "StaticLib"
    language "C++"
    cppdialect "C++11"
    staticruntime "Off"

    files
    {
        "src/**.cpp",
        "src/**.h",
        "include/**.h"
    }

    includedirs
    {
        "include",
        "src"
    }

    filter "system:windows"
        systemversion "latest"
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"

    filter "configurations:Shipping"
        runtime "Release"
        optimize "On"
        symbols "Off"
