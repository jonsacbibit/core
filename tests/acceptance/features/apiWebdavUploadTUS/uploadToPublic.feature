@api @skipOnOcV10
Feature: upload to public webdav API
  As a user
  I want to be able to upload files
  So that I can store and share files between multiple client systems

  Background:
    Given user "Alice" has been created with default attributes and without skeleton files

  Scenario Outline: Uploading same file to a public upload-only share multiple times via old API
    Given using <dav_version> DAV path
    And user "Alice" has created folder "/FOLDER"
    And user "Alice" has created a public link share with settings
      | path        | FOLDER |
      | permissions | create |
    When the public uploads file with content "uploaded content" to "textfile.txt" using the TUS protocol WebDAV API
    Then as "Alice" file "/FOLDER/textfile.txt" should exist
    And the content of file "/FOLDER/textfile.txt" for user "Alice" should be "uploaded content"
    Examples:
      | dav_version |
      | old         |
      | new         |

