@regression
Feature:  B-01630 Ship Date - Print 2 days from today

  Background:
    * I am signed in as a batch shipper

  @print_date_1 @print_date
  Scenario:  Print 2 days from today
    * Add new order
    * Set Recipient Address to B-01630, Print 2 days from today, 1990 E Grand Ave, El Segundo, CA, 90245
    * Set Phone to (415) 123-5555
    * Set Email to rtest@stamps.com
    * Set Service to Priority Mail Package
    * Click Toolbar Print Button
    * Set Ship Date to 2 day from today
    * Print