from turtle import title
from xml.dom.minidom import Element
import requests
from bs4 import BeautifulSoup

url = "https://www.youthop.com/search/?_sft_category=fellowships"
r = requests.get(url)

htmlContent = r.content
soup = BeautifulSoup(r.content, 'html.parser')
#print(soup.prettify())(
#exit()
#commonly used types of objects:
#1. Tag            print(type(title))
#2. NavigableString  print(type(title.string))
#3. BEautifulSoup  print(type(soup))
#4. Comment

#get the title of the html page
title = soup.title
#get all the paragraphs fromt the page
paras = soup.find_all('p')
#print(paras)

#get all the links from the html page
#print(anchors)

#print(soup.find('p'))           #get first element in the html page
#print(soup.find('p')['class'])      #get classes of any element to the html pages

#find all the Element with class 
#print(soup.find_all("p", class_ = "page-info"))

#get the text from the elements

#print(soup.get_text())
anchors = soup.find_all('a')
all_links = set()
for link in anchors:
    if(link.get ('href')!='#'):
        link = "https://www.youthop.com/search/?_sft_category=fellowships" + link.get('href')
        all_links.add(link)
        print(link)

with open("file.csv", "w") as f:
    f.write(link)
    #f.write("This,will,go,in,next,row")

 

    







