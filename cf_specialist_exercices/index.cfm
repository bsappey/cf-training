<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Adobe ColdFusion Specialist Certification</title>
    <link rel="stylesheet" href="ressources/css/normalize.css" />
    <link rel="stylesheet" href="ressources/css/styles.css" />
</head>
<body>
    <header>
        <h1>Adobe Certified Professional: Adobe ColdFusion</h1>
        <p>Table of contents</p>
    </header>
    <main>
        <ul>

            <li>
                <cfset chapterNumber = "01" />
                <cfset folderName    = "exercises/01_intro_to_ColdFusion" />

                <h1>Chapter #chapterNumber# - Introduction to the course</h1>

                <ul>
                    <li><a href="">Welcome.</a></li>
                    <li><a href="">Getting the exercice files.</a></li>
                    <li><a href="">Installing and configuring VSCode.</a></li>
                    <li><a href="">Downloading and installing CommandBox.</a></li>
                    <li><a href="">Using CFPM, the ColdFusion Package Manager</a></li>
                </ul>
            </li>
            <li>
                <cfset chapterNumber = "02" />
                <cfset folderName    = "exercises/02_intro_to_ColdFusion" />

                <h1>Chapter #chapterNumber# - Introduction to ColdFusion</h1>
                <ul>
                    <li><a href="#folderName#/01_whatIsCF.cfm" target="_blank">What is ColdFusion?</a></li>
                    <li><a href="#folderName#/02_cfoutput.cfm" target="_blank">Printing data on the screen.</a></li>
                    <li><a href="#folderName#/03_cfscript.cfm" target="_blank">Discovering the cfscript syntax.</a></li>
                    <li><a href="#folderName#/04_commentingTag.cfm" target="_blank">Commenting code in tag syntax.</a></li>
                    <li><a href="#folderName#/05_commentingScript.cfm" target="_blank">Commenting code in cfscript.</a></li>
                    <li><a href="#folderName#/06_cfdump.cfm" target="_blank">Using &lt;cfdump&gt; and writeDump().</a></li>
                    <li><a href="http://localhost:2020/CFIDE/administrator/">Touring the ColdFusion administrator.</a></li>
                </ul>
            </li>
            <li>
                <cfset chapterNumber = "03" />
                <cfset folderName    = "exercises/03_variables_and_data_types" />

                <h1>Chapter #chapterNumber# - Variables and data types</h1>
                <ul>
                    <li><a href="#folderName#/01_creatingVariables.cfm" target="_blank">Creating simple variables.</a></li>
                    <li><a href="#folderName#/02_weaklyTyped.cfm" target="_blank">CFML is weakly typed.</a></li>
                    <li><a href="#folderName#/03_creatingLists.cfm" target="_blank">Creating lists.</a></li>
                    <li><a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-by-category.html" target="_blank">Manipulating lists with functions.</a></li>
                    <li><a href="#folderName#/05_listDelimiter.cfm" target="_blank">Understanding the list delimiter.</a></li>
                    <li><a href="#folderName#/06_emptyListItems.cfm" target="_blank">Lists with empty items.</a></li>
                    <li><a href="#folderName#/07_findInList.cfm" target="_blank">Finding items in lists.</a></li>
                    <li><a href="#folderName#/08_basicArray.cfm" target="_blank">Creating arrays.</a></li>
                    <li><a href="#folderName#/09_arrayEmptyItems.cfm" target="_blank">Empty items in arrays.</a></li>
                    <li><a href="#folderName#/10_findInArrays.cfm" target="_blank">Finding items in arrays.</a></li>
                    <li><a href="#folderName#/11_mergeArrays.cfm" target="_blank">Merging arrays.</a></li>
                    <li><a href="#folderName#/12_multiDimensionalArrays.cfm" target="_blank">Multi-dimensional arrays.</a></li>
                    <li><a href="#folderName#/13_exploringArrayFunctions.cfm" target="_blank">Exploring Array Functions.</a></li>
                    <li><a href="#folderName#/14_creatingStructs.cfm" target="_blank">Creating structures</a></li>
                    <li><a href="#folderName#/15_keysInStruct.cfm" target="_blank">About keynames in structures.</a></li>
                    <li><a href="#folderName#/15_findingInStructs.cfm" target="_blank">Finding items in structures</a></li>
                    <li><a href="#folderName#/17_mergingAndCopyingStruct.cfm" target="_blank">Merging and copying structures</a></li>
                    <li><a href="#folderName#/18_shallowCopyVsDeepCopy.cfm" target="_blank">Passing data by value or by reference</a></li>
                    <li><a href="#folderName#/19_nullSupport.cfm" target="_blank">Null Support in ColdFusion</a></li>
                </ul>
            </li>
            <li>
                <cfset chapterNumber = "04" />
                <cfset folderName    = "exercises/04_main_coldfusion_constructs" />

                <h1>Chapter #chapterNumber# - Main ColdFusion constructs</h1>
                <ul>
                    <li><a href="#folderName#/01_ifElsefScript.cfm" target="_blank">Simple if in script syntax.</a></li>
                    <li><a href="#folderName#/02_nestedIf.cfm" target="_blank">Nested ifs.</a></li>
                    <li><a href="#folderName#/03_simpleIfTag.cfm" target="_blank">Simple if in tag syntax.</a></li>
                    <li><a href="#folderName#/04_comparisonOp.cfm" target="_blank">Comparison operators.</a></li>
                    <li><a href="#folderName#/05_ternaryOperator.cfm" target="_blank">The ternary operator.</a></li>
                    <li><a href="#folderName#/07_switchCase.cfm" target="_blank">The Switch / Case construct.</a></li>
                    <li><a href="#folderName#/07_break.cfm" target="_blank">The Break keyword.</a></li>
                    <li><a href="#folderName#/08_ifInSwitchCase.cfm" target="_blank">If statement in a Swich / Case.</a></li>
                    <li><a href="#folderName#/09_forLoop.cfm" target="_blank">Reviewing the For loop.</a></li>
                    <li><a href="#folderName#/10_whileDoWhile.cfm" target="_blank">Reviewing the While and the Do While loops.</a></li>
                    <li><a href="#folderName#/11_forIn.cfm" target="_blank">Reviewing the For In loop.</a></li>
                    <li><a href="#folderName#/12_loopingOverLists.cfm" target="_blank">Looping over lists.</a></li>
                    <li><a href="#folderName#/13_loopingOverArrays.cfm" target="_blank">Looping over arrays.</a></li>
                    <li><a href="#folderName#/14_loopingOverStructures.cfm" target="_blank">Looping over structures.</a></li>
                    <li><a href="#folderName#/15_breakContinue.cfm" target="_blank">Break and Continue.</a></li>
                </ul>
            </li>

            <li>
                <cfset chapterNumber = "05" />
                <cfset folderName    = "exercises/05_functions" />

                <h1>Chapter #chapterNumber# - Functions</h1>
                <ul>
                    <li><a href="#folderName#/01_simpleFunctions.cfm" target="_blank">Creating a simple function.</a></li>
                    <li><a href="#folderName#/02_functionArguments.cfm" target="_blank">Function arguments.</a></li>
                    <li><a href="#folderName#/03_requiredOptionalArgs.cfm" target="_blank">Required and optional arguments.</a></li>
                    <li><a href="#folderName#/04_argumentTypes.cfm" target="_blank">Type checking the arguments.</a></li>
                    <li><a href="#folderName#/05_passingArguments.cfm" target="_blank">Passing arguments into functions.</a></li>
                    <li>Returning data from a function.
                        <a href="#folderName#/06_returnValues_A.cfm" target="_blank">[File 1]</a> - 
                        <a href="#folderName#/06_returnValues_B.cfm" target="_blank">[File 2]</a>
                    </li>
                    <li><a href="#folderName#/07_functionTag.cfm" target="_blank">Creating functions with tags.</a></li>
                </ul>
            </li>

            <li>
                <cfset chapterNumber = "06" />
                <cfset folderName    = "exercises/06_scopes" />

                <h1>Chapter #chapterNumber# - Scopes</h1>
                <ul>
                    <li>About Scopes.</li>
                    <li><a href="#folderName#/02_variablesScope.cfm" target="_blank">The Variables scope.</a></li>
                    <li><a href="#folderName#/03_functionVarScope.cfm" target="_blank">The var scope of a function.</a></li>
                    <li><a href="#folderName#/04_cgiScope.cfm" target="_blank">The CGI scope.</a></li>
                    <li>The Application.cfc file.
                        <a href="#folderName#/05_ApplicationCfc/BlogApp/blogApp.cfm" target="_blank">[Blog App]</a> - 
                        <a href="#folderName#/05_ApplicationCfc/MessageBoardApp/messageBoardApp.cfm" target="_blank">[Message Board App]</a>
                    </li>
                    <li><a href="#folderName#/06_olderApplicationCfm/blogApp.cfm" target="_blank">The older Applicationcfm file.</a></li>
                    <li>The Application scope.
                        <a href="#folderName#/07_applicationScope/BlogApp/blogApp.cfm" target="_blank">[Blog App]</a> - 
                        <a href="#folderName#/07_applicationScope/MessageBoardApp/messageBoardApp.cfm" target="_blank">[MessageBoard App]</a></li>
                    <li><a href="#folderName#/08_sessionScope/blogApp.cfm" target="_blank">The Session scope.</a></li>
                    <li><a href="#folderName#/09_sessionIDandCookie/blogApp.cfm" target="_blank">Session identifiers and the Cookie scope.</a></li>
                    <li>The server scope.
                        <a href="#folderName#/10_ServerScope/BlogApp/blogApp.cfm" target="_blank">[Blog App]</a> - 
                        <a href="#folderName#/10_ServerScope/MessageBoardApp/messageBoardApp.cfm" target="_blank">[MessageBoard App]</a>
                    </li>
                    <li>Locking shared scopes.</li>
                </ul>
            </li>
            <li>
                <cfset chapterNumber = "07" />
                <cfset folderName    = "exercises/07_reusing_code" />

                <h1>Chapter #chapterNumber# - Reusing code</h1>
                <ul>
                    <li><a href="#folderName#/01_simpleInclude/index.cfm" target="_blank">Using &lt;cfinclude&gt;.</a></li>
                    <li><a href="#folderName#/02_includesVariablesScope/index.cfm" target="_blank">&lt;cfinclude&gt; and the Variables scope.</a></li>
                    <li><a href="#folderName#/03_includesUseCases/index.cfm" target="_blank">Use cases for cfincludes.</a></li>
                    <li><a href="#folderName#/04_includeFunctions/function-library.cfm" target="_blank">Using cfincludes with functions.</a></li>
                    <li><a href="#folderName#/05_badCfInclude/index.cfm" target="_blank">When cfinclude is not a good idea.</a></li>
                    <li><a href="#folderName#/06_cfimport/index.cfm" target="_blank">Custom tags with&lt;cfimport&gt;.</a></li>
                    <li><a href="#folderName#/07_openCloseCustomTags/index.cfm" target="_blank">Opening and closing cutom tags.</a></li>
                    <li><a href="#folderName#/08_passingAttributes/index.cfm" target="_blank">Passing attributes to custom tags.</a></li>
                    <li><a href="#folderName#/09_requestScope/index.cfm" target="_blank">The request scope.</a></li>
                    <li><a href="#folderName#/10_cfmodule/index.cfm" target="_blank">Custom tags with &lt;cfmodule&gt;.</a></li>
                    <li><a href="#folderName#/11_cf_syntax/index.cfm" target="_blank">Custom tags with the &lt;cf_&gt; syntax.</a></li>
                </ul>
            </li>
            <li>
                <cfset chapterNumber = "08" />
                <cfset folderName    = "exercises/08_application_cfc" />

                <h1>Chapter #chapterNumber# - The Application CFC</h1>
                <ul>
                    <li><a href="#folderName#/index.html" target="_blank">The main Application.cfc variables.</a></li>
                    <li><a href="#folderName#/index.html" target="_blank">onApplicationStart() and onSessionStart().</a></li>
                    <li><a href="#folderName#/index.html" target="_blank">Request event handlers.</a></li>
                    <li><a href="#folderName#/index.html" target="_blank">onSessionEnd() and onApplicationEnd().</a></li>
                    <li><a href="#folderName#/index.html" target="_blank">Other event handlers.</a></li>
                    <li><a href="#folderName#/index.html" target="_blank">Using cfincludes in teh Application.cfc file.</a></li>
                </ul>
            </li>
            <li>
                <cfset chapterNumber = "09" />
                <cfset folderName    = "exercises/09_caching" />
                <cfset subsection    = "Section_1_Basics" />
                <h1>Chapter #chapterNumber# - Caching</h1>
                <h5>#replace(subsection, '_', ' ', 'ALL')#</h5>
                <ul>
                    <li><a href="#folderName#/#subsection#/01_setting_cache.cfm">Setting Cache</a></li>
                    <li><a href="#folderName#/#subsection#/02_getting_cache.cfm">Getting Cache</a></li>
                    <li><a href="#folderName#/#subsection#/03_setting_cache_time.cfm">Setting Cache Timeouts</a></li>
                    <li><a href="#folderName#/#subsection#/04_getting_cache_null.cfm">Dealing with null cache objects</a></li>
                    <li><a href="#folderName#/#subsection#/05_set_get_cache_full.cfm">Complete Example</a></li>
                </ul>     
                <cfset subsection = "Section_2_Advanced" />           
                <h5>#replace(subsection, '_', ' ', 'ALL')#</h5>
                <ul>
                    <li><a href="#folderName#/#subsection#/01_dynamic_key.cfm ">Dynamic Cache Keys</a></li>
                    <li><a href="#folderName#/#subsection#/02_cache_almost_anything.cfm ">Caching Almost Anything</a></li>
                    <li><a href="#folderName#/#subsection#/03_removing_cache.cfm">Removing items from Cache</a></li>
                </ul>
                
                <cfset subsection = "Section_3_Using_Regions" />           
                <h5>#replace(subsection, '_', ' ', 'ALL')#</h5>
                <ul>
                    <li><a href="#folderName#/#subsection#/01_create_region.cfm ">Creating Regions</a></li>
                    <li><a href="#folderName#/#subsection#/02_create_region_properties.cfm ">Region Properties</a></li>
                    <li><a href="#folderName#/#subsection#/03_working_with_regions.cfm">Working with Regions</a></li>
                </ul>

                <cfset subsection = "Section_4_Output_caching" />           
                <h5>#replace(subsection, '_', ' ', 'ALL')#</h5>
                <ul>
                    <li><a href="#folderName#/#subsection#/01_cfcache_content.cfm ">Caching Content</a></li>
                    <li><a href="#folderName#/#subsection#/02_cfcache_content_snippit.cfm ">Caching Content Snippit</a></li>
                    <li><a href="#folderName#/#subsection#/03_cfcache_content_unique.cfm">Caching Content w/ unique urls</a></li>
                    <li><a href="#folderName#/#subsection#/04_expiring_cache.cfm">Expiring Cache</a></li>
                </ul>
            </li>
            <li>
                <cfset chapterNumber = "10" />
                <cfset folderName    = "exercises/10_database_operations" />

                <h1>Chapter #chapterNumber# - Basic database operations</h1>
                <ul>
                    <li>Creating a DSN.</li>
                    <li><a href="#folderName#/02_usingCFQuery.cfm" target="_blank">Using &lt;cfquery&gt;.</a></li>
                    <li><a href="#folderName#/03_thisDatasource.cfm" target="_blank">Using this.datasource in Application.cfc.</a></li>
                    <li><a href="#folderName#/04_displayingQueryData.cfm" target="_blank">Displaying query data.</a></li>
                    <li><a href="#folderName#/05_groupingQueryOutput.cfm" target="_blank">Grouping query output.</a></li>
                    <li><a href="#folderName#/06_dynamicQueries.cfm" target="_blank">Creating dynamic queries.</a></li>
                    <li><a href="#folderName#/07_usingQueryParams.cfm" target="_blank">Using query parameters.</a></li>
                    <li><a href="#folderName#/08_queryMetaData.cfm" target="_blank">Query metadata.</a></li>
                    <li><a href="#folderName#/09_usingQueryExecute.cfm" target="_blank">Using queryExecute().</a></li>
                    <li>Caching queries. 
                        <a href="#folderName#/10_cachingQueries/10_cachingQueries_tag.cfm" target="_blank">CFML</a> - 
                        <a href="#folderName#/10_cachingQueries/10_cachingQueries_script.cfm" target="_blank">CFScript</a>
                    </li>
                    <li><a href="#folderName#/11_queriesOfQuery.cfm" target="_blank">Queries of queries.</a></li>
                    <li><a href="#folderName#/12_valueList.cfm" target="_blank">Using the ValueList() function.</a></li>
                    <li><a href="#folderName#/13_otherQueryTags.cfm" target="_blank">Other tags / functions generating queries.</a></li>
                </ul>
            </li>
            <li>
                <cfset chapterNumber = "11" />
                <cfset folderName    = "exercises/11_object_oriented_programming" />

                <h1>Chapter #chapterNumber# - Object-oriented programming in ColdFusion</h1>
                <ul>
                    <li><a href="#folderName#/01_creatingComponents/index.cfm" target="_blank">Creating ColdFusion Components.</a></li>
                    <li><a href="#folderName#/02_methodsInComponents/index.cfm" target="_blank">Methods in Components.</a></li>
                    <li><a href="#folderName#/03_creatingComponentInstances/index.cfm" target="_blank">Creating component instances.</a></li>
                    <li><a href="#folderName#/04_constructorMethod/index.cfm" target="_blank">The constructor method.</a></li>
                    <li><a href="#folderName#/05_componentsInstancesObjects/index.cfm" target="_blank">Understanding component instances and objects.</a></li>
                    <li>Public and private methods in components. 
                        <a href="#folderName#/06_publicPrivateMethods/calling-public-from-template.cfm" target="_blank">Example 1</a> - 
                        <a href="#folderName#/06_publicPrivateMethods/calling-private-methods.cfm" target="_blank">Example 2</a>
                    </li>
                    <li><a href="#folderName#/07_whyAccessors/index.cfm" target="_blank">Understanding the need for accessors.</a></li>
                    <li><a href="#folderName#/08_creatingAccessors/index.cfm" target="_blank">Creating accessors manually.</a></li>
                    <li><a href="#folderName#/09_implicitAccessors/index.cfm" target="_blank">Cfproperty and the implicit accessors.</a></li>
                    <li>Overriding the implicit accessors. 
                        <a href="#folderName#/10_overridingAccessors/author.cfm" target="_blank">Author example</a> - 
                        <a href="#folderName#/10_overridingAccessors/comedian.cfm" target="_blank">Comedian example</a>
                    </li>
                    <li><a href="#folderName#/11_individualGettersAndSetters/index.cfm" target="_blank">Individual getters and setters.</a></li>
                    <li><a href="#folderName#/12_aboutInheritance/index.cfm" target="_blank">Inheritance: the &laquo;is a&raquo; relationship.</a></li>
                    <li><a href="#folderName#/14_extendsKeyword/index.cfm" target="_blank">Using the &laquo;extend&raquo; attribute.</a></li>
                    <li><a href="#folderName#/14_superKeyword/index.cfm" target="_blank">The &laquo;super&raquo; keyword.</a></li>
                    <li><a href="#folderName#/15_multiLevelInheritance/index.cfm" target="_blank">Multi-level inheritance.</a></li>
                    <li><a href="#folderName#/16_abstractComponents/index.cfm" target="_blank">Using abstract components.</a></li>
                    <li>Inheritence best practices.</li>
                    <li><a href="#folderName#/18_understandingComposition/index.cfm" target="_blank">Composition: the &laquo;has a&raquo; relationship.</a></li>
                    <li><a href="#folderName#/19_advancedComposition/index.cfm" target="_blank">Advanced composition.</a></li>
                    <li><a href="#folderName#/20_usingInheritanceAndComposition/index.cfm" target="_blank">Using composition and inheritance in an application.</a></li>
                    <li><a href="#folderName#/21_understandingInterfaces/index.cfm" target="_blank">Understanding the use of interfaces.</a></li>
                    <li><a href="#folderName#/22_creatingInterfaces/index.cfm" target="_blank">Creating interfaces.</a></li>
                    <li><a href="#folderName#/23_usingInterfaces/index.cfm" target="_blank">Using interfaces.</a></li>
                    <li><a href="#folderName#/24_whatInterfacesDo/index.cfm" target="_blank">Understanding what insterfaces do.</a></li>
                    <li><a href="#folderName#/25_interfacesMultipleComponents/index.cfm" target="_blank">Using interfacses with multiple components</a></li>
                    <li>Using models for basic CRUD operations. 
                        <a href="#folderName#/26_basicCrud/select-example.cfm" target="_blank">[Select]</a> 
                        <a href="#folderName#/26_basicCrud/insert-example.cfm" target="_blank">[Insert]</a> 
                        <a href="#folderName#/26_basicCrud/update-example.cfm " target="_blank">[Update]</a> 
                        <a href="#folderName#/26_basicCrud/delete-example.cfm" target="_blank">[Delete]</a></li>
                    <li><a href="#folderName#/27_buildSearch/index.cfm" target="_blank">Building a search functionality.</a></li>
                    <li>Building a model layer in your app.</li>
                    <li><a href="#folderName#/29_cachingApplicationScope/index.cfm" target="_blank">Caching component instances in the Application scope.</a></li>
                    <li><a href="#folderName#/30_cachingInSessionScope/index.cfm" target="_blank">Caching in the session scope.</a></li>
                    <li><a href="#folderName#/31_cachingVariables.cfm" target="_blank">Caching variables.</a></li>
                </ul>
            </li>
            <li>
                <cfset chapterNumber = "12" />
                <cfset folderName    = "exercises/12_design_patterns" />

                <h1>Chapter #chapterNumber# - Design Patterns</h1>
                <ul>
                    <li>Design Patterns Overview
                        <ul>
                            <li><a href="#folderName#/01_design_patterns_overview/index.cfm">Overview</a></li>
                        </ul>
                    </li>
                    <li>Singletons
                        <ul>
                            <li><a href="#folderName#/02_singletons/transient-example-1.cfm" target="_blank">Transient Example 1</a></li>
                            <li><a href="#folderName#/02_singletons/transient-example-2.cfm" target="_blank">Transient Example 2</a></li>
                            <li><a href="#folderName#/02_singletons/singleton-example-1.cfm" target="_blank">Singleton Example 1</a></li>
                            <li><a href="#folderName#/02_singletons/singleton-example-2.cfm" target="_blank">Singleton Example 2</a></li>
                        </ul>
                    </li>
                    <li>Factory
                        <ul>
                            <li><a href="#folderName#/03_factory/factory-example-1.cfm" target="_blank">Factory Example 1</a></li>
                            <li><a href="#folderName#/03_factory/factory-example-2.cfm" target="_blank">Factory Example 2</a></li>
                            <li><a href="#folderName#/03_factory/factory-example-3.cfm" target="_blank">Factory Example 3</a></li>
                        </ul>
                    </li>
                    <li>
                        MVC
                        <ul>
                            <li><a href="#folderName#/04_mvc/index.cfm" target="_blank">Sample MVC App</a></li>
                        </ul>
                    </li>
                    <li>
                        Observer
                        <ul>
                            <li><a href="#folderName#/05_observer/index.cfm" target="_blank">Observer Demo</a></li>
                        </ul>                        
                    </li>
                    <li>
                        Hollywood
                        <ul>
                            <li><a href="#folderName#/06_hollywood/index.cfm" target="_blank">The Hollywood Principle</a></li>
                        </ul>                        
                    </li>
                    <li>
                        Aspect Oriented Programming (AOP)
                        <ul>
                            <li><a href="#folderName#/07_aop/01_helloWorld/index.cfm" target="_blank">AOP Example 1 - Hello World</a></li>
                            <li><a href="#folderName#/07_aop/02_insteadOf/index.cfm" target="_blank">AOP Example 2 - Method Replacement</a></li>
                            <li><a href="#folderName#/07_aop/03_tryCatch/index.cfm" target="_blank">AOP Example 3 - Try/Catch Blocks</a></li>
                        </ul>
                    </li>
                </ul>
            </li>

            <li>
                <cfset chapterNumber = "13" />
                <cfset folderName    = "exercises/13_ORM" />

                <h1>Chapter #chapterNumber# - An introduction TO ORM</h1>
                <ul>
                    <li><a href="#folderName#/01_enablingColdFusionORM/index.cfm" target="_blank">Enabling ColdFusion ORM.</a></li>
                    <li><a href="#folderName#/02_entitiesFromExistingTable/index.cfm" target="_blank">Creating an ORM Entity From An Existing Database Table.</a></li>
                    <li><a href="#folderName#/02_entitiesFromExistingTable/index.cfm" target="_blank">Using ORMReload().</a></li>
                    <li><a href="#folderName#/04_CrudWithORM/index.cfm" target="_blank">CRUD operations with ORM Entities.</a></li>
                    <li><a href="#folderName#/05_introToHQL/index.cfm" target="_blank">Introduction to HQL.</a></li>
                    <li><a href="#folderName#/06_updatingDbSchema/index.cfm" target="_blank">Updating the database Schema.</a></li>
                    <li><a href="#folderName#/07_managingRelationships/index.cfm" target="_blank">Managing Relationships.</a></li>
                    <li><a href="#folderName#/08_undertandingOrmSessions/index.cfm" target="_blank">Understanding ORM Sessions.</a></li>
                </ul>
            </li>
            <li>
                <cfset chapterNumber = "14" />
                <cfset folderName    = "exercises/14_error_handling" />

                <h1>Chapter #chapterNumber# - The Basics of Error Handling in ColdFusion</h1>
                <ul>
                    <li><a href="#folderName#/01_tryCatch.cfm" target="_blank">Understanding Try / Catch.</a></li>
                    <li><a href="#folderName#/02_throwRethrow.cfm" target="_blank">Using Throw() and Rethrow().</a></li>
                    <li><a href="#folderName#/03_onError/index.cfm" target="_blank">Using onError().</a></li>
                </ul>
            </li>
            <li>
                <cfset chapterNumber = "15" />
                <cfset folderName    = "exercises/15_forms" />


                <h1>Chapter #chapterNumber# - Bulding applications with forms</h1>
                <ul>
                    <li>Introduction to forms, cfforms and data validation.</li>
                    <li><a href="#folderName#/02_urlFormScopes/index.cfm" target="_blank">The URL and the FROM scope.</a></li>
                    <li><a href="#folderName#/03_csrfAttacks/index.cfm?reinit" target="_blank">Protecting against CSRF attacks.</a></li>
                    <li><a href="#folderName#/04_logUsersInOut/index.cfm?reinit" target="_blank">Logging users in and out.</a></li>
                    <li><a href="#folderName#/05_encodingData/index.cfm?reinit" target="_blank">Encoding data.</a></li>
                    <li><a href="#folderName#/06_usingRemoteMetjods/index.cfm?reinit" target="_blank">Using remote CFC methods.</a> 
                        <a href="#folderName#/06_usingRemoteMetjods/controllers/userController.cfc?method=getAllUsers&reinit" target="_blank">[Get All Users]</a> - 
                        <a href="#folderName#/06_usingRemoteMetjods/controllers/userController.cfc?method=getAllUsers&returnformat=json&reinit" target="_blank">[Get All Users JSON]</a>
                    </li>
                    <li><a href="#folderName#/07_uploadingFiles/index.cfm?reinit" target="_blank">Uploading files to ColdFusion.</a></li>
                    <li><a href="#folderName#/08_secureFileUploads/index.cfm?reinit" target="_blank">Securing file uploads.</a></li>
                </ul>
            </li>
            <li>
                <cfset chapterNumber = "16" />
                <cfset folderName    = "exercises/16_pdf_files" />

                <h1>Chapter #chapterNumber# - Generating and manipulating PDF files.</h1>
                <ul>
                    <li><a href="#folderName#/01_usingCfDocument.cfm" target="_blank">Installing the needed packages.</a></li>
                    <li><a href="#folderName#/01_usingCfDocument.cfm" target="_blank">Using &lt;cfdocument&gt;.</a></li>
                    <li>Using 
                        <a href="#folderName#/02_cfdocumentItemSections/usingCfDocumentItem.cfm" target="_blank">&lt;cfdocumentitem&gt;</a> and 
                        <a href="#folderName#/02_cfdocumentItemSections/usingCfDocumentSection.cfm" target="_blank">&lt;cfdocumentsection&gt;.</a>
                    </li>
                    <li><a href="#folderName#/03_cfdocumentSaveFiles/index.cfm" target="_blank">Saving PDF files with &lt;cfdocument&gt;.</a></li>
                    <li>PDF best practices</li>
                    <li><a href="#folderName#/05_cfhtmlToPdf.cfm" target="_blank">Using &lt;cfhtmltopdf&gt;.</a></li>
                    <li><a href="#folderName#/06_cfpdf/index.cfm" target="_blank">Using &lt;cfpdf&gt;.</a></li>
                    <li>DDX support in ColdFusion.</li>
                    <li><a href="#folderName#/08_manipulatingSpreadsheets/index.cfm" target="_blank">Manipulating spreadsheets in ColdFusion</a></li>
                </ul>
            </li>
        </ul>
    </main>
</body>
</html>
</cfoutput>