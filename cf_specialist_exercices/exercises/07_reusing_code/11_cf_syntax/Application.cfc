component 
{
	include "../../../ressources/config/AppSettings.cfm";

    this.customTagPaths = expandPath("./myCustomTags");


	include "../../../ressources/config/onApplicationStartMethod.cfm";
	include "../../../ressources/config/onRequestMethod.cfm";
}