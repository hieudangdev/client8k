# OPHIM CRAWLER

## Demo
### Trang Crawl
![Alt text](https://i.ibb.co/WPy9Hp7/CRAWLER-INDEX.png "Crawler Page")

### Trang Cấu Hình
![Alt text](https://i.ibb.co/zmDYwRd/CRAWLER-OPTION.png "Options Page")

### Cấu Hình Tự Động
![Alt text](https://i.ibb.co/5jY3s2P/CRAWLER-SCHEDULE.png "Options Page")

## Requirements
https://github.com/khophim8k/ophim-core

## Install
- Tại thư mục của Project: `composer require khophim8k/khophim8k-crawler-fakerview`

## Update
- Tại thư mục của Project: `composer update khophim8k/khophim8k-crawler-fakerview`

## Setup Crontab
[Setup crontab, add this entry](https://github.com/khophim8k/ophim-core#reset-view-counter)

## Changelog
### 1.1.0
- Update crawler schedule
### 1.0.3
- Fix Logic save field crawler
### 1.0.2
- enable check hasChange
### 1.0.1
- Fix sync episodes
### 23/09/2022
- Ghi nhớ fields crawl + download images
- Fix crawl pages hạn chế timeout khi nhiều page

### 22/09/2022
- Thêm lọc bỏ qua theo định dạng
- Tạo thể loại đối với định dạng là `hoạt hình` và `tv shows`
