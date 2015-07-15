@regression
Feature: B-01624 Print postage for a single selected order

  Background:
    Given I am signed in as a batch shipper

  @print
  Scenario:  Print
    * I am signed in as a batch shipper
    * Add new order
    * Expect new Order ID created
    * Set Recipient Address to B-01624, Print Priority Mail Package, 1900 E Grand Ave, El Segundo, CA, 90245
    * Set Phone to (415) 123-5555
    * Click Ship To Less button
    * Set Service to Priority Mail Package
    * Print
    * Sign out

    * I am signed in as a batch shipper
    * Add new order
    * Expect new Order ID created
    * Set Recipient Address to B-01624, Priority Mail Flat Rate Envelope, 1900 E Grand Ave, El Segundo, CA, 90245
    * Set Phone to (415) 123-5555
    * Click Ship To Less button
    * Set Service to Priority Mail Flat Rate Envelope
    * Print
    * Sign out

    * I am signed in as a batch shipper
    * Add new order
    * Expect new Order ID created
    * Set Recipient Address to B-01624, Print Priority Mail Regional Rate Box A, 1900 E Grand Ave, El Segundo, CA, 90245
    * Set Phone to (415) 123-5555
    * Click Ship To Less button
    * Set Service to Priority Mail Regional Rate Box A
    * Print
    * Sign out

    * I am signed in as a batch shipper
    * Add new order
    * Expect new Order ID created
    * Set Recipient Address to B-01624, Print Priority Mail Express Package, 1900 E Grand Ave, El Segundo, CA, 90245
    * Set Phone to (415) 123-5555
    * Click Ship To Less button
    * Set Service to Priority Mail Express Package
    * Print
    * Sign out

    * I am signed in as a batch shipper
    * Add new order
    * Expect new Order ID created
    * Set Recipient Address to B-01624, Priority Mail Small Flat Rate Box, 1900 E Grand Ave, El Segundo, CA, 90245
    * Set Phone to (415) 123-5555
    * Click Ship To Less button
    * Set Service to Priority Mail Small Flat Rate Box
    * Print
    * Sign out

    * I am signed in as a batch shipper
    * Add new order
    * Expect new Order ID created
    * Set Recipient Address to B-01624, Priority Mail Express Medium Flat Rate Box, 1900 E Grand Ave, El Segundo, CA, 90245
    * Set Phone to (415) 123-5555
    * Click Ship To Less button
    * Set Service to Priority Mail Express Medium Flat Rate Box
    * Print
    * Sign out

    * I am signed in as a batch shipper
    * Add new order
    * Expect new Order ID created
    * Set Recipient Address to B-01624, Parcel Select Large Package, 1900 E Grand Ave, El Segundo, CA, 90245
    * Set Phone to (415) 123-5555
    * Click Ship To Less button
    * Set Service to Parcel Select Large Package
    * Print

    * Sign out
