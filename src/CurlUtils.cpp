#include "CurlUtils.h"
#include <curl/curl.h>
#include <iostream>

namespace CurlUtils
{
    size_t WriteCallback(void *contents, size_t size, size_t nmemb, std::string *s)
    {
        s->append((char *)contents, size * nmemb);
        return size * nmemb;
    }

    std::string postRequest(const std::string &url, const std::string &body, const std::string &auth_header)
    {
        CURL *curl;
        CURLcode res;
        std::string response;

        curl = curl_easy_init();
        if (curl)
        {
            struct curl_slist *headers = nullptr;
            headers = curl_slist_append(headers, "Content-Type: application/json");

            // Add the authorization header if provided
            if (!auth_header.empty())
            {
                headers = curl_slist_append(headers, auth_header.c_str());
            }

            curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
            curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
            curl_easy_setopt(curl, CURLOPT_POSTFIELDS, body.c_str());
            curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
            curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);

            res = curl_easy_perform(curl);
            if (res != CURLE_OK)
            {
                std::cerr << "curl_easy_perform() failed: " << curl_easy_strerror(res) << std::endl;
            }

            // Clean up
            curl_slist_free_all(headers);
            curl_easy_cleanup(curl);
        }

        return response;
    }
}
