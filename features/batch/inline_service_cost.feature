@regression
Feature: System Calls GetRates When "Ship To Address" is changed

  Background:
    Given I am signed in as a batch shipper

  @inline_service_rates
  Scenario:  System Calls GetRates When "Ship To Address" is changed
    * Add new order
    * Set Ship From to default
    * Set Ship-To address to random
    * Expect inline Service Cost for Priority Mail Large/Thick Envelope to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Package to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Large Package to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Flat Rate Envelope to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Padded Flat Rate Envelope to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Legal Flat Rate Envelope to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Small Flat Rate Box to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Medium Flat Rate Box to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Large Flat Rate Box to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Regional Rate Box A to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Regional Rate Box B to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Regional Rate Box C to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Express Package to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Express Flat Rate Envelope to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Express Legal Flat Rate Envelope to be greater than $0.01
    * Expect inline Service Cost for Priority Mail Express Medium Flat Rate Box to be greater than $0.01
    * Expect inline Service Cost for Parcel Select Package to be greater than $0.01
    * Expect inline Service Cost for Parcel Select Large Package to be greater than $0.01
    * Expect inline Service Cost for Parcel Select Oversized Package to be greater than $0.01
    * Expect inline Service Cost for Media Mail Package to be greater than $0.01
    * Expect Pounds to be 0
    * Expect Ounces to be 0
    * Expect Weight to be 0 lbs. 0 oz.
    * Sign out


