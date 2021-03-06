workspace "scpp"
    architecture "x86_64"
    startproject "app"

    configurations {
        "Debug",
        "Release",
        "Dist"
    }

    files {
		".editorconfig"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

include "app"
