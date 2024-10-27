#ifndef CURL_UTILS_H
#define CURL_UTILS_H

#include <string>

namespace CurlUtils
{
    std::string postRequest(const std::string &url, const std::string &body, const std::string &auth_header = "");
}

#endif
