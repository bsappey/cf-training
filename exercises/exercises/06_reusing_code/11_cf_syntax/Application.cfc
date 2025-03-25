component 
{
	include "../../../resources/config/AppSettings.cfm";

    this.customTagPaths = expandPath("./myCustomTags");


	include "../../../resources/config/onApplicationStartMethod.cfm";
	include "../../../resources/config/onRequestMethod.cfm";
}