@bvt
Feature: BVT - Purchasing

  Background:
    Given I am signed in as a batch shipper

  @bvt_purchasing
  Scenario: $10
    * Buy $10 postage
    * Expect $10 is added to customer balance
    * Sign out