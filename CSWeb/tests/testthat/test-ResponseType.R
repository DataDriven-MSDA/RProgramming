context("Response Type")


# Calling the new url makes a web call, first time, checking for list returned for json type
test_that("getData for json returns list for json url 1 response", {
     expect_equal(class((getData("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test"))$response_content), "list")
})


# Calling the new url makes a web call, checking for text/html type to return text content
resptext <- getData("http://www.cnn.com")

test_that("getData for text/html returns text content for url 2 response", {
     expect_equal(class(resptext$response_content), "character")
})


# Calling the new url makes a web call, checking for application/xml or text/xml type to return text content
respxml <- getData("https://www.w3schools.com/xml/plant_catalog.xml")

test_that("getData for text/xml returns XML document for url 3 response", {
     expect_equal(class(respxml$response_content), "data.frame")
})
