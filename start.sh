#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename "${__file}" .sh)"
__root="$(cd "$(dirname "${__dir}")" && pwd)"

main() {
  docker run -ti -v "${__root}:/opt/app" -v "${HOME}/.zshrc:/root/.zshrc" -v "${HOME}/.zshd:/root/.zshd" dotnet-dev zsh
}

main "$@"

