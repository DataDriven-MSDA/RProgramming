context("Response From Cache, CustomHeader")


# CAlling the new url makes a web call, first time, checking for list returned for json type
resp1 <- getData("http://json-schema.org/example/geo.json")
# capturing the execution timestamp
resp1exectime <- resp1$response_header$date

test_that("getData for application/json returns list for url 3 json", {
     expect_equal(class(resp1$response_content), "list")
})



# CAlling the new url makes a web call
resp2 <- getData("https://api.github.com/repos/DataDriven-MSDA/DATA607")

test_that("getData for json returns list for url 4 json", {
     expect_equal(class(resp2$response_content), "list")
})

test_that("getData for json returns list for url 4 json", {
     expect_equal(names(resp2$request_header), c("Accept","customHeader_Caller"))
})


test_that("getData for json returns list for url 4 json", {
     expect_equal((resp2$request_header[["customHeader_Caller"]]), Sys.info()[["user"]])
})


# CAlling the same url again fetches from the cache
resp1again <- getData("http://json-schema.org/example/geo.json")
# capturing the execution timestamp
resp1againexectime <- resp1again$response_header$date

test_that("getData for same url 3 fetched from cache is identical", {
     expect_identical(resp1again$response_content, resp1$response_content)
})
test_that("getData for same url 3 fetched from cache has same timestamp", {
     expect_identical(resp1exectime, resp1againexectime)
})



