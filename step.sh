#!/bin/bash


ruby "./step.rb" -s "/Users/mark/Coding/mosquitodigital/magmobilexamarin/airportapp.sln" -t "/Users/mark/Coding/mosquitodigital/magmobilexamarin/MyUnitTestApp/MyUnitTestApp.csproj" \
	-c "Debug"  \
	-p "iPhoneSimulator"  \
	-b "mdtool" \
	-d "iPhone 6" \
	-o "iOS 9.1"
	
#	-i "${is_clean_build}" \

exit

THIS_SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

set -e

ruby "${THIS_SCRIPTDIR}/step.rb" \
	-s "${xamarin_project}" \
	-t "${xamarin_test_project}" \
	-c "${xamarin_configuration}" \
	-p "${xamarin_platform}" \
	-b "${xamarin_builder}" \
	-i "${is_clean_build}" \
	-d "${simulator_device}" \
	-o "${simulator_os_version}"
