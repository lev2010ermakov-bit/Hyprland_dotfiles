#include <iostream>
#include <string>
#include <curl/curl.h>
#include <json/value.h>
#include <memory>
size_t WriteCallback(void* contents, size_t size, size_t nmemb, std::string* userp){
  size_t totalSize = size * nmemb;
  userp->append((char*)contents, totalSize);
  return totalSize;
}

int main(){
    CURL* curl;
    CURLcode res;
    std::string readBuffer;

    curl = curl_easy_init();
    if(curl){
        std::string url = "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current=temperature_2m,wind_speed_10m,temperature_2m,relative_humidity_2m,wind_speed_10m";

        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
        
        res = curl_easy_perform(curl);
        curl_easy_cleanup(curl);

        if (res == CURLE_OK){
            Json::Value root;
    Json::CharReaderBuilder builder;
    std::unique_ptr<Json::CharReader> reader(builder.newCharReader());
    std::string errors;

    // 1. Парсим сырую строку в объект Json::Value
    bool parsingSuccessful = reader->parse(readBuffer.c_str(), readBuffer.c_str() + readBuffer.size(), &root, &errors);
    
    if (!parsingSuccessful) {
        std::cerr << "Ошибка парсинга JSON: " << errors << std::endl;
        return 1;
    }

    // 2. Проверяем безопасность: есть ли у нас вообще блок "current"
    if (root.isMember("current")) {
        
        // 3. Спускаемся внутрь "current" и достаем температуру как double
        double temperature = root["current"]["temperature_2m"].asDouble();
        
        // Также можно достать влажность и скорость ветра
        int humidity = root["current"]["relative_humidity_2m"].asInt();
        double windSpeed = root["current"]["wind_speed_10m"].asDouble();

        // Выводим результат
        std::cout << "=== Текущая погода ===" << std::endl;
        std::cout << "Температура: " << temperature << "°C" << std::endl;
        std::cout << "Влажность: " << humidity << "%" << std::endl;
        std::cout << "Скорость ветра: " << windSpeed << " км/ч" << std::endl;
        
    } else {
        std::cerr << "Ошибка: В ответе сервера нет блока 'current'!" << std::endl;
    }

        }
        else
            std::cout << res;
    }
    return 0;
}
