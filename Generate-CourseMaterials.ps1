if (!(Test-Path .\.materials)) {
    mkdir .\.materials
}

$CommonPaths = @(
    ".\example-site-files",
    ".\LICENSE",
    ".\README.md"
)

# Module 3
Compress-Archive -DestinationPath .\.materials\Module-3.zip -Update -Path ($CommonPaths + @(
    ".\Module 3"
))

# Module 4
Compress-Archive -DestinationPath .\.materials\Module-4.zip -Update -Path ($CommonPaths + @(
    ".\Module 4"
))