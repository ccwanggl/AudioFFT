project "libAudioFFT"
    kind "StaticLib"
		cppdialect "C++17"
    language "C++"

    targetdir ("../bin/" .. outputdir .. "/%{prj.name}")
    objdir ("../bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "**.h",
        "**.cpp",
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
      runtime "Debug"
      symbols "on"
			staticruntime "off"

    filter "configurations:Release"
      runtime "Release"
      optimize "on"
			staticruntime "On"
