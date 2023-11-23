// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;

public class Enoki : ModuleRules
{
    public Enoki(ReadOnlyTargetRules Target) : base(Target)
    {
        Type = ModuleType.External;

        string RootPath = Target.UEThirdPartySourceDirectory + "Enoki";
        PublicSystemIncludePaths.Add(RootPath + "/Include");
    }
}
