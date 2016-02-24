��    ~                    �  O   �  ?   M  U   �  Y   �     =	  -   [	     �	     �	  �   �	  ,   �
     �
  "   �
  #     ?   3  �   s       �        �     �                     ;  L   O     �     �  K   �          +     A     U     a  p   ~  j   �     Z  s   r  c   �  R   J  C   �  <   �  F     &   e  U   �     �     �          #     +     D     U     d     y     �     �  	   �     �  $   �     �     �               #     *     A  	   Q     [  *   c  %   �     �     �     �     �     �               8  	   D     N  
   ]     h     u     �     �  ;   �  ,   �     #  &   6  ,   ]  �   �  ?   6  >   v     �     �  9   �  4     '   O  ;   w  =   �  J   �  L   <     �  6   �  8   �  %     8   >  3   w  A   �  G   �  6   5  f   l  0   �       '     9   ;     u  >   �  <   �  *     3   6  +   j     �  0   �     �     �       y    O   �  ?   �  U   '  Y   }     �  -   �     #      ?   �   Z   ,   :!     g!  "   �!  #   �!  ?   �!  �   "     �"  �   �"     h#     �#     �#     �#     �#     �#  L   �#     6$     L$  K   c$     �$     �$     �$     �$     �$  p   %  j   �%     �%  s   &  c   �&  R   �&  C   7'  <   {'  F   �'  &   �'  U   &(     |(     �(     �(     �(     �(     �(     �(     �(     )     %)     :)  	   F)     P)  $   c)     �)     �)     �)     �)     �)     �)     �)  	   �)     �)  *   �)  %   (*     N*     ^*     l*     �*     �*     �*     �*     �*  	   �*     �*  
   �*     +     +     %+     :+  ;   T+  ,   �+     �+  &   �+  ,   �+  �   $,  ?   �,  >   -     O-     ^-  9   z-  4   �-  '   �-  ;   .  =   M.  J   �.  L   �.     #/  6   B/  8   y/  %   �/  8   �/  3   0  A   E0  G   �0  6   �0  f   1  0   m1     �1  '   �1  9   �1     2  >   )2  <   h2  *   �2  3   �2  +   3     03  0   J3     {3     �3     �3   (optional) the timezone used by your server. Only for Odoo source version < 6.1 (required) a purely informative name for you database dump file (required) the Odoo version you want to upgrade to. Valid choices: 6.0, 6.1, 7.0, 8.0 (required) the purpose of your upgrade database request. Valid choices: test, production. (required) your email address (required) your enterprise contract reference (required) your private key (required) your request id A list of dictionaries, each dictionary giving information about one particular error. Each dictionary can contain various keys depending of the type of error but you will always get the ``reason`` and the ``message`` keys: Ask the status of a database upgrade request Asking to process your request Creates a database upgrade request Creating a database upgrade request Here are 2 examples of database upgrade request creation using: If the *create* method is successful, the value associated to the *request* key will be a dictionary containing various information about the created request: Introduction It allows a database to be upgraded without ressorting to the html form at https://upgrade.odoo.com Although the database will follow the same process described on that form. Obtaining your request status Process a database dump Sample output Sample script See a sample output aside. Some possible keys: The *create* method returns a json dictionary containing the following keys: The ``create`` method The ``process`` method The ``request`` key contains various useful information about your request: The ``status`` method The ``upload`` method The list of errors. The methods The most important keys are: The other keys will be explained in the section describing the :ref:`status method <upgrade-api-status-method>`. The request id and the private key are obtained using the :ref:`create method <upgrade-api-create-method>` The required steps are: The result is a json dictionary containing the list of ``failures``, which should be empty if everything went fine. The result is a json dictionary containing various information about your database upgrade request. These 2 values will be requested by the other methods (upload, process and status) This action ask the Upgrade Platform to process your database dump. This action ask the status of your database upgrade request. This action creates a database request with the following information: This action upload your database dump. This document describes the API used to upgrade an Odoo database to a higher version. Upgrade API Uploading your database dump Uploads a database dump ``aim`` ``code``: a faulty value ``compressions`` ``created_at`` ``customer_message`` ``database_uuid`` ``database_version`` ``elapsed`` ``email`` ``estimated_time`` ``expected``: a list of valid values ``failures`` ``filename`` ``filesize`` ``filestore`` ``id`` ``id``: the request id ``issue_stage`` ``issue`` ``key`` ``key``: your private key for this request ``message``: a human friendly message ``modules_url`` ``notes_url`` ``original_dump_url`` ``original_sql_url`` ``postgresql`` ``processed_at`` ``reason``: the error type ``request`` ``state`` ``status_url`` ``target`` ``timezone`` ``upgraded_dump_url`` ``upgraded_sql_url`` ``value``: a faulty value an estimation of the time it takes to upgrade your database an important message related to your request creating a request downloading the upgraded database dump obtaining the status of the database request one in the bash programming language using `curl <http://curl.haxx.se>`_ (tool for transfering data using http) and `jq <https://stedolan.github.io/jq>`_ (JSON processor): one in the python programming language using the pycurl library optionally the server timezone (for Odoo source version < 6.1) request result running the upgrade process the URL to access your database upgrade request html page the URL to get the notes about your database upgrade the URL used to get your custom modules the URL used to get your upgraded database as an SQL stream the URL used to get your upgraded database as an archive file the URL used to get your uploaded (not upgraded) database as an SQL stream the URL used to get your uploaded (not upgraded) database as an archive file the Unique ID of your database the compression methods used by your uploaded database the database dump name (required but purely informative) the date when you created the request the email address you supplied when creating the request the filename you supplied when creating the request the guessed Odoo version of your uploaded (not upgraded) database the guessed Postgresql version of your uploaded (not upgraded) database the id of the issue we have create on Odoo main server the purpose (test, production) of your database upgrade request you supplied when creating the request the purpose of your request (test or production) the request id the size of your uploaded database file the stage of the issue we have create on Odoo main server the state of your request the target Odoo version you supplied when creating the request the target version (the Odoo version you want to upgrade to) the time it takes to upgrade your database the timezone you supplied when creating the request time when your database upgrade was started uploading a database dump your attachments were converted to the filestore your contract reference your email address your private key Project-Id-Version: odoo 9.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-02-22 23:10-0600
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: es
Language-Team: es <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 (optional) the timezone used by your server. Only for Odoo source version < 6.1 (required) a purely informative name for you database dump file (required) the Odoo version you want to upgrade to. Valid choices: 6.0, 6.1, 7.0, 8.0 (required) the purpose of your upgrade database request. Valid choices: test, production. (required) your email address (required) your enterprise contract reference (required) your private key (required) your request id A list of dictionaries, each dictionary giving information about one particular error. Each dictionary can contain various keys depending of the type of error but you will always get the ``reason`` and the ``message`` keys: Ask the status of a database upgrade request Asking to process your request Creates a database upgrade request Creating a database upgrade request Here are 2 examples of database upgrade request creation using: If the *create* method is successful, the value associated to the *request* key will be a dictionary containing various information about the created request: Introduction It allows a database to be upgraded without ressorting to the html form at https://upgrade.odoo.com Although the database will follow the same process described on that form. Obtaining your request status Process a database dump Sample output Sample script See a sample output aside. Some possible keys: The *create* method returns a json dictionary containing the following keys: The ``create`` method The ``process`` method The ``request`` key contains various useful information about your request: The ``status`` method The ``upload`` method The list of errors. The methods The most important keys are: The other keys will be explained in the section describing the :ref:`status method <upgrade-api-status-method>`. The request id and the private key are obtained using the :ref:`create method <upgrade-api-create-method>` The required steps are: The result is a json dictionary containing the list of ``failures``, which should be empty if everything went fine. The result is a json dictionary containing various information about your database upgrade request. These 2 values will be requested by the other methods (upload, process and status) This action ask the Upgrade Platform to process your database dump. This action ask the status of your database upgrade request. This action creates a database request with the following information: This action upload your database dump. This document describes the API used to upgrade an Odoo database to a higher version. Upgrade API Uploading your database dump Uploads a database dump ``aim`` ``code``: a faulty value ``compressions`` ``created_at`` ``customer_message`` ``database_uuid`` ``database_version`` ``elapsed`` ``email`` ``estimated_time`` ``expected``: a list of valid values ``failures`` ``filename`` ``filesize`` ``filestore`` ``id`` ``id``: the request id ``issue_stage`` ``issue`` ``key`` ``key``: your private key for this request ``message``: a human friendly message ``modules_url`` ``notes_url`` ``original_dump_url`` ``original_sql_url`` ``postgresql`` ``processed_at`` ``reason``: the error type ``request`` ``state`` ``status_url`` ``target`` ``timezone`` ``upgraded_dump_url`` ``upgraded_sql_url`` ``value``: a faulty value an estimation of the time it takes to upgrade your database an important message related to your request creating a request downloading the upgraded database dump obtaining the status of the database request one in the bash programming language using `curl <http://curl.haxx.se>`_ (tool for transfering data using http) and `jq <https://stedolan.github.io/jq>`_ (JSON processor): one in the python programming language using the pycurl library optionally the server timezone (for Odoo source version < 6.1) request result running the upgrade process the URL to access your database upgrade request html page the URL to get the notes about your database upgrade the URL used to get your custom modules the URL used to get your upgraded database as an SQL stream the URL used to get your upgraded database as an archive file the URL used to get your uploaded (not upgraded) database as an SQL stream the URL used to get your uploaded (not upgraded) database as an archive file the Unique ID of your database the compression methods used by your uploaded database the database dump name (required but purely informative) the date when you created the request the email address you supplied when creating the request the filename you supplied when creating the request the guessed Odoo version of your uploaded (not upgraded) database the guessed Postgresql version of your uploaded (not upgraded) database the id of the issue we have create on Odoo main server the purpose (test, production) of your database upgrade request you supplied when creating the request the purpose of your request (test or production) the request id the size of your uploaded database file the stage of the issue we have create on Odoo main server the state of your request the target Odoo version you supplied when creating the request the target version (the Odoo version you want to upgrade to) the time it takes to upgrade your database the timezone you supplied when creating the request time when your database upgrade was started uploading a database dump your attachments were converted to the filestore your contract reference your email address your private key 