@regression
Feature: B-01604 Orders with an ambiguous address

  Background:
    Given I am signed in as a batch shipper

  @ambigious_address
  Scenario: Exact Address Not Found
    * Add new order
    * Set Service to Priority Mail Package
    * Set Receipient partial address to;
      | name    | company                 | street_address      | city          | state | zip   | country       | phone           |  email            |
      | B-01603 | Exact Address Not Found | 1390 Market Street  | San Francisco | CA    | 94102 | United States |   |   |
    * Expect "Exact Address Not Found" module to appear
    * Select row 2 from Exact Address Not Found module
    * Expect Recipient Name to be B-01603
    * Expect Company Name to be Exact Address Not Found
    * Expect City to be San Francisco
    * Expect State to be CA
    * Expect Zip Code to be 94102
    * Click Ship To Less button
    * Set Service to Priority Mail Package
    * Sign out
