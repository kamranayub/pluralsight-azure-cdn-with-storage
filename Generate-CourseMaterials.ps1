if (!(Test-Path .\.materials)) {
    mkdir .\.materials
}

# All Modules
Compress-Archive -DestinationPath .\.materials\All-Modules.zip -Update -Path @(
    ".\example-site-files",
    ".\LICENSE",
    ".\README.md"
)

# Module 3
Compress-Archive -DestinationPath .\.materials\Module-3.zip -Update -Path @(
    ".\Module 3"
)

# Module 4
Compress-Archive -DestinationPath .\.materials\Module-4.zip -Update -Path @(
    ".\Module 4"
)