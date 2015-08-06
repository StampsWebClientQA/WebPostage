Feature: Examples

    Background:
        Given I am signed in as a batch shipper

    Scenario:  Inline Rates
        * Add new order
        * Edit row 1 on the order grid
        * Set Service to Priority Mail Large/Thick Envelope
        * Set Service to Priority Mail Package
        * Set Service to Priority Mail Large Package
        * Set Service to Priority Mail Flat Rate Envelope
        * Set Service to Priority Mail Padded Flat Rate Envelope
        * Set Service to Priority Mail Legal Flat Rate Envelope
        * Set Service to Priority Mail Small Flat Rate Box
        * Set Service to Priority Mail Medium Flat Rate Box
        * Set Service to Priority Mail Large Flat Rate Box
        * Set Service to Priority Mail Regional Rate Box A
        * Set Service to Priority Mail Regional Rate Box B
        * Set Service to Priority Mail Regional Rate Box C
        * Set Service to Priority Mail Express Package
        * Set Service to Priority Mail Express Flat Rate Envelope
        * Set Service to Priority Mail Express Legal Flat Rate Envelope
        * Set Service to Priority Mail Express Medium Flat Rate Box
        * Set Service to Parcel Select Package
        * Set Service to Parcel Select Large Package
        * Set Service to Parcel Select Oversized Package
        * Set Service to Media Mail Package

        * Set Pounds to 1
        * Set Ounces to 1
        * Set Length to 1
        * Set Width to 1
        * Set Height to 1
        * Set Insured Value to $1.09


        * Set Ship-To address to random
        * Click Ship To Less button

        * Set Ship-To address to
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Media Mail Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |

      # Expectations
        * Expect Recipient Name to be B-01671
        * Expect Company Name to be Inline Rates
        * Expect Street Address to be 1990 E Grand Ave
        * Expect City to be El Segundo
        * Expect State to be CA
        * Expect Zip Code to be 90245
        * Expect Phone to be (415) 123-5555
        * Expect Email to be rtest@stamps.com
        * Expect Pounds to be 0
        * Expect Ounces to be 1
        * Expect Weight to be 0 lbs. 1 oz.
        * Expect Insured Value to be $15.00
        * Expect Service Cost to be $0.00
        * Expect inline Service Cost for First-Class Mail Postcard to be greater than $0.35
        * Expect Service Cost to be $0.35
        * Expect inline Service Cost for Priority Mail Large/Thick Envelope to be greater than $5.05
        * Expect Service Cost to be $5.05
        * Expect inline Service Cost for Priority Mail Package to be greater than $5.05
        * Expect Service Cost to be $5.05
        * Expect inline Service Cost for Priority Mail Large Package to be greater than $5.54
        * Expect Service Cost to be $5.54
        * Expect inline Service Cost for Priority Mail Flat Rate Envelope to be greater than $5.05
        * Expect Service Cost to be $5.05
        * Expect inline Service Cost for Priority Mail Padded Flat Rate Envelope to be greater than $5.70
        * Expect Service Cost to be $5.70
        * Expect inline Service Cost for Priority Mail Legal Flat Rate Envelope to be greater than $5.25
        * Expect Service Cost to be $5.25
        * Expect inline Service Cost for Priority Mail Small Flat Rate Box to be greater than $5.25
        * Expect Service Cost to be $5.25
        * Expect inline Service Cost for Medium Flat Rate Box to be greater than $11.30
        * Expect Service Cost to be $11.30
        * Expect inline Service Cost for Priority Mail Large Flat Rate Box to be greater than $15.80
        * Expect Service Cost to be $15.80
        * Expect inline Service Cost for Priority Mail Regional Rate Box A to be greater than $5.32
        * Expect Service Cost to be $5.32
        * Expect inline Service Cost for Priority Mail Regional Rate Box B to be greater than $6.16
        * Expect Service Cost to be $6.16
        * Expect inline Service Cost for Priority Mail Regional Rate Box C to be greater than $9.85
        * Expect Service Cost to be $9.85
        * Expect inline Service Cost for Priority Mail Express Package to be greater than $13.09
        * Expect Service Cost to be $13.09
        * Expect inline Service Cost for Priority Mail Express Flat Rate Envelope to be greater than $18.11
        * Expect Service Cost to be $18.11
        * Expect inline Service Cost for Priority Mail Express Legal Flat Rate Envelope to be greater than $18.11
        * Expect Service Cost to be $18.11
        * Expect inline Service Cost for Priority Mail Express Medium Flat Rate Box to be greater than $44.95
        * Expect Service Cost to be $44.95
        * Expect inline Service Cost for Parcel Select Package to be greater than $5.70
        * Expect Service Cost to be $5.70
        * Expect inline Service Cost for Parcel Select Large Package to be greater than $17.75
        * Expect Service Cost to be $17.75
        * Expect inline Service Cost for Parcel Select Oversized Package to be greater than $62.99
        * Expect Service Cost to be $62.99
        * Expect inline Service Cost for Media Mail Package to be greater than $2.72
        * Expect Service Cost to be $2.72

        * Expect Ounces tooltip to display - The maximum value for this field is 15
        * Expect Pounds tooltip to display - The maximum value for this field is 70

        * Expect Ship-To address to be;
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Media Mail Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00             | 0       | 1      | 0       | 0     | 0     |
        * Sign out

    Scenario: Priority Mail Large/Thick Envelope
        * Add new order

        * Set Ship-To address to
            | name                                | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Large/Thick Envelope  | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Large/Thick Envelope
        * Expect Ship-To address to be;
            | name                                | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Large/Thick Envelope  | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Package
        * Add new order

        * Set Ship-To address to
            | name                  | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Package
        * Expect Ship-To address to be;
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Package     | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Large Package
        * Add new order

        * Set Ship-To address to
            | name                        | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Large Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Large Package
        * Expect Ship-To address to be;
            | name                        | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Large Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Flat Rate Envelope
        * Add new order

        * Set Ship-To address to
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Flat Rate Envelope | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Flat Rate Envelope
        * Expect Ship-To address to be;
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Flat Rate Envelope | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Padded Flat Rate Envelope
        * Add new order

        * Set Ship-To address to
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Padded Flat Rate Envelope | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Padded Flat Rate Envelope
        * Expect Ship-To address to be;
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Padded Flat Rate Envelope | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Legal Flat Rate Envelope
        * Add new order

        * Set Ship-To address to
            | name                                  | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Legal Flat Rate Envelope| B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Legal Flat Rate Envelope
        * Expect Ship-To address to be;
            | name                                    | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Legal Flat Rate Envelope  | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Small Flat Rate Box
        * Add new order

        * Set Ship-To address to
            | name                              | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Small Flat Rate Box | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Small Flat Rate Box
        * Expect Ship-To address to be;
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Small Flat Rate Box | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Medium Flat Rate Box
        * Add new order

        * Set Ship-To address to
            | name                               | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Medium Flat Rate Box | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Medium Flat Rate Box
        * Expect Ship-To address to be;
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Medium Flat Rate Box | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Large Flat Rate Box
        * Add new order

        * Set Ship-To address to
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Large Flat Rate Box | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Large Flat Rate Box
        * Expect Ship-To address to be;
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Large Flat Rate Box | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Regional Rate Box A
        * Add new order

        * Set Ship-To address to
            | name                              | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Regional Rate Box A | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Regional Rate Box A
        * Expect Ship-To address to be;
            | name                              | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Regional Rate Box A | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Regional Rate Box B
        * Add new order

        * Set Ship-To address to
            | name                              | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Regional Rate Box B | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Regional Rate Box B
        * Expect Ship-To address to be;
            | name                              | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Regional Rate Box B | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Regional Rate Box C
        * Add new order

        * Set Ship-To address to
            | name                              | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Regional Rate Box C | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Regional Rate Box C
        * Expect Ship-To address to be;
            | name                              | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Regional Rate Box C | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Express Package
        * Add new order

        * Set Ship-To address to
            | name                          | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Express Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Express Package
        * Expect Ship-To address to be;
            | name                          | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Express Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Express Flat Rate Envelope
        * Add new order

        * Set Ship-To address to
            | name                                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Express Flat Rate Envelope  | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |

        * Set Service to Priority Mail Express Flat Rate Envelope

        * Expect Ship-To address to be;
            | name                                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Express Flat Rate Envelope  | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Express Legal Flat Rate Envelope
        * Add new order

        * Set Ship-To address to
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Express Legal Flat Rate Envelope | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Express Legal Flat Rate Envelope
        * Expect Ship-To address to be;
            | name                      | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Express Legal Flat Rate Envelope | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00             | 0       | 1      | 0       | 0     | 0     |

    Scenario: Priority Mail Express Medium Flat Rate Box
        * Add new order

        * Set Ship-To address to
            | name                                        | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Express Medium Flat Rate Box  | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Priority Mail Express Medium Flat Rate Box
        * Expect Ship-To address to be;
            | name                                        | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Priority Mail Express Medium Flat Rate Box  | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Parcel Select Package
        * Add new order

        * Set Ship-To address to
            | name                  | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Parcel Select Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set Service to Parcel Select Package

    Scenario: Parcel Select Large Package
        * Add new order

        * Set Ship-To address to
            | name                        | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Parcel Select Large Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Parcel Select Large Package
        * Expect Ship-To address to be;
            | name                        | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Parcel Select Large Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Parcel Select Oversized Package
        * Add new order

        * Set Ship-To address to
            | name                            | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Parcel Select Oversized Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Parcel Select Oversized Package
        * Expect Ship-To address to be;
            | name                            | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Parcel Select Oversized Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00           | 0       | 1      | 0       | 0     | 0     |

    Scenario: Media Mail Package
        * Add new order

        * Set Ship-To address to
            | name               | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Media Mail Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Set order details with
            | insured_value | pounds  | ounces | length  | width | height  |
            | 0             | 0       | 1      | 0       | 0     | 0       |
        * Set Service to Media Mail Package
        * Expect Ship-To address to be;
            | name               | company                       | street_address      | city          | state | zip   | country       | phone       |  email            |
            | Media Mail Package | B-01588 Domestic USPS service | 1350 Market Street  | San Francisco | CA    | 94102 | United States | 4157988344  | rtest@stamps.com  |
        * Expect Order details to be;
            | insured_value  | pounds  | ounces | length  | width | height  |
            | 0.00             | 0       | 1      | 0       | 0     | 0     |
        * Sign out

    Scenario: Shipping Address Management
        * Add new order
        * Set Ship From to default
        * Add new Ship-From address
            |ship_from_zip  | name          | company     | street_address    | street_address2 | city          | state         | zip    | country       | phone           |
            |94105          | Euan | Betfair UK  | 201 Mission Street | Suite 700       | San Francisco | California    | 94105  | United States | (415) 123-5555  |
        * Expect new Ship-From address was added
        * Sign out
