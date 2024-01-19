import requests
import json
import re
import time
from bs4 import BeautifulSoup
import pymysql
import urllib.parse
#import fake_useragent 
import random
with open("url.json", "r") as f:
    data = json.load(f)

urls = data
articleList = []

user_agents = [
    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; AcooBrowser; .NET CLR 1.1.4322; .NET CLR 2.0.50727)",
    "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506)",
    "Mozilla/4.0 (compatible; MSIE 7.0; AOL 9.5; AOLBuild 4337.35; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)",
    "Mozilla/5.0 (Windows; U; MSIE 9.0; Windows NT 9.0; en-US)",
    "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Win64; x64; Trident/5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET CLR 2.0.50727; Media Center PC 6.0)",
    "Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET CLR 1.0.3705; .NET CLR 1.1.4322)",
    "Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.2; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.04506.30)",
    "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN) AppleWebKit/523.15 (KHTML, like Gecko, Safari/419.3) Arora/0.3 (Change: 287 c9dfb30)",
    "Mozilla/5.0 (X11; U; Linux; en-US) AppleWebKit/527+ (KHTML, like Gecko, Safari/419.3) Arora/0.6",
    "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.2pre) Gecko/20070215 K-Ninja/2.1.1",
    "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9) Gecko/20080705 Firefox/3.0 Kapiko/3.0",
    "Mozilla/5.0 (X11; Linux i686; U;) Gecko/20070322 Kazehakase/0.4.5",
    "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko Fedora/1.9.0.8-1.fc10 Kazehakase/0.5.6",
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.20 (KHTML, like Gecko) Chrome/19.0.1036.7 Safari/535.20",
    "Opera/9.80 (Macintosh; Intel Mac OS X 10.6.8; U; fr) Presto/2.9.168 Version/11.52",
]
# 完成随机选取 user-agnet，实现 反 反爬 操作
request_headers = {
    'user-agent': random.choice(user_agents),
    'Referer': 'https://www.chinanews.com.cn/'
}

for i, url in enumerate(urls):
    response = requests.get(url,headers=request_headers)
    response.encoding = "utf-8"
    soup = BeautifulSoup(response.text, "html.parser")
    elements = soup.find(class_="content_maincontent_more")
    title = elements.find(class_="content_left_title").text
    print(title)
    time = re.sub(
        r"\s+|来源：", "", elements.find(class_="content_left_time").contents[0].strip()
    )
    time = re.sub(r"年|月", "-", time)
    time = re.sub(r"日", " ", time)
    time = re.sub(r"[^0-9\s:-]", "", time)
    time = time.strip()
    print(time)
    content = elements.find(class_="left_zw")
    pictext_tags = content.find_all(class_="pictext")
    for tag in pictext_tags:
        tag.decompose()

    # 查找class为adInContent的标签并删除
    ad_tags = content.find_all(class_="adInContent")
    for tag in ad_tags:
        tag.decompose()

    content = re.sub(
        r"<!--(.*?)-->",
        "",
        re.sub("</?a[^>]*>", "", str(content)),
    )
    content = re.sub(r'<div id="function_code_page"></div>', "", content)
    print(content)

    a = {
        "id": i + 200,
        "title": title,
        "content": content,
        "Date": time,
    }

    articleList.append(a)



for article in articleList:
    query = "INSERT INTO news (ArticleID, Title, Info, Date) VALUES (%s, %s, %s, %s)"
    values = (
        article["id"],
        article["title"],
        article["content"],
        article["Date"],
    )
    print(query)

