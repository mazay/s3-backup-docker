#!/bin/sh

aws s3 sync --storage-class STANDARD_IA --delete ./ s3://${DST_BUCKET} --exclude "*.[Dd][Ss]_[Ss]tore*" --exclude "*.[Aa]pple[Dd]ouble*" --exclude "*[Tt]humbs.db*"

