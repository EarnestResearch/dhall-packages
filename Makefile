freeze:
	scripts/freeze.sh

format:
	scripts/format.sh

diff:
	dhall diff https://raw.githubusercontent.com/EarnestResearch/dhall-packages/master/package.dhall ./package.dhall
