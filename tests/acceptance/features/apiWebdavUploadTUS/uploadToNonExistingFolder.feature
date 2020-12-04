@api @skipOnOcV10
Feature: upload file
  As a user
  I want to be able to upload files
  So that I can store and share files between multiple client systems

  Background:
    Given using OCS API version "1"
    And user "Alice" has been created with default attributes and without skeleton files

  @skipOnOcV10.3 @skipOnOcV10.4 @skipOnOcV10.5
  Scenario Outline: attempt to upload a file into a non-existent folder
    Given using <dav_version> DAV path
    When user "Alice" uploads file with content "uploaded content" to "/Shares/FOLDER/textfile.txt" using the TUS protocol on the WebDAV API
    Then as "Alice" folder "/Shares/FOLDER/" should not exist
    And as "Alice" file "/Shares/FOLDER/textfile.txt" should not exist
    Examples:
      | dav_version |
      | old         |
      | new         |
