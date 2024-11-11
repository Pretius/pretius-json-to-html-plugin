prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>2282420131933307
,p_default_application_id=>231
,p_default_id_offset=>0
,p_default_owner=>'WKSP_X'
);
end;
/
 
prompt APPLICATION 231 - Pretius JSON to HTML Plugin
--
-- Application Export:
--   Application:     231
--   Name:            Pretius JSON to HTML Plugin
--   Date and Time:   12:12 Thursday October 3, 2024
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 118972552593024472
--   Manifest End
--   Version:         24.1.1
--   Instance ID:     8567745099245431
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/pretius_json2html
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(118972552593024472)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'PRETIUS_JSON2HTML'
,p_display_name=>'Pretius JSON to HTML'
,p_supported_component_types=>'PARTIAL'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#json2html.min.js',
'#PLUGIN_FILES#pretius_json2html#MIN#.js'))
,p_partial_template=>'<div class="pretius_j2h #APEX$DOM_ID#" data-column="#COLUMN#" data-header="#HEADER#" data-footer="#FOOTER#" data-template="#TEMPLATE#" data-render-function="#RENDER_FUNCTION#"></div>'
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_version_scn=>41481338862744
,p_subscribe_plugin_settings=>true
,p_help_text=>'This Template Component Plugin combines JSON from a column with a predefined template to produce HTML. Template documentation can be found at - https://www.json2html.com/docs/'
,p_version_identifier=>'24.1.1'
,p_about_url=>'https://github.com/Pretius/pretius-json-to-html-plugin'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This project incorporates code from the following open-source project:',
'',
'- Project json2html: https://github.com/moappi/json2html',
'  License: MIT License (full text available at the link above)'))
,p_files_version=>72
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(126876755061427510)
,p_plugin_id=>wwv_flow_imp.id(118972552593024472)
,p_title=>unistr('\D83D\DEE0\FE0F Settings')
,p_display_sequence=>1
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(118974635886003764)
,p_plugin_id=>wwv_flow_imp.id(118972552593024472)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>30
,p_static_id=>'TEMPLATE'
,p_prompt=>'Template'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{"<>": "li", "html":[',
'    	{"<>": "span", "text": "${id}"}',
'      ]}'))
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(126876755061427510)
,p_examples=>'https://www.json2html.com/docs/'
,p_help_text=>'This is the Template Object & it must be defined in the json2html format - see link below'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(118975321979967499)
,p_plugin_id=>wwv_flow_imp.id(118972552593024472)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>10
,p_static_id=>'COLUMN'
,p_prompt=>'JSON Column'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(126876755061427510)
,p_help_text=>'This is the Column containing a JSON Value'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(118987211049716986)
,p_plugin_id=>wwv_flow_imp.id(118972552593024472)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>20
,p_static_id=>'HEADER'
,p_prompt=>'Header'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_default_value=>'<ul>'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(126876755061427510)
,p_help_text=>'Optional HTML value to wrap the output of the value of the template'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(118987805605715642)
,p_plugin_id=>wwv_flow_imp.id(118972552593024472)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'FOOTER'
,p_prompt=>'Footer'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_default_value=>'</ul>'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(126876755061427510)
,p_help_text=>'Optional HTML value to wrap the output of the value of the template'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(125960394653491641)
,p_plugin_id=>wwv_flow_imp.id(118972552593024472)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'RENDER_FUNCTION'
,p_prompt=>'Render Function'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_default_value=>'json2html.render( dataJSON, templateObj ) '
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(126876755061427510)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is the rending function of the json2html namespace. dataJSON & templateObj are reserved placeholders and in most cases you can leave it as default. For advanced users you can use something like this',
'<pre>',
'json2html.render({ "wrapper": dataJSON }, templateObj.myCustomTemplate )',
'</pre>',
'In the above example we can wrap our dataJSON & direct it to use a custom template (defined in the Template Attribute)'))
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2166756E6374696F6E28297B2275736520737472696374223B6C657420726F6F743D226F626A656374223D3D747970656F662073656C66262673656C662E73656C663D3D3D73656C66262673656C667C7C226F626A656374223D3D747970656F6620676C';
wwv_flow_imp.g_varchar2_table(2) := '6F62616C2626676C6F62616C2E676C6F62616C3D3D3D676C6F62616C2626676C6F62616C7C7C746869737C7C7B7D2C434F4D504F4E454E54533D7B7D3B66756E6374696F6E206948544D4C2868746D6C297B746869732E747970653D226948544D4C222C';
wwv_flow_imp.g_varchar2_table(3) := '746869732E68746D6C3D68746D6C7C7C22222C746869732E6576656E74733D7B7D7D66756E6374696F6E20546F6B656E697A657228746F6B656E697A6572732C646F4275696C64297B69662821287468697320696E7374616E63656F6620546F6B656E69';
wwv_flow_imp.g_varchar2_table(4) := '7A6572292972657475726E206E657720546F6B656E697A657228746F6B656E697A6572732C6F6E456E642C6F6E466F756E64293B746869732E746F6B656E697A6572733D746F6B656E697A6572732E73706C6963653F746F6B656E697A6572733A5B746F';
wwv_flow_imp.g_varchar2_table(5) := '6B656E697A6572735D2C646F4275696C64262628746869732E646F4275696C643D646F4275696C64297D76617220243B66756E6374696F6E205F747269676765724576656E7428656C656D656E742C74797065297B6C6574206576656E743B646F63756D';
wwv_flow_imp.g_varchar2_table(6) := '656E742E6372656174654576656E743F286576656E743D646F63756D656E742E6372656174654576656E74282248544D4C4576656E747322292C6576656E742E696E69744576656E7428747970652C21302C2130292C6576656E742E6576656E744E616D';
wwv_flow_imp.g_varchar2_table(7) := '653D747970652C656C656D656E742E64697370617463684576656E74286576656E7429293A286576656E743D646F63756D656E742E6372656174654576656E744F626A65637428292C6576656E742E6576656E744E616D653D747970652C6576656E742E';
wwv_flow_imp.g_varchar2_table(8) := '6576656E74547970653D747970652C656C656D656E742E666972654576656E7428226F6E222B6576656E742E6576656E74547970652C6576656E7429297D66756E6374696F6E205F6174746163684576656E747328706172656E742C6576656E7473297B';
wwv_flow_imp.g_varchar2_table(9) := '6C65742072656164793D5B5D2C656C656D656E74733D706172656E742E717565727953656C6563746F72416C6C28225B2D6A32682D655D22293B666F72286C657420653D303B653C656C656D656E74732E6C656E6774683B652B2B297B6C657420656C65';
wwv_flow_imp.g_varchar2_table(10) := '6D656E743D656C656D656E74735B655D2C6174746163683D656C656D656E742E67657441747472696275746528222D6A32682D6522293B696628617474616368297B6C6574205F6576656E74733D6174746163682E73706C697428222022293B666F7228';
wwv_flow_imp.g_varchar2_table(11) := '6C657420693D303B693C5F6576656E74732E6C656E6774683B692B2B297B6C6574206576656E743D6576656E74735B5F6576656E74735B695D5D3B6576656E74262628227265616479223D3D3D6576656E742E7479706526262872656164792E70757368';
wwv_flow_imp.g_varchar2_table(12) := '28656C656D656E74292C6576656E742E747970653D226A32682D726561647922292C656C656D656E742E6164644576656E744C697374656E6572286576656E742E747970652C2866756E6374696F6E2865297B226A32682D7265616479223D3D3D657665';
wwv_flow_imp.g_varchar2_table(13) := '6E742E747970652626652E73746F7050726F7061676174696F6E28292C6576656E742E646174612E6576656E743D652C2266756E6374696F6E223D3D3D5F747970656F66286576656E742E616374696F6E2926266576656E742E616374696F6E2E63616C';
wwv_flow_imp.g_varchar2_table(14) := '6C28746869732C6576656E742E64617461297D2929297D7D656C656D656E742E72656D6F766541747472696275746528222D6A32682D6522297D72657475726E2072656164797D66756E6374696F6E205F72656E646572286F626A2C74656D706C617465';
wwv_flow_imp.g_varchar2_table(15) := '2C6F7074696F6E732C696E6465782C706F626A297B6C6574206968746D6C3D6E6577206948544D4C3B737769746368285F747970656F66286F626A2C213029297B63617365226172726179223A6C6574206C656E3D6F626A2E6C656E6774683B666F7228';
wwv_flow_imp.g_varchar2_table(16) := '6C6574206A3D303B6A3C6C656E3B2B2B6A296968746D6C2E617070656E64285F72656E6465724F626A286F626A5B6A5D2C74656D706C6174652C6F7074696F6E732C6A2C706F626A29293B627265616B3B6361736522756E646566696E6564223A636173';
wwv_flow_imp.g_varchar2_table(17) := '65226E756C6C223A627265616B3B64656661756C743A6968746D6C2E617070656E64285F72656E6465724F626A286F626A2C74656D706C6174652C6F7074696F6E732C696E6465782C706F626A29297D72657475726E206968746D6C7D66756E6374696F';
wwv_flow_imp.g_varchar2_table(18) := '6E205F72656E6465724F626A286F626A2C74656D706C6174652C6F7074696F6E732C696E6465782C706F626A297B6C6574206968746D6C3D6E6577206948544D4C3B737769746368285F747970656F662874656D706C6174652C213029297B6361736522';
wwv_flow_imp.g_varchar2_table(19) := '6172726179223A6C657420745F6C656E3D74656D706C6174652E6C656E6774683B666F72286C657420743D303B743C745F6C656E3B2B2B74296968746D6C2E617070656E64285F72656E6465724F626A286F626A2C74656D706C6174655B745D2C6F7074';
wwv_flow_imp.g_varchar2_table(20) := '696F6E732C696E64657829293B627265616B3B63617365226F626A656374223A6C657420666F626A3D74656D706C6174655B227B7D225D3B2266756E6374696F6E22213D3D5F747970656F6628666F626A297C7C706F626A3F74656D706C6174655B225B';
wwv_flow_imp.g_varchar2_table(21) := '5D225D3F6968746D6C2E617070656E64285F636F6D706F6E656E7428706F626A2C6F626A2C74656D706C6174652C6F7074696F6E732C696E64657829293A6968746D6C2E617070656E64285F68746D6C28706F626A2C6F626A2C74656D706C6174652C6F';
wwv_flow_imp.g_varchar2_table(22) := '7074696F6E732C696E64657829293A28706F626A3D6F626A2C6F626A3D666F626A2E63616C6C286F626A2C6F626A2C696E646578292C6968746D6C2E617070656E64285F72656E646572286F626A2C74656D706C6174652C6F7074696F6E732C696E6465';
wwv_flow_imp.g_varchar2_table(23) := '782C706F626A2929297D72657475726E206968746D6C7D66756E6374696F6E205F676574286F626A2C70617468297B6C6574205F706174683D706174682E73706C697428222E22292C7375624F626A3D6F626A2C635F6C656E3D5F706174682E6C656E67';
wwv_flow_imp.g_varchar2_table(24) := '74683B666F72286C657420693D303B693C635F6C656E262621285F706174685B695D2E6C656E6774683E302626287375624F626A3D7375624F626A5B5F706174685B695D5D2C6E756C6C3D3D7375624F626A29293B2B2B69293B72657475726E206E756C';
wwv_flow_imp.g_varchar2_table(25) := '6C3D3D7375624F626A3F22223A7375624F626A7D66756E6374696F6E205F67657456616C7565286F626A2C74656D706C6174652C6B65792C6F7074696F6E732C696E646578297B6C6574206F75743D22222C70726F703D74656D706C6174655B6B65795D';
wwv_flow_imp.g_varchar2_table(26) := '3B737769746368285F747970656F662870726F702C213029297B636173652266756E6374696F6E223A737769746368285F747970656F66286F626A29297B63617365226F626A656374223A72657475726E2070726F702E63616C6C286F626A2C6F626A2C';
wwv_flow_imp.g_varchar2_table(27) := '696E6465782C6F7074696F6E732E64617461293B636173652266756E6374696F6E223A6361736522756E646566696E6564223A63617365226E756C6C223A72657475726E22223B64656661756C743A6C6574205F6F626A3D7B76616C75653A6F626A2C69';
wwv_flow_imp.g_varchar2_table(28) := '6E6465783A696E6465782C646174613A6F7074696F6E732E646174617D3B72657475726E2070726F702E63616C6C285F6F626A2C5F6F626A2C696E6465782C6F7074696F6E732E64617461297D627265616B3B6361736522737472696E67223A6966286A';
wwv_flow_imp.g_varchar2_table(29) := '736F6E3268746D6C2E65733629737769746368285F747970656F66286F626A29297B63617365226F626A656374223A6F75743D6A736F6E3268746D6C2E6573362E696E746572706F6C6174652E63616C6C2870726F702C6F626A293B627265616B3B6361';
wwv_flow_imp.g_varchar2_table(30) := '73652266756E6374696F6E223A6361736522756E646566696E6564223A63617365226E756C6C223A72657475726E22223B64656661756C743A6F75743D6A736F6E3268746D6C2E6573362E696E746572706F6C6174652E63616C6C2870726F702C7B7661';
wwv_flow_imp.g_varchar2_table(31) := '6C75653A6F626A2C696E6465783A696E6465787D297D656C7365206F75743D5F70617273652870726F702C2866756E6374696F6E28616C6C2C70617468297B737769746368285F747970656F66286F626A29297B63617365226F626A656374223A726574';
wwv_flow_imp.g_varchar2_table(32) := '75726E205F676574286F626A2C70617468293B636173652266756E6374696F6E223A6361736522756E646566696E6564223A63617365226E756C6C223A72657475726E22223B64656661756C743A7377697463682870617468297B636173652276616C75';
wwv_flow_imp.g_varchar2_table(33) := '65223A72657475726E206F626A3B6361736522696E646578223A72657475726E206E756C6C3D3D696E6465783F22223A696E6465787D7D7D29293B627265616B3B63617365226E756C6C223A6361736522756E646566696E6564223A63617365226F626A';
wwv_flow_imp.g_varchar2_table(34) := '656374223A6F75743D22223B627265616B3B64656661756C743A6F75743D70726F702E746F537472696E6728297D72657475726E206F75747D66756E6374696F6E205F747970656F66286F626A2C636865636B4172726179297B636F6E73742074797065';
wwv_flow_imp.g_varchar2_table(35) := '3D747970656F66206F626A3B696628226F626A656374223D3D3D74797065297B6966286E756C6C3D3D3D6F626A2972657475726E226E756C6C223B696628636865636B4172726179262641727261792E69734172726179286F626A292972657475726E22';
wwv_flow_imp.g_varchar2_table(36) := '6172726179227D72657475726E20747970657D66756E6374696F6E205F696428297B72657475726E205F72616E646F6D28292B5F72616E646F6D28297D66756E6374696F6E205F72616E646F6D28297B72657475726E2836353533362A28312B4D617468';
wwv_flow_imp.g_varchar2_table(37) := '2E72616E646F6D2829297C30292E746F537472696E67283136292E737562737472696E672831297D66756E6374696F6E205F6973566F6964456C656D656E7428656C656D656E74297B73776974636828656C656D656E74297B636173652261726561223A';
wwv_flow_imp.g_varchar2_table(38) := '636173652262617365223A63617365226272223A6361736522636F6C223A6361736522636F6D6D616E64223A6361736522656D626564223A63617365226872223A6361736522696D67223A6361736522696E707574223A63617365226B657967656E223A';
wwv_flow_imp.g_varchar2_table(39) := '63617365226C696E6B223A63617365226D657461223A6361736522706172616D223A6361736522736F75726365223A6361736522747261636B223A6361736522776272223A72657475726E21303B64656661756C743A72657475726E21317D7D66756E63';
wwv_flow_imp.g_varchar2_table(40) := '74696F6E205F7061727365287374722C6D6574686F64297B636F6E737420746F6B656E697A65723D756E646566696E65643B72657475726E206E657720546F6B656E697A6572285B2F5C247B285B5C775C2D5C2E5C2C5C245C735D2B297D2F5D2C286675';
wwv_flow_imp.g_varchar2_table(41) := '6E6374696F6E287372632C7265616C2C7265297B72657475726E207265616C3F7372632E7265706C6163652872652C6D6574686F64293A7372637D29292E706172736528737472292E6A6F696E282222297D66756E6374696F6E205F68746D6C28706F62';
wwv_flow_imp.g_varchar2_table(42) := '6A2C6F626A2C74656D706C6174652C6F7074696F6E732C696E646578297B6C657420706172656E743D6E6577206948544D4C2C6368696C6472656E3D6E6577206948544D4C2C656C653D223C3E222C6576656E74733D5B5D3B666F72286C65742070726F';
wwv_flow_imp.g_varchar2_table(43) := '7020696E2074656D706C617465297377697463682870726F70297B63617365223C3E223A706172656E742E6E616D653D5F67657456616C756528706F626A7C7C6F626A2C74656D706C6174652C656C652C6F7074696F6E732C696E646578292C70617265';
wwv_flow_imp.g_varchar2_table(44) := '6E742E617070656E6448544D4C28223C222B706172656E742E6E616D65293B627265616B3B63617365227B7D223A627265616B3B636173652274657874223A41727261792E697341727261792874656D706C6174655B70726F705D297C7C6368696C6472';
wwv_flow_imp.g_varchar2_table(45) := '656E2E617070656E6448544D4C286A736F6E3268746D6C2E746F54657874285F67657456616C7565286F626A2C74656D706C6174652C70726F702C6F7074696F6E732C696E6465782929293B627265616B3B636173652268746D6C223A73776974636828';
wwv_flow_imp.g_varchar2_table(46) := '5F747970656F662874656D706C6174655B70726F705D2C213029297B63617365226172726179223A6368696C6472656E2E617070656E64285F72656E646572286F626A2C74656D706C6174655B70726F705D2C6F7074696F6E732C696E64657829293B62';
wwv_flow_imp.g_varchar2_table(47) := '7265616B3B636173652266756E6374696F6E223A6C65742074656D703D74656D706C6174655B70726F705D2E63616C6C286F626A2C6F626A2C696E6465782C6F7074696F6E732E646174612C6F7074696F6E732E68746D6C293B737769746368285F7479';
wwv_flow_imp.g_varchar2_table(48) := '70656F662874656D702C213029297B63617365226F626A656374223A7377697463682874656D702E74797065297B63617365226948544D4C223A6368696C6472656E2E617070656E642874656D70297D627265616B3B636173652266756E6374696F6E22';
wwv_flow_imp.g_varchar2_table(49) := '3A6361736522756E646566696E6564223A63617365226E756C6C223A627265616B3B63617365226172726179223A6368696C6472656E2E617070656E6448544D4C2874656D702E746F537472696E672829293B627265616B3B64656661756C743A636869';
wwv_flow_imp.g_varchar2_table(50) := '6C6472656E2E617070656E6448544D4C2874656D70297D627265616B3B64656661756C743A6368696C6472656E2E617070656E6448544D4C285F67657456616C7565286F626A2C74656D706C6174652C70726F702C6F7074696F6E732C696E6465782929';
wwv_flow_imp.g_varchar2_table(51) := '7D627265616B3B64656661756C743A6C65742069734576656E743D21313B69662870726F702E6C656E6774683E322626226F6E223D3D3D70726F702E737562737472696E6728302C32292E746F4C6F776572436173652829297B696628226968746D6C22';
wwv_flow_imp.g_varchar2_table(52) := '3D3D3D6F7074696F6E732E6F7574707574297B6C657420646174613D7B6F626A3A6F626A2C646174613A6F7074696F6E732E646174612C696E6465783A696E6465787D2C69643D5F696428293B706172656E742E6576656E74735B69645D3D7B74797065';
wwv_flow_imp.g_varchar2_table(53) := '3A70726F702E737562737472696E672832292C646174613A646174612C616374696F6E3A74656D706C6174655B70726F705D7D2C6576656E74732E70757368286964297D69734576656E743D21307D6966282169734576656E74297B6C65742076616C3D';
wwv_flow_imp.g_varchar2_table(54) := '5F67657456616C7565286F626A2C74656D706C6174652C70726F702C6F7074696F6E732C696E646578293B696628766F69642030213D3D76616C297B6C6574206F75743B6F75743D22737472696E67223D3D747970656F662076616C3F2722272B76616C';
wwv_flow_imp.g_varchar2_table(55) := '2E7265706C616365282F222F672C222671756F743B22292B2722273A76616C2C706172656E742E617070656E6448544D4C282220222B70726F702B223D222B6F7574297D7D7D72657475726E206576656E74732E6C656E6774682626706172656E742E61';
wwv_flow_imp.g_varchar2_table(56) := '7070656E6448544D4C2822202D6A32682D653D27222B6576656E74732E6A6F696E28222022292B222722292C706172656E742E6E616D653F5F6973566F6964456C656D656E7428706172656E742E6E616D65293F706172656E742E617070656E6448544D';
wwv_flow_imp.g_varchar2_table(57) := '4C28222F3E22293A28706172656E742E617070656E6448544D4C28223E22292C706172656E742E617070656E64286368696C6472656E292C706172656E742E617070656E6448544D4C28223C2F222B706172656E742E6E616D652B223E2229293A706172';
wwv_flow_imp.g_varchar2_table(58) := '656E742E617070656E64286368696C6472656E292C706172656E747D66756E6374696F6E205F636F6D706F6E656E7428706F626A2C6F626A2C74656D706C6174652C6F7074696F6E732C696E646578297B6C6574206968746D6C3D6E6577206948544D4C';
wwv_flow_imp.g_varchar2_table(59) := '2C636F6D706F6E656E743D7B74656D706C6174653A766F696420302C6E616D653A766F696420307D3B666F72286C65742070726F7020696E2074656D706C617465297377697463682870726F70297B63617365225B5D223A6C6574206E616D653D5F6765';
wwv_flow_imp.g_varchar2_table(60) := '7456616C756528706F626A7C7C6F626A2C74656D706C6174652C70726F702C6F7074696F6E732C696E646578293B6F7074696F6E732E636F6D706F6E656E7473262628636F6D706F6E656E742E74656D706C6174653D6F7074696F6E732E636F6D706F6E';
wwv_flow_imp.g_varchar2_table(61) := '656E74735B6E616D655D292C636F6D706F6E656E742E74656D706C6174657C7C28636F6D706F6E656E742E74656D706C6174653D434F4D504F4E454E54535B6E616D655D293B627265616B3B636173652268746D6C223A737769746368285F747970656F';
wwv_flow_imp.g_varchar2_table(62) := '662874656D706C6174652E68746D6C29297B63617365226F626A656374223A6F7074696F6E732E68746D6C3D5F72656E646572286F626A2C74656D706C6174652E68746D6C2C6F7074696F6E732C696E646578297D7D72657475726E226F626A65637422';
wwv_flow_imp.g_varchar2_table(63) := '213D3D5F747970656F6628636F6D706F6E656E742E74656D706C617465297C7C6968746D6C2E617070656E64285F72656E646572286F626A2C636F6D706F6E656E742E74656D706C6174652C6F7074696F6E7329292C6968746D6C7D6948544D4C2E7072';
wwv_flow_imp.g_varchar2_table(64) := '6F746F747970652E617070656E643D66756E6374696F6E286F626A297B72657475726E206F626A2626226948544D4C223D3D3D6F626A2E74797065262628746869732E68746D6C2B3D6F626A2E68746D6C2C4F626A6563742E61737369676E2874686973';
wwv_flow_imp.g_varchar2_table(65) := '2E6576656E74732C6F626A2E6576656E747329292C746869737D2C6948544D4C2E70726F746F747970652E617070656E6448544D4C3D66756E6374696F6E2868746D6C297B746869732E68746D6C2B3D68746D6C7D2C6948544D4C2E70726F746F747970';
wwv_flow_imp.g_varchar2_table(66) := '652E746F4A534F4E3D66756E6374696F6E28297B72657475726E7B68746D6C3A746869732E68746D6C2C6576656E74733A746869732E6576656E74737D7D2C546F6B656E697A65722E70726F746F747970652E70617273653D66756E6374696F6E287372';
wwv_flow_imp.g_varchar2_table(67) := '63297B746869732E7372633D7372632C746869732E656E6465643D21312C746869732E746F6B656E733D5B5D3B646F7B746869732E6E65787428297D7768696C652821746869732E656E646564293B72657475726E20746869732E746F6B656E737D2C54';
wwv_flow_imp.g_varchar2_table(68) := '6F6B656E697A65722E70726F746F747970652E6275696C643D66756E6374696F6E287372632C7265616C297B7372632626746869732E746F6B656E732E7075736828746869732E646F4275696C643F746869732E646F4275696C64287372632C7265616C';
wwv_flow_imp.g_varchar2_table(69) := '2C746869732E746B6E293A737263297D2C546F6B656E697A65722E70726F746F747970652E6E6578743D66756E6374696F6E28297B6C65742073656C663D746869732C706C61696E3B73656C662E66696E644D696E28292C706C61696E3D73656C662E73';
wwv_flow_imp.g_varchar2_table(70) := '72632E736C69636528302C73656C662E6D696E292C73656C662E6275696C6428706C61696E2C2131292C73656C662E7372633D73656C662E7372632E736C6963652873656C662E6D696E292E7265706C6163652873656C662E746B6E2C2866756E637469';
wwv_flow_imp.g_varchar2_table(71) := '6F6E28616C6C297B72657475726E2073656C662E6275696C6428616C6C2C2130292C22227D29292C73656C662E7372637C7C2873656C662E656E6465643D2130297D2C546F6B656E697A65722E70726F746F747970652E66696E644D696E3D66756E6374';
wwv_flow_imp.g_varchar2_table(72) := '696F6E28297B6C65742073656C663D746869732C693D302C746B6E2C6964783B666F722873656C662E6D696E3D2D312C73656C662E746B6E3D22223B766F69642030213D3D28746B6E3D73656C662E746F6B656E697A6572735B692B2B5D293B29696478';
wwv_flow_imp.g_varchar2_table(73) := '3D73656C662E7372635B746B6E2E746573743F22736561726368223A22696E6465784F66225D28746B6E292C2D31213D6964782626282D313D3D73656C662E6D696E7C7C6964783C73656C662E6D696E2926262873656C662E746B6E3D746B6E2C73656C';
wwv_flow_imp.g_varchar2_table(74) := '662E6D696E3D696478293B2D313D3D73656C662E6D696E26262873656C662E6D696E3D73656C662E7372632E6C656E677468297D2C726F6F742E6A736F6E3268746D6C7C7C28726F6F742E6A736F6E3268746D6C3D7B7D292C726F6F742E6A736F6E3268';
wwv_flow_imp.g_varchar2_table(75) := '746D6C2E76657273696F6E3D22332E302E30222C726F6F742E6A736F6E3268746D6C2E72656E6465723D66756E6374696F6E286F626A2C74656D706C6174652C6F7074696F6E73297B6C6574207061727365643D6F626A3B69662822737472696E67223D';
wwv_flow_imp.g_varchar2_table(76) := '3D747970656F66206F626A297472797B7061727365643D4A534F4E2E7061727365286F626A297D63617463682865297B7061727365643D6F626A7D6966286F626A3D7061727365642C6F7074696F6E737C7C286F7074696F6E733D7B7D292C6F7074696F';
wwv_flow_imp.g_varchar2_table(77) := '6E732E6F75747075747C7C286F7074696F6E732E6F75747075743D2268746D6C22292C226F626A65637422213D3D5F747970656F662874656D706C617465297C7C226F626A65637422213D3D5F747970656F66286F626A2929737769746368286F707469';
wwv_flow_imp.g_varchar2_table(78) := '6F6E732E6F7574707574297B63617365226968746D6C223A72657475726E206E6577206948544D4C3B64656661756C743A72657475726E22227D737769746368286F7074696F6E732E6F7574707574297B63617365226968746D6C223A72657475726E20';
wwv_flow_imp.g_varchar2_table(79) := '5F72656E646572286F626A2C74656D706C6174652C6F7074696F6E73293B64656661756C743A72657475726E205F72656E646572286F626A2C74656D706C6174652C6F7074696F6E73292E68746D6C7D7D2C726F6F742E6A736F6E3268746D6C2E636F6D';
wwv_flow_imp.g_varchar2_table(80) := '706F6E656E743D7B6164643A66756E6374696F6E286E616D652C74656D706C617465297B737769746368285F747970656F66286E616D652C213029297B63617365226F626A656374223A434F4D504F4E454E54533D4F626A6563742E61737369676E2843';
wwv_flow_imp.g_varchar2_table(81) := '4F4D504F4E454E54532C6E616D65293B627265616B3B6361736522737472696E67223A434F4D504F4E454E54535B6E616D655D3D74656D706C6174657D7D2C6765743A66756E6374696F6E286E616D65297B72657475726E20434F4D504F4E454E54535B';
wwv_flow_imp.g_varchar2_table(82) := '6E616D655D7D7D2C726F6F742E6A736F6E3268746D6C2E746F546578743D66756E6374696F6E2868746D6C297B72657475726E206E756C6C3D3D68746D6C3F22223A68746D6C2E746F537472696E6728292E7265706C616365282F262F672C2226616D70';
wwv_flow_imp.g_varchar2_table(83) := '3B22292E7265706C616365282F3C2F672C22266C743B22292E7265706C616365282F3E2F672C222667743B22292E7265706C616365282F5C222F672C222671756F743B22292E7265706C616365282F5C272F672C22262333393B22292E7265706C616365';
wwv_flow_imp.g_varchar2_table(84) := '282F5C2F2F672C2226237832463B22297D2C726F6F742E6A736F6E3268746D6C2E687964726174653D66756E6374696F6E28656C656D656E742C6576656E7473297B6C65742072656164793D5F6174746163684576656E747328656C656D656E742C6576';
wwv_flow_imp.g_varchar2_table(85) := '656E7473293B666F72286C657420693D303B693C72656164792E6C656E6774683B692B2B295F747269676765724576656E742872656164795B695D2C226A32682D726561647922293B72657475726E20746869737D2C226F626A656374223D3D74797065';
wwv_flow_imp.g_varchar2_table(86) := '6F662077696E646F7726262266756E6374696F6E223D3D747970656F6620456C656D656E74262628456C656D656E742E70726F746F747970652E6A736F6E3268746D6C3D66756E6374696F6E286F626A2C74656D706C6174652C6F7074696F6E73297B6F';
wwv_flow_imp.g_varchar2_table(87) := '7074696F6E737C7C286F7074696F6E733D7B7D292C6F7074696F6E732E6F75747075743D226968746D6C223B6C6574206968746D6C3D6A736F6E3268746D6C2E72656E646572286F626A2C74656D706C6174652C6F7074696F6E73292C646F6D3D646F63';
wwv_flow_imp.g_varchar2_table(88) := '756D656E742E637265617465456C656D656E74282264697622293B73776974636828646F6D2E696E6E657248544D4C3D6968746D6C2E68746D6C2C6F7074696F6E732E6D6574686F64297B63617365227265706C616365223A746869732E7265706C6163';
wwv_flow_imp.g_varchar2_table(89) := '6557697468282E2E2E646F6D2E6368696C644E6F646573293B627265616B3B636173652270726570656E64223A746869732E70726570656E64282E2E2E646F6D2E6368696C644E6F646573293B627265616B3B64656661756C743A746869732E61707065';
wwv_flow_imp.g_varchar2_table(90) := '6E64282E2E2E646F6D2E6368696C644E6F646573297D72657475726E206A736F6E3268746D6C2E6879647261746528746869732C6968746D6C2E6576656E7473292C746869737D292C226F626A656374223D3D747970656F662077696E646F7726267769';
wwv_flow_imp.g_varchar2_table(91) := '6E646F772E6A517565727926262828243D77696E646F772E6A5175657279292E666E2E6A736F6E3268746D6C3D66756E6374696F6E286F626A2C74656D706C6174652C6F7074696F6E73297B72657475726E206F7074696F6E737C7C286F7074696F6E73';
wwv_flow_imp.g_varchar2_table(92) := '3D7B7D292C6F7074696F6E732E6F75747075743D226968746D6C222C242874686973292E65616368282866756E6374696F6E28297B6C6574206968746D6C3D6A736F6E3268746D6C2E72656E646572286F626A2C74656D706C6174652C6F7074696F6E73';
wwv_flow_imp.g_varchar2_table(93) := '293B737769746368286F7074696F6E732E6D6574686F64297B63617365227265706C616365223A242E666E2E7265706C616365576974682E63616C6C28242874686973292C6968746D6C2E68746D6C293B627265616B3B636173652270726570656E6422';
wwv_flow_imp.g_varchar2_table(94) := '3A242E666E2E70726570656E642E63616C6C28242874686973292C6968746D6C2E68746D6C293B627265616B3B64656661756C743A242E666E2E617070656E642E63616C6C28242874686973292C6968746D6C2E68746D6C297D242874686973292E6A32';
wwv_flow_imp.g_varchar2_table(95) := '6848796472617465286968746D6C2E6576656E7473297D29297D2C242E666E2E6A3268487964726174653D66756E6374696F6E286576656E7473297B72657475726E20242874686973292E65616368282866756E6374696F6E28297B6A736F6E3268746D';
wwv_flow_imp.g_varchar2_table(96) := '6C2E6879647261746528746869732C6576656E7473297D29297D297D28293B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(118976426764946596)
,p_plugin_id=>wwv_flow_imp.id(118972552593024472)
,p_file_name=>'json2html.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '76617220707265746975734A736F6E546F48746D6C203D202866756E6374696F6E202829207B0D0A2020202066756E6374696F6E20697344656275674D6F64652829207B0D0A202020202020202076617220706465627567203D20617065782E6974656D';
wwv_flow_imp.g_varchar2_table(2) := '282770646562756727292E67657456616C756528293B0D0A202020202020202072657475726E205B27272C20274E4F275D2E696E6465784F662870646562756729203D3D3D202D313B0D0A202020207D0D0A0D0A2020202066756E6374696F6E20657865';
wwv_flow_imp.g_varchar2_table(3) := '63757465496E436F6E7465787428666E2C20636F6E7465787429207B0D0A202020202020202072657475726E206E65772046756E6374696F6E2827636F6E74657874272C20277769746828636F6E7465787429207B2072657475726E2027202B20666E20';
wwv_flow_imp.g_varchar2_table(4) := '2B20277D272928636F6E74657874293B0D0A202020207D0D0A0D0A2020202066756E6374696F6E20736166654A534F4E5061727365286A736F6E537472696E672C206C6162656C29207B0D0A2020202020202020747279207B0D0A202020202020202020';
wwv_flow_imp.g_varchar2_table(5) := '20202072657475726E204A534F4E2E7061727365286A736F6E537472696E67293B0D0A20202020202020207D20636174636820286572726F7229207B0D0A2020202020202020202020207468726F77206E6577204572726F722860496E76616C6964204A';
wwv_flow_imp.g_varchar2_table(6) := '534F4E20696E2022247B6C6162656C7D223A20247B6572726F722E6D6573736167657D60293B0D0A20202020202020207D0D0A202020207D0D0A0D0A2020202066756E6374696F6E2072656E646572456C656D656E74732829207B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(7) := '202428272E707265746975735F6A326827292E656163682866756E6374696F6E2028696E6465782C20656C656D656E7429207B0D0A2020202020202020202020207661722024656C656D656E74203D20242874686973293B202F2F2053746F7265202428';
wwv_flow_imp.g_varchar2_table(8) := '746869732920746F2061766F69642072657065746974696F6E0D0A0D0A202020202020202020202020747279207B0D0A202020202020202020202020202020202F2F20476574207468652027646174612D636F6C756D6E2720616E642027646174612D74';
wwv_flow_imp.g_varchar2_table(9) := '656D706C6174652720617474726962757465730D0A202020202020202020202020202020207661722064617461203D2024656C656D656E742E617474722827646174612D636F6C756D6E27293B0D0A202020202020202020202020202020207661722074';
wwv_flow_imp.g_varchar2_table(10) := '656D706C617465203D2024656C656D656E742E617474722827646174612D74656D706C61746527293B0D0A0D0A202020202020202020202020202020202F2F20506172736520746865204A534F4E20737472696E6773207573696E67207468652068656C';
wwv_flow_imp.g_varchar2_table(11) := '7065722066756E6374696F6E0D0A2020202020202020202020202020202076617220646174614A534F4E203D20736166654A534F4E506172736528646174612C2027646174612D636F6C756D6E27293B0D0A202020202020202020202020202020207661';
wwv_flow_imp.g_varchar2_table(12) := '722074656D706C6174654F626A203D206576616C28272827202B2074656D706C617465202B20272927293B0D0A0D0A202020202020202020202020202020207661722068656164657248544D4C203D2024656C656D656E742E617474722827646174612D';
wwv_flow_imp.g_varchar2_table(13) := '68656164657227293B0D0A2020202020202020202020202020202076617220666F6F74657248544D4C203D2024656C656D656E742E617474722827646174612D666F6F74657227293B0D0A202020202020202020202020202020207661722072656E6465';
wwv_flow_imp.g_varchar2_table(14) := '7246756E6374696F6E203D2024656C656D656E742E617474722827646174612D72656E6465722D66756E6374696F6E27293B0D0A0D0A2020202020202020202020202020202076617220666E537472696E67203D2072656E64657246756E6374696F6E3B';
wwv_flow_imp.g_varchar2_table(15) := '0D0A2020202020202020202020202020202065786563757465496E436F6E74657874282772656E646572656448544D4C203D2027202B20666E537472696E672C207B206A736F6E3268746D6C3A206A736F6E3268746D6C2C20646174614A534F4E3A2064';
wwv_flow_imp.g_varchar2_table(16) := '6174614A534F4E2C2074656D706C6174654F626A3A2074656D706C6174654F626A207D293B0D0A0D0A202020202020202020202020202020202F2F2052656E6465722074686520726573756C74207573696E67206A736F6E3268746D6C0D0A2020202020';
wwv_flow_imp.g_varchar2_table(17) := '202020202020202020202076617220726573756C74203D2068656164657248544D4C202B0D0A202020202020202020202020202020202020202072656E646572656448544D4C202B0D0A2020202020202020202020202020202020202020666F6F746572';
wwv_flow_imp.g_varchar2_table(18) := '48544D4C3B0D0A0D0A202020202020202020202020202020202F2F20536574207468652072656E646572656420726573756C740D0A2020202020202020202020202020202024656C656D656E742E68746D6C28726573756C74293B0D0A0D0A2020202020';
wwv_flow_imp.g_varchar2_table(19) := '202020202020207D20636174636820286572726F7229207B0D0A202020202020202020202020202020202F2F204C6F6720616E6420646973706C617920746865206572726F72207573696E67204F7261636C652041504558277320617065782E6D657373';
wwv_flow_imp.g_varchar2_table(20) := '616765204150490D0A20202020202020202020202020202020636F6E736F6C652E6572726F72286572726F722E6D657373616765293B0D0A20202020202020202020202020202020617065782E6D6573736167652E73686F774572726F7273287B0D0A20';
wwv_flow_imp.g_varchar2_table(21) := '20202020202020202020202020202020202020747970653A20226572726F72222C0D0A20202020202020202020202020202020202020206C6F636174696F6E3A202270616765222C20202F2F20436F756C6420616C736F2062652022696E6C696E65220D';
wwv_flow_imp.g_varchar2_table(22) := '0A20202020202020202020202020202020202020206D6573736167653A206572726F722E6D6573736167652C0D0A2020202020202020202020202020202020202020756E736166653A2066616C73650D0A202020202020202020202020202020207D293B';
wwv_flow_imp.g_varchar2_table(23) := '0D0A2020202020202020202020207D0D0A20202020202020207D293B0D0A202020207D0D0A0D0A202020202F2F205075626C6963204150490D0A2020202072657475726E207B0D0A202020202020202072656E646572456C656D656E74733A2072656E64';
wwv_flow_imp.g_varchar2_table(24) := '6572456C656D656E74730D0A202020207D3B0D0A7D2928293B0D0A0D0A2F2F20457865637574652072656E646572696E670D0A707265746975734A736F6E546F48746D6C2E72656E646572456C656D656E747328293B0D0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(118977645543846352)
,p_plugin_id=>wwv_flow_imp.id(118972552593024472)
,p_file_name=>'pretius_json2html.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '76617220707265746975734A736F6E546F48746D6C3D66756E6374696F6E28297B66756E6374696F6E20697344656275674D6F646528297B76617220653D617065782E6974656D282270646562756722292E67657456616C756528293B72657475726E2D';
wwv_flow_imp.g_varchar2_table(2) := '313D3D3D5B22222C224E4F225D2E696E6465784F662865297D66756E6374696F6E2065786563757465496E436F6E7465787428652C74297B72657475726E206E65772046756E6374696F6E2822636F6E74657874222C227769746828636F6E7465787429';
wwv_flow_imp.g_varchar2_table(3) := '207B2072657475726E20222B652B227D22292874297D66756E6374696F6E20736166654A534F4E506172736528652C74297B7472797B72657475726E204A534F4E2E70617273652865297D63617463682865297B7468726F77206E6577204572726F7228';
wwv_flow_imp.g_varchar2_table(4) := '60496E76616C6964204A534F4E20696E2022247B747D223A20247B652E6D6573736167657D60297D7D66756E6374696F6E2072656E646572456C656D656E747328297B2428222E707265746975735F6A326822292E65616368282866756E6374696F6E28';
wwv_flow_imp.g_varchar2_table(5) := '696E6465782C656C656D656E74297B7661722024656C656D656E743D242874686973293B7472797B76617220646174613D24656C656D656E742E617474722822646174612D636F6C756D6E22292C74656D706C6174653D24656C656D656E742E61747472';
wwv_flow_imp.g_varchar2_table(6) := '2822646174612D74656D706C61746522292C646174614A534F4E3D736166654A534F4E506172736528646174612C22646174612D636F6C756D6E22292C74656D706C6174654F626A3D6576616C282228222B74656D706C6174652B222922292C68656164';
wwv_flow_imp.g_varchar2_table(7) := '657248544D4C3D24656C656D656E742E617474722822646174612D68656164657222292C666F6F74657248544D4C3D24656C656D656E742E617474722822646174612D666F6F74657222292C72656E64657246756E6374696F6E3D24656C656D656E742E';
wwv_flow_imp.g_varchar2_table(8) := '617474722822646174612D72656E6465722D66756E6374696F6E22292C666E537472696E673D72656E64657246756E6374696F6E3B65786563757465496E436F6E74657874282272656E646572656448544D4C203D20222B666E537472696E672C7B6A73';
wwv_flow_imp.g_varchar2_table(9) := '6F6E3268746D6C3A6A736F6E3268746D6C2C646174614A534F4E3A646174614A534F4E2C74656D706C6174654F626A3A74656D706C6174654F626A7D293B76617220726573756C743D68656164657248544D4C2B72656E646572656448544D4C2B666F6F';
wwv_flow_imp.g_varchar2_table(10) := '74657248544D4C3B24656C656D656E742E68746D6C28726573756C74297D63617463682865297B636F6E736F6C652E6572726F7228652E6D657373616765292C617065782E6D6573736167652E73686F774572726F7273287B747970653A226572726F72';
wwv_flow_imp.g_varchar2_table(11) := '222C6C6F636174696F6E3A2270616765222C6D6573736167653A652E6D6573736167652C756E736166653A21317D297D7D29297D72657475726E7B72656E646572456C656D656E74733A72656E646572456C656D656E74737D7D28293B70726574697573';
wwv_flow_imp.g_varchar2_table(12) := '4A736F6E546F48746D6C2E72656E646572456C656D656E747328293B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(126871266937978187)
,p_plugin_id=>wwv_flow_imp.id(118972552593024472)
,p_file_name=>'pretius_json2html.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done