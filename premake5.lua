project "tinyxml2"
kind "StaticLib"
language "C++"
cppdialect "C++20"
staticruntime "off"

targetdir("bin/" .. outputdir .. "/%{prj.name}")
objdir("bin-int/" .. outputdir .. "/%{prj.name}")

files
{
    "tinxml2.h",
    "tinyxml2.cpp",
}

includedirs
{
}

defines
{
}

filter "system:windows"
systemversion "latest"

filter "configurations:Debug"
runtime "Debug"
symbols "on"

filter "configurations:Release"
runtime "Release"
optimize "on"

filter "configurations:Dist"
runtime "Release"
optimize "on"
symbols "off"