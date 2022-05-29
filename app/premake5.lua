project "app"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++latest"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"main.cpp",

		"src/**.h",
		"src/**.cpp"
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS"
	}

	filter "system:windows"
		systemversion "latest"

		defines
		{
		}

	filter "configurations:Debug"
		defines "SCPP_DEBUG"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines "SCPP_RELEASE"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		defines "SCPP_DIST"
		runtime "Release"
		optimize "on"
