//DATAS 4 BURSAM APP

/*
    DbHelper dbHelper = DbHelper();
    dbHelper.createDb().then((value) => null);

  ********* PLACES *********

    dbHelper.placeAdd(PlaceModel(
        id: 1,
        placeCategory: "shopping",
        placeName: "Balibey Han",
        placeExplanation:
            "Balibey Han is a three-storey inn built at the end of the 15th century to meet the accommodation needs of groups coming from outside the city to sell or buy goods to the shops in the Grand Bazaar in Bursa.",
        placeLocation:
            "https://www.google.com/maps/place/Balibey+Han/@40.1849475,29.0585086,15z/data=!4m6!3m5!1s0x14ca3de346dc1063:0xfcca922eae58766e!8m2!3d40.1849475!4d29.0585086!16s%2Fg%2F11hbgj9hlb",
        placeImgPath: "assets/img/shopping/balibeyhan.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 2,
        placeCategory: "shopping",
        placeName: "Eski Aynalı Çarşı",
        placeExplanation:
            "The historical building, which is located in the Hanlar region and known as the 'Mirror Bazaar', was a bath located in the Orhan Complex. The building, which was built by the Ottoman Sultan Orhan Bey in 1339, was built to provide income for the Manastır Madrasah in Tophane.",
        placeLocation:
            "https://www.google.com/search?tbs=lf:1,lf_ui:2&tbm=lcl&q=bursa+eski+aynalı+çarşı&rflfq=1&num=10&ved=2ahUKEwiYt9PKo5H-AhWFSPEDHQ2iAIoQtgN6BAgMEAc#rlfi=hd:;si:5985866226920225239,l,ChtidXJzYSBlc2tpIGF5bmFsxLEgw6dhcsWfxLFIt4286vivgIAIWjEQARACEAMYABgCGAMiG2J1cnNhIGVza2kgYXluYWzEsSDDp2FyxZ_EsSoGCAIQARACkgEPc2hvcHBpbmdfY2VudGVymgEkQ2hkRFNVaE5NRzluUzBWSlEwRm5TVU5MZVhabFZYVjNSUkFCqgEjEAEyHxABIhv1bFZBsqAtI-QG8ND0crWcYKqKJhpquREpu-w;mv:[[40.1845497,29.0629289],[40.1835801,29.062685100000003]]",
        placeImgPath: "assets/img/shopping/eskiaynalicarsi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 3,
        placeCategory: "shopping",
        placeName: "Fidan Han",
        placeExplanation:
            "The inn, which was built by Fatih Sultan Mehmet's Grand Vizier Mahmut Pasha, is also known as Mahmut Pasha or Fidan Han. In the courtyard of the inn with two floors and a portico in front of the rooms, there is a 12-cornered mosque on a 12-cornered fountain. Located in the open bazaar in the center of Bursa, the Han has been restored in recent years and has been put into service with the shops it houses. The courtyard of the inn is used as a tea garden.",
        placeLocation:
            "https://www.google.com/search?tbs=lf:1,lf_ui:2&tbm=lcl&q=bursa+fidan+han&rflfq=1&num=10&ved=2ahUKEwiW6_eCpJH-AhW-VfEDHSNiBtkQtgN6BAgNEAc#rlfi=hd:;si:12950170290451203853,l,Cg9idXJzYSBmaWRhbiBoYW5Izp3l1IC5gIAIWiUQABABEAIYABgBGAIiD2J1cnNhIGZpZGFuIGhhbioGCAIQARACkgETaGlzdG9yaWNhbF9sYW5kbWFya5oBI0NoWkRTVWhOTUc5blMwVkpRMEZuU1VOQ2VTMTJPRWxCRUFFqgEjEAEyHxABIhv8z6WpsIsnKIos7-NylqfngUBA76Tm3GXPyJE;mv:[[40.18508179199357,29.064346083340222],[40.18479491580591,29.063625239667473]]",
        placeImgPath: "assets/img/shopping/fidanhan.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 4,
        placeCategory: "shopping",
        placeName: "Kapalı Çarşı",
        placeExplanation:
            "During the Orhangazi period, covered bazaars were started to be created by covering the spaces between the inns with a roof and the first state of the Grand Bazaar was formed in this way.",
        placeLocation:
            "https://www.google.com/search?q=bursa%20kapalı%20çarşı&hl=tr&source=hp&ei=s6YsZJznGNOsxc8P05-esAY&iflsig=AOEireoAAAAAZCy0w2A6TikMhgsNeU5Z-8PlLcT4P4ta&ved=2ahUKEwih_reXpZH-AhU2SvEDHfDeAoAQvS56BAgNEAE&uact=5&oq=bursa+kapalı+çarşı&gs_lcp=Cgdnd3Mtd2l6EAMyCwgAEIAEELEDEIMBMgsIABCABBCxAxCDATILCAAQgAQQsQMQgwEyBQgAEIAEMgsIABCABBCxAxCDATIFCAAQgAQyBQgAEIAEMgUIABCABDILCAAQgAQQsQMQgwEyBQgAEIAEOg4ILhCDARDUAhCxAxCABDoICC4QgAQQ1AI6CwgAEIoFELEDEIMBOhEILhCABBCxAxCDARDHARDRAzoOCC4QgAQQsQMQgwEQ1AI6CwguEIAEELEDENQCOgsILhCABBDHARDRAzoLCC4QgAQQxwEQrwE6BQguEIAEOhEILhCABBCxAxCDARDHARCvAToICC4QgAQQsQM6EAgAEIAEELEDEIMBEEYQgAI6CAgAEIAEELEDUABY1BNgjhVoAHAAeACAAakBiAHxD5IBBDcuMTGYAQCgAQE&sclient=gws-wiz&tbs=lf:1,lf_ui:2&tbm=lcl&rflfq=1&num=10&rldimm=16576591593677595896&lqi=ChZidXJzYSBrYXBhbMSxIMOnYXLFn8SxSNTu2JrxqoCACFooEAEQAhgAGAEYAiIWYnVyc2Ega2FwYWzEsSDDp2FyxZ_EsSoECAIQAZIBDWhpc3RvcmljX3NpdGWqASMQATIfEAEiG_srFXktDuFHhP9ApZE_87TxZ0YH-SwvdnXlcw&sa=X&rlst=f#rlfi=hd:;si:16576591593677595896,l,ChZidXJzYSBrYXBhbMSxIMOnYXLFn8SxSNTu2JrxqoCACFooEAEQAhgAGAEYAiIWYnVyc2Ega2FwYWzEsSDDp2FyxZ_EsSoECAIQAZIBDWhpc3RvcmljX3NpdGWqASMQATIfEAEiG_srFXktDuFHhP9ApZE_87TxZ0YH-SwvdnXlcw;mv:[[40.185177499999995,29.061908],[40.1846578,29.0601356]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:2",
        placeImgPath: "assets/img/shopping/kapalicarsi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 5,
        placeCategory: "shopping",
        placeName: "Koza Han",
        placeExplanation:
            "Koza Han II. at the end of the 15th century. It is an inn that was built by the architect Abdül ula bin Pulat Şah as a foundation for his works in Istanbul by Bayezid I in Bursa.",
        placeLocation:
            "https://www.google.com/maps/place/Koza+Han/@40.1840778,29.0634578,15z/data=!4m2!3m1!1s0x0:0xc31f434d2d7b03cd?sa=X&hl=tr&ved=2ahUKEwipitPepZH-AhUgX_EDHUnaBD0Q_BJ6BQiUARAI",
        placeImgPath: "assets/img/shopping/kozahan.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 6,
        placeCategory: "shopping",
        placeName: "Uzun Çarşı",
        placeExplanation:
            "It forms the oldest part of Bursa Bazaar. The bazaar, which stretches from the northern gate of Koza Han to the Salt Bazaar in the east, is one of the busiest bazaars in Bursa. It is known that it was called Uzun Çarşı in the first half of the century. Evliya Çelebi states that there are 9000 shops in Uzun Çarşı. In the past, in the bazaar, where haberdashery and fabric shops were concentrated, today more ready-made clothing tradesmen operate.",
        placeLocation:
            "https://www.google.com/maps/place/Uzunçarşı+Cd.,+Osmangazi%2FBursa/@40.184771,29.0630255,17z/data=!3m1!4b1!4m6!3m5!1s0x14ca3de3c8e614b5:0x3b1c9b5350c7af2!8m2!3d40.184771!4d29.0630255!16s%2Fg%2F1twxbqgg?hl=tr",
        placeImgPath: "assets/img/shopping/uzuncarsi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 8,
        placeCategory: "museum",
        placeName: "Anadolu Arabaları Müzesi",
        placeExplanation:
            "Tofaş Bursa Anatolian Cars Museum is Turkey's first and only Anatolian Cars Museum. The silk factory, which belongs to the İpeker Family and is established on a total area of 17.000 square meters in the Umurbey Neighborhood, was restored by Tofaş and opened as a museum on 28 June 2002. Cars in the museum; The lively and effective corner structure of the car industry and culture of thousands of years in Anatolia, Anatolian design values are valuable and efficient products.",
        placeLocation:
            "https://www.google.com/maps/place/Tofaş+Anadolu+Arabalar+Müzesi/@40.1765687,29.0710408,15z/data=!4m6!3m5!1s0x14ca3d648a8d9c85:0xe9b518b546235485!8m2!3d40.1765687!4d29.0710408!16s%2Fg%2F121h3kgk",
        placeImgPath: "assets/img/museum/anadoluarabalarimuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 9,
        placeCategory: "museum",
        placeName: "Arkeoloji Muzesi",
        placeExplanation:
            "In order to establish a Museum in Bursa, the works were first collected in Bursa Boys' High School from 1904 to 1972. In 1972, it moved to the newly constructed building in the Reşat Oyal Culture Park. In the museum where artifacts found in Bithynia and Mysia regions are exhibited, BC. There are artifacts belonging to the end of the Byzantine Period from 3 thousand years ago. There are 25 thousand works in the museum, about 2 thousand of them are exhibited.",
        placeLocation:
            "https://www.google.com/maps/place/Bursa+Arkeoloji+Müzesi/@40.1958261,29.0410039,15z/data=!4m2!3m1!1s0x0:0xae69beb4ce2f4179?sa=X&ved=2ahUKEwjqt6vzmLb-AhXrX_EDHXd6AF4Q_BJ6BAh0EAg",
        placeImgPath: "assets/img/museum/arkeolojimuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 10,
        placeCategory: "museum",
        placeName: "Atatürk Evi",
        placeExplanation:
            "Atatürk House Museum is a mansion built at the end of the 19th century and was bought by the Bursa Municipality and given to Atatürk as a gift during Atatürk's second visit to Bursa on 20-24 January 1923. This mansion, which was donated to Bursa Municipality by Atatürk in 1938 and transferred to the Ministry of Culture in 1968, was turned into a museum on October 29, 1973, on the 50th anniversary of the Republic.",
        placeLocation:
            "https://www.google.com/maps/place/Bursa+'Atatürk+Evi'+Müzesi/@40.195031,29.0400952,15z/data=!4m6!3m5!1s0x14ca15fdd9121bdd:0xbf433e94a2804e86!8m2!3d40.195031!4d29.0400952!16s%2Fg%2F11f03_lcgm",
        placeImgPath: "assets/img/museum/ataturkevi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 11,
        placeCategory: "museum",
        placeName: "Bursa Kent Müzesi",
        placeExplanation:
            "Bursa City Museum is Turkey's first city museum. The goal of Bursa City Museum is to create a city museum in Bursa, which carries the identity of a pioneering city in the formation and development of traditional Anatolian and Ottoman culture of approximately 7000 years, where citizens and tourists can learn about this accumulation by seeing and even experiencing it. Bursa City Museum is a concept museum and opened its doors on February 14, 2004. The Old Courthouse, one of the three administrative structures of the Republican Period, where the city museum is located, was built in 1926 by Ekrem Hakkı Ayverdi. The building, which consists of a basement and 2 floors and a total area of 2010 square meters, is a structure that has the characteristics of the I. National Architecture Period.",
        placeLocation:
            "https://www.google.com/maps/place/Bursa+Kent+Müzesi/@40.1823757,29.0664314,15z/data=!4m2!3m1!1s0x0:0xfcd55b077185c274?sa=X&ved=2ahUKEwij4O3Wmbb-AhULR_EDHZn8D4gQ_BJ6BAh-EAg",
        placeImgPath: "assets/img/museum/bursakentmuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 12,
        placeCategory: "museum",
        placeName: "Karagöz Müzesi",
        placeExplanation:
            "The memories of Şeyh Küster, Karagöz and Hacivat, who are considered the pioneers of shadow play, are symbolized in Bursa. The tomb, which is thought to be located in the Yoğurtlu Baba Lodge on Çekirge Street, the oldest cemetery in Bursa, was converted into a mausoleum in 1950. Relief sculptures of Karagöz and Hacivat made of tiles on a symbolic curtain on a large concrete platform. There are three representative tombstones behind the monument. Located right across the mausoleum, the Karagöz Museum is a cultural center where different activities are held in addition to the traditional shadow play. Karagöz shows are held regularly in the building, which is the only Karagöz Museum in Turkey. The museum, which was opened in 1997, displays traditional Karagöz figures from Şinasi Çelikkol's private collection, puppet and shadow play figures collected from various countries, and ethnographic works belonging to Turkmen and Yörük villages.",
        placeLocation:
            "https://www.google.com/maps/place/Karagöz+Müzesi/@40.2018521,29.0274084,15z/data=!4m6!3m5!1s0x14ca15e6ae6a3c71:0xfd40f1a997899b45!8m2!3d40.2018521!4d29.0274084!16s%2Fg%2F11h0zfz32w",
        placeImgPath: "assets/img/museum/karagozmuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 13,
        placeCategory: "museum",
        placeName: "Osmanlı Evi Müzesi",
        placeExplanation:
            "In the Muradiye District, II. In the place of the wooden house opposite the Murad Complex, formerly Sultan II. It is thought that Murad had a mansion. Therefore, this house is also known as the house where Fatih Sultan Mehmet, who conquered Istanbul, was born. The two-storey house, which is used as a museum today, has the characteristics of the 17th century in terms of plan and decorations, and is one of the oldest surviving houses in Bursa.",
        placeLocation:
            "https://www.google.com/maps/place/17.+YÜZYIL+OSMANLI+EVİ+MÜZESİ/@40.1914094,29.0457165,15z/data=!4m6!3m5!1s0x14ca16000305af59:0xcfcdff0e752639da!8m2!3d40.1914094!4d29.0457165!16s%2Fg%2F120htnxw",
        placeImgPath: "assets/img/museum/osmanlievimuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 14,
        placeCategory: "museum",
        placeName: "Panaroma Müzesi",
        placeExplanation:
            "Bursa has a very important place in our history. The Panorama 1326 museum, which conveys how and how the traces of the Ottoman civilization that pervaded every corner of Bursa, which was the capital of the Ottoman Empire for a long time, came to light, brings the city's transformation from the conquest into a Muslim Ottoman city. There are also different details that make this place important. For example, an arts venue that hosts the world's largest panoramic displays.",
        placeLocation:
            "https://www.google.com/maps/place/Panorama+1326+Bursa+Fetih+Müzesi/@40.1862998,29.0755928,15z/data=!4m6!3m5!1s0x14ca3fddecf36f99:0xf80fc20d27bad899!8m2!3d40.1862998!4d29.0755928!16s%2Fg%2F11fsnk183m",
        placeImgPath: "assets/img/museum/panaromamuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 15,
        placeCategory: "museum",
        placeName: "Türk İslam Müzesi",
        placeExplanation:
            "Yeşil Madrasah, which was built in 1419 during the reign of Çelebi Mehmet as part of the Yeşil Complex, was reorganized in 1972 and opened as the Museum of Turkish-Islamic Arts since 1975. In the halls and rooms of the building, metal, ceramics, wood, embroidery, weapons, armor, manuscript books, Islamic coins, Islamic inscriptions and tombstones, as well as ethnographic materials from the Seljuk and Ottoman periods, dating from the 12th to the 20th centuries, are exhibited. Items related to the traditional shadow play of Hacivat and Karagöz, bath items belonging to the Bursa region, items belonging to Bursa dervish lodges and lodges, Ottoman engagement medals, plates belonging to various calligraphy masters, calligraphy samples belonging to great masters such as Şeyh Hamdullah and Hafız Osman, various copper kitchen and coffee utensils are also important works exhibited in the museum. Prayer book written by Ibn Hilal Ibn al-Bavvab in 975-976, richly illuminated Surah Baqara from the 14th century, a Koran dated 1323, Sultan II. The Qur'an belonging to Murad I, the Qur'an covered with gazelle skin that the Mamluk Sultan gifted to Yıldırım Beyazid, and the 15th century tile plates are among the most important objects of the Turkish-Islamic Arts Museum. gets.",
        placeLocation:
            "https://www.google.com/maps/place/Türk+Ve+İslam+Eserleri+Müzesi/@40.1813774,29.0736389,15z/data=!4m6!3m5!1s0x14ca3ddee62d9901:0x789fc87b93d3cf21!8m2!3d40.1813774!4d29.0736389!16s%2Fm%2F013chqt4",
        placeImgPath: "assets/img/museum/turkislammuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 16,
        placeCategory: "mustSee",
        placeName: "Bursa Kalesi",
        placeExplanation:
            "Bursa Castle was built in BC. It dates back to the 1st century. Today, the length of the walls is 2 km. as much. Between Çakırhamam and Tophane there are two bastions, one round and the other four corners. The area where Tophane, Orduevi and Industrial Vocational High School are located is in a natural set up to Yıldız Kahve. There are 5 gates in the castle. These are Hisar Gate, Hot Spring Gate, Dungeon Gate, Pınarbaşı Gate, Yer Gate. (Source: Bursa Provincial Directorate of Culture and Tourism archive)",
        placeLocation:
            "https://www.google.com/maps/place/Bursa+Kalesi/@40.1834897,29.0495984,15z/data=!4m6!3m5!1s0x14ca3df2d8001aff:0xbb5ff165a6499974!8m2!3d40.1834897!4d29.0495984!16s%2Fg%2F122lklc9",
        placeImgPath: "assets/img/mustSee/bursakalesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 17,
        placeCategory: "mustSee",
        placeName: "Cumalıkızık",
        placeExplanation:
            "Cumalıkızık, which is one of the regions where the Ottomans first settled in Bursa, carries the Ottoman period housing texture to the present day with a total of 270 houses, 180 of which are still in use and some of them are protected and restored. In 1969, the remains of a Byzantine church were discovered in Ihlamurcu Mevkii on the skirts of Uludağ, southeast of Cumalıkızık settlement. Some architectural fragments of the church ruins found on the surface are kept in Bursa Archeology Museum. The Ottoman Principality, which was established near Bursa, succeeded in dominating the region shortly after its establishment, and by conquering Bursa in 1326 and Iznik in 1331, it made its presence known in the region. Thus, it was ensured that the Ottoman people settled in these lands and formed cities and villages.",
        placeLocation:
            "https://www.google.com/maps/place/Cumalıkızık,+16370+Yıldırım%2FBursa/@40.1806545,29.169497,14z/data=!3m1!4b1!4m6!3m5!1s0x14ca3913e9b86529:0x87cc8928170f3064!8m2!3d40.1786592!4d29.1710443!16zL20vMGR6ZmY2",
        placeImgPath: "assets/img/mustSee/cumalikizik.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 18,
        placeCategory: "mustSee",
        placeName: "Hünkar Köşkü",
        placeExplanation:
            "The Hunkar Mansion Museum was built on the outskirts of Uludag, in Temenyeri, to be a hunting lodge during the reign of Abdülmecit. The mansion was built in 1859. Abdülaziz and Mehmed V (Sultan Reşad) also stayed in the mansion. Mustafa Kemal Atatürk is among those who came to the mansion. Atatürk stayed in the mansion four times apart from his official visits. The decorations inside the mansion, whose architecture was made in the French imperial style, bear the characteristics of the 19th century. The ceiling decorations, the garden overlooking the Bursa panorama, the original furniture reflecting the period and the Atatürk Room attract the attention of the visitors.",
        placeLocation:
            "https://www.google.com/search?tbs=lf:1,lf_ui:2&tbm=lcl&q=bursa+hünkar+köşkü&rflfq=1&num=10&ved=2ahUKEwiooZO9nrb-AhV6QfEDHbEnBF4QtgN6BAgNEAE#rlfi=hd:;si:;mv:[[40.17457231411142,29.06660685051561],[40.17342462432554,29.064125807176833]]",
        placeImgPath: "assets/img/mustSee/hunkarkosku.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 19,
        placeCategory: "mustSee",
        placeName: "Misi Köyü",
        placeExplanation:
            "Misi Village has a history of 2000 years. It is known that Misi Village, which is connected to Nilüfer District with the name of Gümüştepe District today, is a very old settlement. It is thought that the first name of Misi Village was Mysia. There are historical records that a monk named Alex, with an entourage of eighty-five people, settled in the villages of Inkaya and Misi as the pioneers of the Christians in 183 AD, and the 'Consul' met and the Bible was discussed. It is believed that a copy of the Bible is buried in the vicinity of the monastery, where the ruins are found today. Because of these ruins, the region is also important for Christians. Misi Village, which is 12 kilometers away from the center of Bursa and welcomes visitors with all its naturalness, is very famous for its vine leaves, muscat grapes, molasses and wine. Winemaking in Misi has an old history. 'Misi Wines' are made only from muscat grapes, which are grown in this region and have a special aroma. It is also said that molasses made with these grapes is quite healthy.",
        placeLocation:
            "https://www.google.com/maps/place/Gümüştepe,+Misi+Cd.+Köyü,+16110+Nilüfer%2FBursa/data=!4m2!3m1!1s0x14ca16d8a2009975:0xa536f5e7fb0a357c?sa=X&ved=2ahUKEwiztYHrnrb-AhV_QvEDHUUiDrwQ8gF6BAgREAI",
        placeImgPath: "assets/img/mustSee/misikoyu.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 20,
        placeCategory: "mustSee",
        placeName: "Mudanya",
        placeExplanation:
            "While it takes 2-3 hours to go from one neighborhood of Istanbul to another, if it takes only 95 minutes to go to Mudanya, we think Mudanya is an Istanbul getaway. Thanks to BUDO (Bursa Sea Bus) and IDO (Istanbul Sea Bus), thanks to the regular voyages every day, you can arrive at Noah Harari without having to turn 50 pages, without hearing about it, and enjoying it. And you are descending into a really different atmosphere. After walking for 2 hours, you can't come to buildings covered with illuminated signboards and rug-patterned mosaics. Mudanya, with its center and Tirilye Neighborhood, is a light, easy, one-day getaway that is good for the soul.",
        placeLocation:
            "https://www.google.com/maps/place/Mudanya,+Bursa/@40.3656659,28.8994175,13z/data=!3m1!4b1!4m6!3m5!1s0x14ca6de9379bbbb5:0xaf4e4db3f7acd277!8m2!3d40.376973!4d28.883246!16s%2Fg%2F11bc60b3yj",
        placeImgPath: "assets/img/mustSee/mudanya.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 21,
        placeCategory: "mustSee",
        placeName: "Tophane Saat Kulesi",
        placeExplanation:
            "The clock tower, located in Tophane Park, was built in 1905. It was also used as a fire tower for a while, as the panoramic view of Bursa can be seen from its location. The tower, which has an entrance in the south, is reached by a wooden staircase with 89 steps. On the four facades of the upper floor of the tower are round clocks with a diameter of 90 centimeters. The tower, whose clocks do not work, is 33 meters high and has 6 floors.",
        placeLocation:
            "https://www.google.com/search?tbs=lf:1,lf_ui:1&tbm=lcl&q=bursa+saat+kulesi&rflfq=1&num=10&ved=2ahUKEwjv3fyQoLb-AhUCR_EDHVLKA-kQtgN6BAgTEAc#rlfi=hd:;si:11238348889698067608,l,ChFidXJzYSBzYWF0IGt1bGVzaUjepbAHWh0QARACGAAYARgCIhFidXJzYSBzYWF0IGt1bGVzaZIBEnRvdXJpc3RfYXR0cmFjdGlvbqoBShABKg8iC3NhYXQga3VsZXNpKCEyHhABIhr1sjaRsPL8AQcRrZDVhcz_Zzq-lbJO1saVqjIVEAIiEWJ1cnNhIHNhYXQga3VsZXNp,y,4UASRLdrtT4;mv:[[40.446777399999995,29.6891239],[40.1675725,28.953625300000002]]",
        placeImgPath: "assets/img/mustSee/saatkulesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 22,
        placeCategory: "mustSee",
        placeName: "Timsah Arena",
        placeExplanation:
            "Timsah Park, also known as Bursa Metropolitan Municipality Stadium, is a multi-purpose stadium in Bursa. The project, which started with Gintaş [5] winning the tender made by Bursa Metropolitan Municipality on February 24, 2011, was inaugurated by President Recep Tayyip Erdoğan on December 21, 2015. Together with Türk Telekom Stadium and Vodafone Park, the project, which is one of the three stadiums in Turkey with a C90 viewing angle, has a total seating capacity of 43,361.",
        placeLocation:
            "https://www.google.com/search?tbs=lf:1,lf_ui:1&tbm=lcl&q=bursa+timsah+arena&rflfq=1&num=10&ved=2ahUKEwjo6469oLb-AhUDR_EDHSVNB7cQtgN6BAgMEAc#rlfi=hd:;si:15868294083247176633,l,ChJidXJzYSB0aW1zYWggYXJlbmFIjavy8QFaKBAAEAEQAhgAGAEYAiISYnVyc2EgdGltc2FoIGFyZW5hKgYIAhABEAKSAQdzdGFkaXVtqgE7EAEyHxABIhswzx16NNiE7nodNtCp6b3rKY7CTSjfQzG4GD0yFhACIhJidXJzYSB0aW1zYWggYXJlbmE,y,CA1uyZBQiUI;mv:[[40.211695299999995,29.009480799999995],[40.2107599,29.0084319]]",
        placeImgPath: "assets/img/mustSee/timsaharena.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 23,
        placeCategory: "naturalBeauty",
        placeName: "Ağlayan Çınar",
        placeExplanation:
            "Crying Sycamore in Gölyazı Neighborhood, registered as 725 years old in 1998, is one of the oldest monumental trees in Bursa. There is a large hole in the trunk of the tree, which is called Crying Sycamore among the people, because it is rumored that the sad love story of Greek girl Eleni and Mehmet, who lived in Gölyazı, during the population exchange period, ended with the death of the lovers under this tree.",
        placeLocation:
            "https://www.google.com/maps/place/Ağlayan+Çınar/@40.1677154,28.6809761,15z/data=!4m2!3m1!1s0x0:0xf3a2e87c282d99dd?sa=X&ved=2ahUKEwifwobxkbf-AhV-RPEDHYlNAdgQ_BJ6BAh7EAg",
        placeImgPath: "assets/img/naturalBeauty/aglayancinar.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 24,
        placeCategory: "naturalBeauty",
        placeName: "Atatük Kent Ormanı",
        placeExplanation:
            "It is located in Nilüfer district. It is located just behind the Odunluk Neighborhood. Its distance from the city center is 12 km and its altitude is 275 m. It is open to visitors at any time of the year. In the picnic area, there are facilities such as picnic tables, sitting areas, barbecues, playground, masjid and WC. Visitors can spend time in the walking paths and sports areas in the picnic area in their spare time.",
        placeLocation:
            "https://www.google.com/maps/place/Gümüştepe,+Atatürk+Kent+Ormanı,+16110+Nilüfer%2FBursa/data=!4m2!3m1!1s0x14ca16ecf15d296b:0x23927102a5f17db?sa=X&ved=2ahUKEwis6-uqkrf-AhXjh4sKHYrYAHAQ8gF6BAgKEAI",
        placeImgPath: "assets/img/naturalBeauty/ataturkkentormani.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 25,
        placeCategory: "naturalBeauty",
        placeName: "Botanik Park",
        placeExplanation:
            "“Soğanlı Botanical Park” was put into service in 1998 in order to provide plenty of oxygen, new recreation and healthy sports areas to the city within the scope of the green belt in Bursa. Soganli Botanical Park; Located on an area of 400,000 m2, it is a park open to herbal research and scientific studies, while protecting the Bursa Plain, with 8000 trees from 150 species, 100,000 shrubs from 76 species, 50,000 groundcovers from 20 species and 6000 roses from 27 species. Also in the park; There are Japanese garden, English garden, French garden, rose garden, azalea-rhododendron garden, fragrant herb garden, rock garden, color gardens, shaped plants gardens.",
        placeLocation:
            "https://www.google.com/search?tbs=lf:1,lf_ui:1&tbm=lcl&q=bursa+botanik+park&rflfq=1&num=10&ved=2ahUKEwisjOjMkrf-AhVusYsKHTXVAREQtgN6BAgPEAI#rlfi=hd:;si:2509671301201897414,l,ChJidXJzYSBib3RhbmlrIHBhcmtIm5vph4iAgIAIWiQQARACGAAYARgCIhJidXJzYSBib3RhbmlrIHBhcmsqBAgDEAGSAQRwYXJrqgFMEAEqECIMYm90YW5payBwYXJrKCEyHhABIhpXHCR6NRrkmOnCBICOmouvw7nJJbH6EOA_CjIWEAIiEmJ1cnNhIGJvdGFuaWsgcGFyaw,y,B31_afo63YQ;mv:[[40.2208538,29.0408513],[40.2179749,29.037874499999997]]",
        placeImgPath: "assets/img/naturalBeauty/botanikpark.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 26,
        placeCategory: "naturalBeauty",
        placeName: "İznik",
        placeExplanation:
            "Iznik is a district of Turkey's Bursa province and the city that is the center of the district. It is located in the northeast of Bursa, on the eastern shore of Lake Iznik, which takes its name from the city. According to TUIK data for 2020, its population is 44,102 people. The name Iznik comes from Nikea, the old name of the city.",
        placeLocation:
            "https://www.google.com/maps/place/İznik,+Bursa/@40.4304785,29.7147425,13z/data=!3m1!4b1!4m6!3m5!1s0x14cb0bc05d7864f5:0x17b677c58432bec8!8m2!3d40.429524!4d29.719743!16zL20vMGs5eDE",
        placeImgPath: "assets/img/naturalBeauty/iznik.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 27,
        placeCategory: "naturalBeauty",
        placeName: "Kültür Park",
        placeExplanation:
            "The park, which was opened in 1955 by Reşat Oyal as 'Kültürpark', is the first large green area of the city. There are tea gardens, restaurants, bars and resting areas around the lake, which can be visited by boat in the park, which is established on an area of 393 thousand square meters. Archeology Museum, Municipal Conservatory, Open Air Theatre, Wedding Hall and Lunapark are the structures located in Kültürpark. Kültürpark has also hosted the International Bursa Festival since the first festival held in 1963.",
        placeLocation:
            "https://www.google.com/search?q=bursa%20kültür%20park&ei=439AZJWwNcOqxc8Po9GCcA&ved=2ahUKEwimo_2xk7f-AhXdQfEDHXeEBO8QvS56BAgNEAE&uact=5&oq=bursa+kültür+park&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzILCC4QgAQQxwEQrwEyDQguEIAEEMcBEK8BEAoyBQgAEIAEMg0ILhCABBDHARCvARAKMgUIABCABDIFCAAQgAQyBwgAEIAEEAoyBwgAEIAEEAoyBQgAEIAEMg0ILhCABBDHARCvARAKMhYILhCABBDHARCvARDcBBDeBBDgBBgDOgoIABBHENYEELADOgoIABCKBRCwAxBDOg0IABDkAhDWBBCwAxgBOg8ILhCKBRDIAxCwAxBDGAI6EgguEIoFENQCEMgDELADEEMYAjoVCC4QigUQxwEQrwEQyAMQsAMQQxgCOgcIABCKBRBDOgcILhCKBRBDOgsILhCABBCxAxDUAjoLCAAQgAQQsQMQgwE6CAgAEIAEELEDOhEILhCABBCxAxCDARDHARCvAToLCAAQigUQsQMQgwE6CwguEK8BEMcBEIAEOhYILhCvARDHARCABBDcBBDeBBDgBBgDSgQIQRgAUIwEWIwNYMAOaAFwAXgAgAHOAYgB5g2SAQYxLjExLjGYAQCgAQHIARPAAQHaAQYIARABGAnaAQYIAhABGAjaAQYIAxABGBQ&sclient=gws-wiz-serp&tbs=lf:1,lf_ui:1&tbm=lcl&rflfq=1&num=10&rldimm=8991285053410289822&lqi=ChNidXJzYSBrw7xsdMO8ciBwYXJrSN7o862IgICACFofEAEQAhgAGAEYAiITYnVyc2Ega8O8bHTDvHIgcGFya5IBBHBhcmuaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVUjFNbVJFVUVoQkVBRaoBTxABKhEiDWvDvGx0w7xyIHBhcmsoITIfEAEiG1ne9gTbwwVOaNPINMh5stG-BAYx22MfYa1iMDIXEAIiE2J1cnNhIGvDvGx0w7xyIHBhcms&phdesc=SWAOJBRYD-8&sa=X&rlst=f#rlfi=hd:;si:8991285053410289822,l,ChNidXJzYSBrw7xsdMO8ciBwYXJrSN7o862IgICACFofEAEQAhgAGAEYAiITYnVyc2Ega8O8bHTDvHIgcGFya5IBBHBhcmuaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVUjFNbVJFVUVoQkVBRaoBTxABKhEiDWvDvGx0w7xyIHBhcmsoITIfEAEiG1ne9gTbwwVOaNPINMh5stG-BAYx22MfYa1iMDIXEAIiE2J1cnNhIGvDvGx0w7xyIHBhcms,y,SWAOJBRYD-8;mv:[[40.2431857,29.0909244],[40.1903393,28.949165200000003]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:1",
        placeImgPath: "assets/img/naturalBeauty/kulturpark.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 28,
        placeCategory: "naturalBeauty",
        placeName: "Longoz Ormanları",
        placeExplanation:
            "Karacabey Flooded Longoz is the largest of the 3 large longoses in Turkey. Around 250 bird species live in the Karacabey floodplain. In the journey that ends with the spilling of the Susurluk river into the sea, the sand set formed by the waves of the sea and the stream on the last plain before it spills into the sea prevents the river from spilling into the sea, the water that cannot be poured into the sea spreads and forms the Kocaçay Delta and the Karacabey Floodplain. Also known as flooded forest. 12 bird species, including endangered species such as white pelican, black stork, flamingo and swan, breed in the delta in Karacabey floodplain.",
        placeLocation:
            "https://www.google.com/maps/place/Karacabey+Longoz+Ormanları/@40.3861084,28.4246503,15z/data=!4m2!3m1!1s0x0:0xa8528cbd6ef3bf6c?sa=X&hl=tr&ved=2ahUKEwiRocLmk7f-AhUnbvEDHSSFB0oQ_BJ6BQiYARAI",
        placeImgPath: "assets/img/naturalBeauty/longozormanlari.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 29,
        placeCategory: "naturalBeauty",
        placeName: "Oylat Mağarası",
        placeExplanation:
            "The cave, which took thousands of years to form, still continues to form. The water droplets dripping from the ceiling in the cave caused the formation of many dripstone ponds inside the cave.Its formation is discussed in two different sections. The first section consists of narrow galleries, with a width of 2-5 meters and a height of up to 15 meters. This section starts from the entrance and covers the part up to the depression hall. Here, gravel tanks and dripstone pools occupy a large area. The second section is the section consisting of a large depression hall. The ceiling height difference between where this section starts and where it ends reaches 95 meters. As a general feature, the width is 20-25 meters and the ceiling height is between 2.5-13 meters.",
        placeLocation:
            "https://www.google.com/maps/place/Oylat+Mağarası/@39.9436532,29.5912339,15z/data=!4m2!3m1!1s0x0:0x1019fc1e30165d3?sa=X&hl=tr&ved=2ahUKEwiNvKyilLf-AhVaQ_EDHXZ9DTkQ_BJ6BQiIARAI",
        placeImgPath: "assets/img/naturalBeauty/oylatmagarasi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 30,
        placeCategory: "naturalBeauty",
        placeName: "Sansarak Kanyonu",
        placeExplanation:
            "Sansarak Canyon, with its magnificent nature, is among the frequent destinations of those who want to camp or go on a canyon trip. It attracts nature lovers with its incredible nature and challenging tracks. Sansarak Canyon, three hours away from Istanbul, awaits you with its untouched nature. If you are overwhelmed by the stress of work, if you want to get away from the noise of the city, you can spend pleasant time with your family, loved ones and friends in Sansarak Canyon.",
        placeLocation:
            "https://www.google.com/search?hl=tr&tbs=lf:1,lf_ui:1&tbm=lcl&q=bursa+sansarak+kanyonu&rflfq=1&num=10&ved=2ahUKEwji0IjUlLf-AhVvR_EDHav1DK8QtgN6BAhYEAI#rlfi=hd:;si:1305399175043163430,l,ChZidXJzYSBzYW5zYXJhayBrYW55b251SOmi58jXuICACFogEAIYABgBGAIiFmJ1cnNhIHNhbnNhcmFrIGthbnlvbnWSARJ0b3VyaXN0X2F0dHJhY3Rpb26aASRDaGREU1VoTk1HOW5TMFZKUTBGblNVUXRkVFo1Y210QlJSQUKqAUwQASoLIgdrYW55b251KCEyHxABIhuWXNASlgWYvlLr1bD7rvorRL3kN5SXcBzpTzEyGhACIhZidXJzYSBzYW5zYXJhayBrYW55b251,y,ypeK8buH0pY;mv:[[40.521795499999996,29.839118499999994],[40.4883059,29.8285329]]",
        placeImgPath: "assets/img/naturalBeauty/sansarakkanyonu.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 31,
        placeCategory: "naturalBeauty",
        placeName: "Suutçu Şelalesi",
        placeExplanation:
            "It is within the borders of Mustafakemalpaşa district of Bursa and is 17 km away from the district center. The waterfall, which was formed as a result of the collapse of a fault line, spills from a height of 38 meters. Suuçtu Waterfall, which also has a picnic area and a picnic area, is a full oxygen tank with the beech trees surrounding it and its cool air.",
        placeLocation:
            "https://www.google.com/search?hl=tr&tbs=lf:1,lf_ui:1&tbm=lcl&q=bursa+sütçü+şelalesi&rflfq=1&num=10&ved=2ahUKEwijrMr0lLf-AhVPSvEDHenrBJYQtgN6BAgREAg#rlfi=hd:;si:13567305147262336726,l,ChhidXJzYSBzw7x0w6fDvCDFn2VsYWxlc2lIgPiBlJuqgIAIWiIQARACGAAYAiIYYnVyc2Egc8O8dMOnw7wgxZ9lbGFsZXNpkgESdG91cmlzdF9hdHRyYWN0aW9uqgFZEAEqFiISc8O8dMOnw7wgxZ9lbGFsZXNpKCEyHxABIhsmsy-A91p85xs1WmPFpc7OK6b8UcbsMRE2fk0yHBACIhhidXJzYSBzw7x0w6fDvCDFn2VsYWxlc2k,y,81_oDlZhz2Y;mv:[[40.168302,29.352630299999998],[39.8866502,28.330698899999998]]",
        placeImgPath: "assets/img/naturalBeauty/suutcuselalesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 32,
        placeCategory: "religiousPlace",
        placeName: "Alaaddin Bey Cami",
        placeExplanation:
            "The mosque was built by Orhan Gazi's brother Alaaddin Bey in 1326, when Bursa was conquered, and is considered the first mosque of the Ottomans in Bursa. Alaaddin Bey, who was the elder brother of Orhan Gazi, renounced the principality and left his place to his brother Orhan Bey, Bursa. The building, which is a typical early Ottoman period mosque, has a rectangular plan with the main place of worship and the last congregation place with three sections. The narthex sections are carried by columns with Corinthian and Ionic style capitals from the Byzantine period, which are connected to each other with pointed arches of brickwork. It is known that its pulpit was brought from the Mevlevihane in Pınarbaşı. There is a graveyard in the courtyard of the mosque, and a fountain with a pointed arch embedded in the wall on the outer wall.",
        placeLocation:
            "https://www.google.com/maps/place/Alaaddinbey+Cami/@40.195527,28.918691,15z/data=!4m6!3m5!1s0x14ca111b25739771:0xa2b182ff524daef!8m2!3d40.195527!4d28.918691!16s%2Fg%2F1tj9wk0x?hl=tr",
        placeImgPath: "assets/img/religiousPlace/alaaddinbeycami.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 33,
        placeCategory: "religiousPlace",
        placeName: "Emir Sultan Cami",
        placeExplanation:
            "It was built on behalf of Emir Sultan in the early 15th century by Hundi Fatma Sultan, daughter of Yıldırım Bayezid and wife of Emir Sultan. There is an octagonal fountain in the middle of the rectangular planned courtyard. In addition, there is a mosque in the south of the courtyard, Emir Sultan Tomb and wooden rooms in the north. The mosque has a square plan and is covered with a single dome. While the mosque was multi-domed when it was first built, it was destroyed in 1795. It was built in the Rococo and Empire style, in its current form, during the reign of Selim I between 1804 and 1805. The building was repaired between 1861-1876 during the reign of Sultan Abdulaziz.",
        placeLocation:
            "https://www.google.com/maps/place/Emirsultan,+Emir+Sultan+Cami,+16360+Yıldırım%2FBursa/@40.1808291,29.0814073,17z/data=!3m1!4b1!4m6!3m5!1s0x14ca3dd8239591a1:0xa8d057572c1fa26c!8m2!3d40.1808291!4d29.0814073!16s%2Fg%2F11bymz4_3t?hl=tr",
        placeImgPath: "assets/img/religiousPlace/emirsultancami.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 34,
        placeCategory: "religiousPlace",
        placeName: "Hüdavendigar Cami",
        placeExplanation:
            "It is known that the mosque, which was built on a hill overlooking the plain in Çekirge district, was built between 1365-1366. There is a madrasah with 18 rooms on the upper floor of the two-storey building. Constructing the mosque and the madrasah together adds a monumental feature to the mosque. There are two iwans and 6 rooms on the lower floor. Under the middle dome of the mosque, which was built with an inverted T plan, there is the place where the main prayer is performed and there are rooms with an iwan next to them. Inside the mosque, there is a fountain right under the dome. The mosque, which is known to have been built by a Greek architect; Its walls, built with stones, bricks and spolia, are very thick.",
        placeLocation:
            "https://www.google.com/maps/place/I.+Murad+Hüdavendigar+Camii/@40.2023163,29.021183,15z/data=!4m2!3m1!1s0x0:0x8aa741e1dc7ffad?sa=X&hl=tr&ved=2ahUKEwj_zLf3mLf-AhUdS_EDHdQ3CrgQ_BJ6BQiBARAI",
        placeImgPath: "assets/img/religiousPlace/hudavendigar.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 35,
        placeCategory: "religiousPlace",
        placeName: "Muradiye",
        placeExplanation:
            "Muradiye District of Bursa's Osmangazi district has a special importance for history buffs. Because the largest tomb community of the Ottoman dynasty is located here. Sultan II. It is a structure worth seeing with its 12 tombs, mosque, madrasah and bath located in the Muradiye Complex, which was built by Murad in 1425. Moreover, the Muradiye Complex was included in the UNESCO World Cultural Heritage List in 2014. The garden of the Kulliye is quite peaceful, you can also find the chance to see the tombstones of the Ottoman period in the garden covered with lush trees.",
        placeLocation:
            "https://www.google.com/maps/place/Muradiye,+16040+Osmangazi%2FBursa/@40.192037,29.0436841,16z/data=!3m1!4b1!4m6!3m5!1s0x14ca16007af7b1e3:0x60579ce587b18cf0!8m2!3d40.1922555!4d29.043447!16s%2Fg%2F1tf04pbd?hl=tr",
        placeImgPath: "assets/img/religiousPlace/muradiye.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 36,
        placeCategory: "religiousPlace",
        placeName: "Orhangazi Türbesi",
        placeExplanation:
            "Sultan Orhan, the son of Osmangazi and the second sultan of the Ottoman Empire, lived between 1281-1362. During his lifetime, he took Bursa and its surroundings from the Byzantines, established state organizations and printed the provincial Ottoman money. Orhangazi Tomb was built in Tophane Park in Hisar District, on a part of the Sainte Elie Monastery, which was used as the metropolitan monastery of the city before the conquest of Bursa. The tomb, which is right across the Osmangazi Tomb, was built on the floor mosaics of the Sainte Elie Monastery. There are three windows on each side of the mausoleum, which was built in a square plan. The interior walls are whitewashed and there are simple ornaments in the form of pediments on the windows.",
        placeLocation:
            "https://www.google.com/maps/place/Osman+Gazi+Türbesi/@40.1867258,29.0573573,15z/data=!4m6!3m5!1s0x14ca3dfd28db0f8f:0x73b2552864f33538!8m2!3d40.1867258!4d29.0573573!16s%2Fg%2F11c1mfxrmj?hl=tr",
        placeImgPath: "assets/img/religiousPlace/orhangaziturbesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 37,
        placeCategory: "religiousPlace",
        placeName: "Osmangazi Türbesi",
        placeExplanation:
            "Osman Gazi, the founder of the Ottoman State, lived between 1258-1324. Osmangazi was buried in the mausoleum built on the chapel of the Byzantine Monastery named Sainte Elie, known as the 'Gümüşlü Kümbet', after the conquest of Bursa upon his will, during the siege of Bursa. The tomb, which was completely destroyed by a fire in 1801 and by the earthquake of 1855, was restored to its present form in 1863 by Sultan Abdulaziz, remaining faithful to its old structure.",
        placeLocation:
            "https://www.google.com/maps/place/Osman+Gazi+Türbesi/@40.1867258,29.0573573,15z/data=!4m6!3m5!1s0x14ca3dfd28db0f8f:0x73b2552864f33538!8m2!3d40.1867258!4d29.0573573!16s%2Fg%2F11c1mfxrmj?hl=tr",
        placeImgPath: "assets/img/religiousPlace/osmangaziturbe.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 38,
        placeCategory: "religiousPlace",
        placeName: "Uftade Cami",
        placeExplanation:
            "Üftade Mosque was built by Üftade Mahmud Muhiddin, who is known to have died in 1580, and was damaged in the 1855 earthquake, and was rebuilt by Serazkar Rıza Pasha in 1869. The narthex, which is covered with three domes on the top, is supported by three arches in the front and one on each side. Above the entrance to the main prayer hall, there is a six-line inscription made of marble, written in Turkish in small talik letters, measuring 0.75 x 1.20 meters. The mosque, which has 13 x 13 meters internal dimensions, is covered with a dome and vault. At the entrance of the mosque, there is a narthex with a depth of three meters. Its walls were built with cut stones and bricks. Since the mosque was destroyed in various earthquakes, it was rebuilt by his grandson İbrahim. In 1855, the great dome was destroyed, and the dome and arches of the narthex were cracked. In this period, an octagonal rimmed Baghdadi dome was placed on four wooden pillars, and round vaults and elliptical arches connected to the main walls of the building were built. The square planned tomb, which was rebuilt in 1869, is located to the east of the Mosque.",
        placeLocation:
            "https://www.google.com/maps/place/Üftade+Camii+ve+Türbesi/@40.1829458,29.0575758,15z/data=!4m6!3m5!1s0x14ca3de4b4d009a9:0x138012387faa7bd8!8m2!3d40.1829458!4d29.0575758!16s%2Fg%2F1td0jqh1?hl=tr",
        placeImgPath: "assets/img/religiousPlace/uftadecami.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 39,
        placeCategory: "religiousPlace",
        placeName: "Ulu Cami",
        placeExplanation:
            "Bursa Ulu Mosque is the grand mosque that was built by Bayezid I between 1396-1400 in Bursa. The mosque, which is one of the historical symbols of Bursa, is on Atatürk Street in the city center of Bursa. It is considered the most classical and monumental example of the multi-legged mosque scheme. The twenty-domed structure is the largest mosque in Turkey with an inner congregation place. It is thought that the architect was Ali Neccar or Hacı İvaz. The minbar of the mosque, made with the kündekari technique, is a valuable work of art, which is considered one of the most important examples of the transition from Seljuk carving to Ottoman wood carving. It is shown among the original examples of calligraphy. The fountain, located under an open dome in the interior of the mosque, is one of the remarkable features of the Ulu Mosque.",
        placeLocation:
            "https://www.google.com/maps/place/Ulu+Cami/@40.1838595,29.0618687,15z/data=!4m6!3m5!1s0x14ca383f1ab219dd:0x26f1946c7d131ee3!8m2!3d40.1838595!4d29.0618687!16s%2Fm%2F05zxfdd?hl=tr",
        placeImgPath: "assets/img/religiousPlace/ulucami.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 40,
        placeCategory: "religiousPlace",
        placeName: "Yeşil Türbe",
        placeExplanation:
            "The Green Tomb was built in 1421 by Mehmet Çelebi, the son of Bayezid I. The architect of the tomb, which is a part of the Green Complex, is Hacı İvaz Pasha. The building, which has become the symbol of Bursa, has a location that can be seen from anywhere in the city. Mehmed I had the tomb built while he was alive, and died 40 days later. There are a total of 9 sarcophagi in the tomb, belonging to Çelebi Sultan Mehmet, his sons Şehzade Mustafa, Mahmut and Yusuf, and his daughters Selçuk Hatun, Sitti Hatun, Hafsa Hatun, Ayşe Hatun and his nanny Daya Hatun.",
        placeLocation:
            "https://www.google.com/maps/place/Yeşil+Türbe/@40.1813475,29.0748991,15z/data=!4m6!3m5!1s0x14ca3dded4277f33:0xede74708b967072!8m2!3d40.1813475!4d29.0748991!16zL20vMGg3bGQw?hl=tr",
        placeImgPath: "assets/img/religiousPlace/yesilturbe.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 41,
        placeCategory: "religiousPlace",
        placeName: "Yıldırım Beyazıt Cami",
        placeExplanation:
            "Yıldırım Complex is a building complex built by the Ottoman Sultan Yıldırım Bayezid and Sultan Süleyman Han in Bursa at the end of the 14th century. It is considered one of the most important indicators of the Ottoman Principality's transition from a principality to a state, as it contains the first monumental works with quality workmanship built by the Ottomans. It is located on a steep hill in the Yıldırım district of Bursa. It is one of the components of the “Bursa and Cumalıkızık: The Birth of the Ottoman Empire” World Heritage Site, which was inscribed on the World Heritage List in 2014. A mosque, madrasah, imaret, bath and hospital and later Süleyman Han It consists of the Yıldırım Bayezid tomb, which was built by The architect of the tomb is Hüseyin son Ali. Five structures from the kulliye, including a mosque, a madrasa, a hospital, a bath and a tomb, have survived to the present day. Darüşşifa, which is a part of the complex, is the first hospital building in Ottoman architecture.",
        placeLocation:
            "https://www.google.com/maps/place/Yıldırım,+Yıldırım+Beyazıt+Cami,+16350+Yıldırım%2FBursa/@40.1875306,29.0825355,15z/data=!4m6!3m5!1s0x14ca3e7a143b080f:0xeb2ecd29ee65ccea!8m2!3d40.1875306!4d29.0825355!16s%2Fg%2F11byn0sx24?hl=tr",
        placeImgPath: "assets/img/religiousPlace/yildirimbeyazitcami.jpg"));

  ********* FOODS *********

  dbHelper.foodAdd(FoodModel(
        id: 1,
        foodCategory: "MEAT DISH",
        foodName: "Bursa Kebabı",
        foodImagePath: "assets/img/foods/bursakebabi.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 2,
        foodCategory: "PASTRY",
        foodName: "Cantik",
        foodImagePath: "assets/img/foods/cantik.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 3,
        foodCategory: "DESSERT",
        foodName: "Düğün Helvası",
        foodImagePath: "assets/img/foods/dugunhelvasi.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 4,
        foodCategory: "MEAT DISH",
        foodName: "Etli Kereviz",
        foodImagePath: "assets/img/foods/etlikereviz.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 5,
        foodCategory: "PASTRY",
        foodName: "Haşhaşlı Lokum",
        foodImagePath: "assets/img/foods/hashaslilokum.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 6,
        foodCategory: "MEAT DISH",
        foodName: "Inegöl Köfte",
        foodImagePath: "assets/img/foods/inegolkofte.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 7,
        foodCategory: "MEAT DISH",
        foodName: "Iskender",
        foodImagePath: "assets/img/foods/iskender.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 8,
        foodCategory: "DESSERT",
        foodName: "Kemalpaşa",
        foodImagePath: "assets/img/foods/kemalpasa.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 9,
        foodCategory: "DESSERT",
        foodName: "Kestane Şekeri",
        foodImagePath: "assets/img/foods/kestanesekeri.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 10,
        foodCategory: "MEAT DISH",
        foodName: "Pideli Köfte",
        foodImagePath: "assets/img/foods/pidelikofte.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 11,
        foodCategory: "DESSERT",
        foodName: "Süt Helvası",
        foodImagePath: "assets/img/foods/suthelvasi.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 12,
        foodCategory: "PASTRY",
        foodName: "Tahinli",
        foodImagePath: "assets/img/foods/tahinli.jpg"));

  ********* ULUDAG *********
  
  dbHelper.activityAdd(UludagActivityModel(
        id: 1,
        header: "Milli Park",
        content:
            "Go to the national park and have a picnic have fun with your family.",
        activityImagePath: "assets/img/uludag/millipark.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 2,
        header: "Teleferik",
        content: "Take the cable car and witness the beauty of nature.",
        activityImagePath: "assets/img/uludag/teleferik.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 3,
        header: "Aras Şelalesi",
        content: "Go to Aras waterfall and witness the beauty of nature.",
        activityImagePath: "assets/img/uludag/arasselalesi.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 4,
        header: "Atv",
        content: "Take an ATV tour in the unique beauty of Uludağ.",
        activityImagePath: "assets/img/uludag/atv.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 5,
        header: "Camp",
        content:
            "Camp in the unique beauty of Uludağ and spend a good time with nature and with your friends.",
        activityImagePath: "assets/img/uludag/kamp.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 6,
        header: "Snow Sled",
        content:
            "Have a nice time lost in the snow with your family or other people with the snow sled.",
        activityImagePath: "assets/img/uludag/karkizagi.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 7,
        header: "Snow Bike",
        content:
            "Take a tour in the unique beauty of Uludağ in winter with a snow bike.",
        activityImagePath: "assets/img/uludag/karmotoru.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 8,
        header: "Saf Boğan Şelalesi",
        content:
            "Visit and enjoy the unique beauty of Uludağ, Saf Boğan Waterfall.",
        activityImagePath: "assets/img/uludag/safboganselalesi.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 9,
        header: "Snowboard",
        content:
            "Enjoy and have fun snowboarding on the wonderful tracks of Uludağ.",
        activityImagePath: "assets/img/uludag/snowboarduludag.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 10,
        header: "Trekking",
        content: "Enjoy nature and witness adventure with trekking in Uludağ.",
        activityImagePath: "assets/img/uludag/trekking.jpg"));


*/

import 'package:bursam_app/data/dbhelper.dart';
import 'package:bursam_app/models/place_model.dart';

import '../models/food_model.dart';
import '../models/uludag_activity_model.dart';

class LoadData {
  DbHelper dbHelper = DbHelper();

  void loadData() {
    dbHelper.createDb().then((value) => null);

    dbHelper.placeAdd(PlaceModel(
        id: 1,
        placeCategory: "shopping",
        placeName: "Balibey Han",
        placeExplanation:
            "Balibey Han is a three-storey inn built at the end of the 15th century to meet the accommodation needs of groups coming from outside the city to sell or buy goods to the shops in the Grand Bazaar in Bursa.",
        placeLocation:
            "https://www.google.com/maps/place/Balibey+Han/@40.1849475,29.0585086,15z/data=!4m6!3m5!1s0x14ca3de346dc1063:0xfcca922eae58766e!8m2!3d40.1849475!4d29.0585086!16s%2Fg%2F11hbgj9hlb",
        placeImgPath: "assets/img/shopping/balibeyhan.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 2,
        placeCategory: "shopping",
        placeName: "Eski Aynalı Çarşı",
        placeExplanation:
            "The historical building, which is located in the Hanlar region and known as the 'Mirror Bazaar', was a bath located in the Orhan Complex. The building, which was built by the Ottoman Sultan Orhan Bey in 1339, was built to provide income for the Manastır Madrasah in Tophane.",
        placeLocation:
            "https://www.google.com/search?tbs=lf:1,lf_ui:2&tbm=lcl&q=bursa+eski+aynalı+çarşı&rflfq=1&num=10&ved=2ahUKEwiYt9PKo5H-AhWFSPEDHQ2iAIoQtgN6BAgMEAc#rlfi=hd:;si:5985866226920225239,l,ChtidXJzYSBlc2tpIGF5bmFsxLEgw6dhcsWfxLFIt4286vivgIAIWjEQARACEAMYABgCGAMiG2J1cnNhIGVza2kgYXluYWzEsSDDp2FyxZ_EsSoGCAIQARACkgEPc2hvcHBpbmdfY2VudGVymgEkQ2hkRFNVaE5NRzluUzBWSlEwRm5TVU5MZVhabFZYVjNSUkFCqgEjEAEyHxABIhv1bFZBsqAtI-QG8ND0crWcYKqKJhpquREpu-w;mv:[[40.1845497,29.0629289],[40.1835801,29.062685100000003]]",
        placeImgPath: "assets/img/shopping/eskiaynalicarsi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 3,
        placeCategory: "shopping",
        placeName: "Fidan Han",
        placeExplanation:
            "The inn, which was built by Fatih Sultan Mehmet's Grand Vizier Mahmut Pasha, is also known as Mahmut Pasha or Fidan Han. In the courtyard of the inn with two floors and a portico in front of the rooms, there is a 12-cornered mosque on a 12-cornered fountain. Located in the open bazaar in the center of Bursa, the Han has been restored in recent years and has been put into service with the shops it houses. The courtyard of the inn is used as a tea garden.",
        placeLocation:
            "https://www.google.com/search?tbs=lf:1,lf_ui:2&tbm=lcl&q=bursa+fidan+han&rflfq=1&num=10&ved=2ahUKEwiW6_eCpJH-AhW-VfEDHSNiBtkQtgN6BAgNEAc#rlfi=hd:;si:12950170290451203853,l,Cg9idXJzYSBmaWRhbiBoYW5Izp3l1IC5gIAIWiUQABABEAIYABgBGAIiD2J1cnNhIGZpZGFuIGhhbioGCAIQARACkgETaGlzdG9yaWNhbF9sYW5kbWFya5oBI0NoWkRTVWhOTUc5blMwVkpRMEZuU1VOQ2VTMTJPRWxCRUFFqgEjEAEyHxABIhv8z6WpsIsnKIos7-NylqfngUBA76Tm3GXPyJE;mv:[[40.18508179199357,29.064346083340222],[40.18479491580591,29.063625239667473]]",
        placeImgPath: "assets/img/shopping/fidanhan.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 4,
        placeCategory: "shopping",
        placeName: "Kapalı Çarşı",
        placeExplanation:
            "During the Orhangazi period, covered bazaars were started to be created by covering the spaces between the inns with a roof and the first state of the Grand Bazaar was formed in this way.",
        placeLocation:
            "https://www.google.com/search?q=bursa%20kapalı%20çarşı&hl=tr&source=hp&ei=s6YsZJznGNOsxc8P05-esAY&iflsig=AOEireoAAAAAZCy0w2A6TikMhgsNeU5Z-8PlLcT4P4ta&ved=2ahUKEwih_reXpZH-AhU2SvEDHfDeAoAQvS56BAgNEAE&uact=5&oq=bursa+kapalı+çarşı&gs_lcp=Cgdnd3Mtd2l6EAMyCwgAEIAEELEDEIMBMgsIABCABBCxAxCDATILCAAQgAQQsQMQgwEyBQgAEIAEMgsIABCABBCxAxCDATIFCAAQgAQyBQgAEIAEMgUIABCABDILCAAQgAQQsQMQgwEyBQgAEIAEOg4ILhCDARDUAhCxAxCABDoICC4QgAQQ1AI6CwgAEIoFELEDEIMBOhEILhCABBCxAxCDARDHARDRAzoOCC4QgAQQsQMQgwEQ1AI6CwguEIAEELEDENQCOgsILhCABBDHARDRAzoLCC4QgAQQxwEQrwE6BQguEIAEOhEILhCABBCxAxCDARDHARCvAToICC4QgAQQsQM6EAgAEIAEELEDEIMBEEYQgAI6CAgAEIAEELEDUABY1BNgjhVoAHAAeACAAakBiAHxD5IBBDcuMTGYAQCgAQE&sclient=gws-wiz&tbs=lf:1,lf_ui:2&tbm=lcl&rflfq=1&num=10&rldimm=16576591593677595896&lqi=ChZidXJzYSBrYXBhbMSxIMOnYXLFn8SxSNTu2JrxqoCACFooEAEQAhgAGAEYAiIWYnVyc2Ega2FwYWzEsSDDp2FyxZ_EsSoECAIQAZIBDWhpc3RvcmljX3NpdGWqASMQATIfEAEiG_srFXktDuFHhP9ApZE_87TxZ0YH-SwvdnXlcw&sa=X&rlst=f#rlfi=hd:;si:16576591593677595896,l,ChZidXJzYSBrYXBhbMSxIMOnYXLFn8SxSNTu2JrxqoCACFooEAEQAhgAGAEYAiIWYnVyc2Ega2FwYWzEsSDDp2FyxZ_EsSoECAIQAZIBDWhpc3RvcmljX3NpdGWqASMQATIfEAEiG_srFXktDuFHhP9ApZE_87TxZ0YH-SwvdnXlcw;mv:[[40.185177499999995,29.061908],[40.1846578,29.0601356]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:2",
        placeImgPath: "assets/img/shopping/kapalicarsi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 5,
        placeCategory: "shopping",
        placeName: "Koza Han",
        placeExplanation:
            "Koza Han II. at the end of the 15th century. It is an inn that was built by the architect Abdül ula bin Pulat Şah as a foundation for his works in Istanbul by Bayezid I in Bursa.",
        placeLocation:
            "https://www.google.com/maps/place/Koza+Han/@40.1840778,29.0634578,15z/data=!4m2!3m1!1s0x0:0xc31f434d2d7b03cd?sa=X&hl=tr&ved=2ahUKEwipitPepZH-AhUgX_EDHUnaBD0Q_BJ6BQiUARAI",
        placeImgPath: "assets/img/shopping/kozahan.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 6,
        placeCategory: "shopping",
        placeName: "Uzun Çarşı",
        placeExplanation:
            "It forms the oldest part of Bursa Bazaar. The bazaar, which stretches from the northern gate of Koza Han to the Salt Bazaar in the east, is one of the busiest bazaars in Bursa. It is known that it was called Uzun Çarşı in the first half of the century. Evliya Çelebi states that there are 9000 shops in Uzun Çarşı. In the past, in the bazaar, where haberdashery and fabric shops were concentrated, today more ready-made clothing tradesmen operate.",
        placeLocation:
            "https://www.google.com/maps/place/Uzunçarşı+Cd.,+Osmangazi%2FBursa/@40.184771,29.0630255,17z/data=!3m1!4b1!4m6!3m5!1s0x14ca3de3c8e614b5:0x3b1c9b5350c7af2!8m2!3d40.184771!4d29.0630255!16s%2Fg%2F1twxbqgg?hl=tr",
        placeImgPath: "assets/img/shopping/uzuncarsi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 8,
        placeCategory: "museum",
        placeName: "Anadolu Arabaları Müzesi",
        placeExplanation:
            "Tofaş Bursa Anatolian Cars Museum is Turkey's first and only Anatolian Cars Museum. The silk factory, which belongs to the İpeker Family and is established on a total area of 17.000 square meters in the Umurbey Neighborhood, was restored by Tofaş and opened as a museum on 28 June 2002. Cars in the museum; The lively and effective corner structure of the car industry and culture of thousands of years in Anatolia, Anatolian design values are valuable and efficient products.",
        placeLocation:
            "https://www.google.com/maps/place/Tofaş+Anadolu+Arabalar+Müzesi/@40.1765687,29.0710408,15z/data=!4m6!3m5!1s0x14ca3d648a8d9c85:0xe9b518b546235485!8m2!3d40.1765687!4d29.0710408!16s%2Fg%2F121h3kgk",
        placeImgPath: "assets/img/museum/anadoluarabalarimuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 9,
        placeCategory: "museum",
        placeName: "Arkeoloji Muzesi",
        placeExplanation:
            "In order to establish a Museum in Bursa, the works were first collected in Bursa Boys' High School from 1904 to 1972. In 1972, it moved to the newly constructed building in the Reşat Oyal Culture Park. In the museum where artifacts found in Bithynia and Mysia regions are exhibited, BC. There are artifacts belonging to the end of the Byzantine Period from 3 thousand years ago. There are 25 thousand works in the museum, about 2 thousand of them are exhibited.",
        placeLocation:
            "https://www.google.com/maps/place/Bursa+Arkeoloji+Müzesi/@40.1958261,29.0410039,15z/data=!4m2!3m1!1s0x0:0xae69beb4ce2f4179?sa=X&ved=2ahUKEwjqt6vzmLb-AhXrX_EDHXd6AF4Q_BJ6BAh0EAg",
        placeImgPath: "assets/img/museum/arkeolojimuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 10,
        placeCategory: "museum",
        placeName: "Atatürk Evi",
        placeExplanation:
            "Atatürk House Museum is a mansion built at the end of the 19th century and was bought by the Bursa Municipality and given to Atatürk as a gift during Atatürk's second visit to Bursa on 20-24 January 1923. This mansion, which was donated to Bursa Municipality by Atatürk in 1938 and transferred to the Ministry of Culture in 1968, was turned into a museum on October 29, 1973, on the 50th anniversary of the Republic.",
        placeLocation:
            "https://www.google.com/maps/place/Bursa+'Atatürk+Evi'+Müzesi/@40.195031,29.0400952,15z/data=!4m6!3m5!1s0x14ca15fdd9121bdd:0xbf433e94a2804e86!8m2!3d40.195031!4d29.0400952!16s%2Fg%2F11f03_lcgm",
        placeImgPath: "assets/img/museum/ataturkevi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 11,
        placeCategory: "museum",
        placeName: "Bursa Kent Müzesi",
        placeExplanation:
            "Bursa City Museum is Turkey's first city museum. The goal of Bursa City Museum is to create a city museum in Bursa, which carries the identity of a pioneering city in the formation and development of traditional Anatolian and Ottoman culture of approximately 7000 years, where citizens and tourists can learn about this accumulation by seeing and even experiencing it. Bursa City Museum is a concept museum and opened its doors on February 14, 2004. The Old Courthouse, one of the three administrative structures of the Republican Period, where the city museum is located, was built in 1926 by Ekrem Hakkı Ayverdi. The building, which consists of a basement and 2 floors and a total area of 2010 square meters, is a structure that has the characteristics of the I. National Architecture Period.",
        placeLocation:
            "https://www.google.com/maps/place/Bursa+Kent+Müzesi/@40.1823757,29.0664314,15z/data=!4m2!3m1!1s0x0:0xfcd55b077185c274?sa=X&ved=2ahUKEwij4O3Wmbb-AhULR_EDHZn8D4gQ_BJ6BAh-EAg",
        placeImgPath: "assets/img/museum/bursakentmuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 12,
        placeCategory: "museum",
        placeName: "Karagöz Müzesi",
        placeExplanation:
            "The memories of Şeyh Küster, Karagöz and Hacivat, who are considered the pioneers of shadow play, are symbolized in Bursa. The tomb, which is thought to be located in the Yoğurtlu Baba Lodge on Çekirge Street, the oldest cemetery in Bursa, was converted into a mausoleum in 1950. Relief sculptures of Karagöz and Hacivat made of tiles on a symbolic curtain on a large concrete platform. There are three representative tombstones behind the monument. Located right across the mausoleum, the Karagöz Museum is a cultural center where different activities are held in addition to the traditional shadow play. Karagöz shows are held regularly in the building, which is the only Karagöz Museum in Turkey. The museum, which was opened in 1997, displays traditional Karagöz figures from Şinasi Çelikkol's private collection, puppet and shadow play figures collected from various countries, and ethnographic works belonging to Turkmen and Yörük villages.",
        placeLocation:
            "https://www.google.com/maps/place/Karagöz+Müzesi/@40.2018521,29.0274084,15z/data=!4m6!3m5!1s0x14ca15e6ae6a3c71:0xfd40f1a997899b45!8m2!3d40.2018521!4d29.0274084!16s%2Fg%2F11h0zfz32w",
        placeImgPath: "assets/img/museum/karagozmuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 13,
        placeCategory: "museum",
        placeName: "Osmanlı Evi Müzesi",
        placeExplanation:
            "In the Muradiye District, II. In the place of the wooden house opposite the Murad Complex, formerly Sultan II. It is thought that Murad had a mansion. Therefore, this house is also known as the house where Fatih Sultan Mehmet, who conquered Istanbul, was born. The two-storey house, which is used as a museum today, has the characteristics of the 17th century in terms of plan and decorations, and is one of the oldest surviving houses in Bursa.",
        placeLocation:
            "https://www.google.com/maps/place/17.+YÜZYIL+OSMANLI+EVİ+MÜZESİ/@40.1914094,29.0457165,15z/data=!4m6!3m5!1s0x14ca16000305af59:0xcfcdff0e752639da!8m2!3d40.1914094!4d29.0457165!16s%2Fg%2F120htnxw",
        placeImgPath: "assets/img/museum/osmanlievimuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 14,
        placeCategory: "museum",
        placeName: "Panaroma Müzesi",
        placeExplanation:
            "Bursa has a very important place in our history. The Panorama 1326 museum, which conveys how and how the traces of the Ottoman civilization that pervaded every corner of Bursa, which was the capital of the Ottoman Empire for a long time, came to light, brings the city's transformation from the conquest into a Muslim Ottoman city. There are also different details that make this place important. For example, an arts venue that hosts the world's largest panoramic displays.",
        placeLocation:
            "https://www.google.com/maps/place/Panorama+1326+Bursa+Fetih+Müzesi/@40.1862998,29.0755928,15z/data=!4m6!3m5!1s0x14ca3fddecf36f99:0xf80fc20d27bad899!8m2!3d40.1862998!4d29.0755928!16s%2Fg%2F11fsnk183m",
        placeImgPath: "assets/img/museum/panaromamuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 15,
        placeCategory: "museum",
        placeName: "Türk İslam Müzesi",
        placeExplanation:
            "Yeşil Madrasah, which was built in 1419 during the reign of Çelebi Mehmet as part of the Yeşil Complex, was reorganized in 1972 and opened as the Museum of Turkish-Islamic Arts since 1975. In the halls and rooms of the building, metal, ceramics, wood, embroidery, weapons, armor, manuscript books, Islamic coins, Islamic inscriptions and tombstones, as well as ethnographic materials from the Seljuk and Ottoman periods, dating from the 12th to the 20th centuries, are exhibited. Items related to the traditional shadow play of Hacivat and Karagöz, bath items belonging to the Bursa region, items belonging to Bursa dervish lodges and lodges, Ottoman engagement medals, plates belonging to various calligraphy masters, calligraphy samples belonging to great masters such as Şeyh Hamdullah and Hafız Osman, various copper kitchen and coffee utensils are also important works exhibited in the museum. Prayer book written by Ibn Hilal Ibn al-Bavvab in 975-976, richly illuminated Surah Baqara from the 14th century, a Koran dated 1323, Sultan II. The Qur'an belonging to Murad I, the Qur'an covered with gazelle skin that the Mamluk Sultan gifted to Yıldırım Beyazid, and the 15th century tile plates are among the most important objects of the Turkish-Islamic Arts Museum. gets.",
        placeLocation:
            "https://www.google.com/maps/place/Türk+Ve+İslam+Eserleri+Müzesi/@40.1813774,29.0736389,15z/data=!4m6!3m5!1s0x14ca3ddee62d9901:0x789fc87b93d3cf21!8m2!3d40.1813774!4d29.0736389!16s%2Fm%2F013chqt4",
        placeImgPath: "assets/img/museum/turkislammuzesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 16,
        placeCategory: "mustSee",
        placeName: "Bursa Kalesi",
        placeExplanation:
            "Bursa Castle was built in BC. It dates back to the 1st century. Today, the length of the walls is 2 km. as much. Between Çakırhamam and Tophane there are two bastions, one round and the other four corners. The area where Tophane, Orduevi and Industrial Vocational High School are located is in a natural set up to Yıldız Kahve. There are 5 gates in the castle. These are Hisar Gate, Hot Spring Gate, Dungeon Gate, Pınarbaşı Gate, Yer Gate. (Source: Bursa Provincial Directorate of Culture and Tourism archive)",
        placeLocation:
            "https://www.google.com/maps/place/Bursa+Kalesi/@40.1834897,29.0495984,15z/data=!4m6!3m5!1s0x14ca3df2d8001aff:0xbb5ff165a6499974!8m2!3d40.1834897!4d29.0495984!16s%2Fg%2F122lklc9",
        placeImgPath: "assets/img/mustSee/bursakalesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 17,
        placeCategory: "mustSee",
        placeName: "Cumalıkızık",
        placeExplanation:
            "Cumalıkızık, which is one of the regions where the Ottomans first settled in Bursa, carries the Ottoman period housing texture to the present day with a total of 270 houses, 180 of which are still in use and some of them are protected and restored. In 1969, the remains of a Byzantine church were discovered in Ihlamurcu Mevkii on the skirts of Uludağ, southeast of Cumalıkızık settlement. Some architectural fragments of the church ruins found on the surface are kept in Bursa Archeology Museum. The Ottoman Principality, which was established near Bursa, succeeded in dominating the region shortly after its establishment, and by conquering Bursa in 1326 and Iznik in 1331, it made its presence known in the region. Thus, it was ensured that the Ottoman people settled in these lands and formed cities and villages.",
        placeLocation:
            "https://www.google.com/maps/place/Cumalıkızık,+16370+Yıldırım%2FBursa/@40.1806545,29.169497,14z/data=!3m1!4b1!4m6!3m5!1s0x14ca3913e9b86529:0x87cc8928170f3064!8m2!3d40.1786592!4d29.1710443!16zL20vMGR6ZmY2",
        placeImgPath: "assets/img/mustSee/cumalikizik.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 18,
        placeCategory: "mustSee",
        placeName: "Hünkar Köşkü",
        placeExplanation:
            "The Hunkar Mansion Museum was built on the outskirts of Uludag, in Temenyeri, to be a hunting lodge during the reign of Abdülmecit. The mansion was built in 1859. Abdülaziz and Mehmed V (Sultan Reşad) also stayed in the mansion. Mustafa Kemal Atatürk is among those who came to the mansion. Atatürk stayed in the mansion four times apart from his official visits. The decorations inside the mansion, whose architecture was made in the French imperial style, bear the characteristics of the 19th century. The ceiling decorations, the garden overlooking the Bursa panorama, the original furniture reflecting the period and the Atatürk Room attract the attention of the visitors.",
        placeLocation:
            "https://www.google.com/search?tbs=lf:1,lf_ui:2&tbm=lcl&q=bursa+hünkar+köşkü&rflfq=1&num=10&ved=2ahUKEwiooZO9nrb-AhV6QfEDHbEnBF4QtgN6BAgNEAE#rlfi=hd:;si:;mv:[[40.17457231411142,29.06660685051561],[40.17342462432554,29.064125807176833]]",
        placeImgPath: "assets/img/mustSee/hunkarkosku.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 19,
        placeCategory: "mustSee",
        placeName: "Misi Köyü",
        placeExplanation:
            "Misi Village has a history of 2000 years. It is known that Misi Village, which is connected to Nilüfer District with the name of Gümüştepe District today, is a very old settlement. It is thought that the first name of Misi Village was Mysia. There are historical records that a monk named Alex, with an entourage of eighty-five people, settled in the villages of Inkaya and Misi as the pioneers of the Christians in 183 AD, and the 'Consul' met and the Bible was discussed. It is believed that a copy of the Bible is buried in the vicinity of the monastery, where the ruins are found today. Because of these ruins, the region is also important for Christians. Misi Village, which is 12 kilometers away from the center of Bursa and welcomes visitors with all its naturalness, is very famous for its vine leaves, muscat grapes, molasses and wine. Winemaking in Misi has an old history. 'Misi Wines' are made only from muscat grapes, which are grown in this region and have a special aroma. It is also said that molasses made with these grapes is quite healthy.",
        placeLocation:
            "https://www.google.com/maps/place/Gümüştepe,+Misi+Cd.+Köyü,+16110+Nilüfer%2FBursa/data=!4m2!3m1!1s0x14ca16d8a2009975:0xa536f5e7fb0a357c?sa=X&ved=2ahUKEwiztYHrnrb-AhV_QvEDHUUiDrwQ8gF6BAgREAI",
        placeImgPath: "assets/img/mustSee/misikoyu.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 20,
        placeCategory: "mustSee",
        placeName: "Mudanya",
        placeExplanation:
            "While it takes 2-3 hours to go from one neighborhood of Istanbul to another, if it takes only 95 minutes to go to Mudanya, we think Mudanya is an Istanbul getaway. Thanks to BUDO (Bursa Sea Bus) and IDO (Istanbul Sea Bus), thanks to the regular voyages every day, you can arrive at Noah Harari without having to turn 50 pages, without hearing about it, and enjoying it. And you are descending into a really different atmosphere. After walking for 2 hours, you can't come to buildings covered with illuminated signboards and rug-patterned mosaics. Mudanya, with its center and Tirilye Neighborhood, is a light, easy, one-day getaway that is good for the soul.",
        placeLocation:
            "https://www.google.com/maps/place/Mudanya,+Bursa/@40.3656659,28.8994175,13z/data=!3m1!4b1!4m6!3m5!1s0x14ca6de9379bbbb5:0xaf4e4db3f7acd277!8m2!3d40.376973!4d28.883246!16s%2Fg%2F11bc60b3yj",
        placeImgPath: "assets/img/mustSee/mudanya.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 21,
        placeCategory: "mustSee",
        placeName: "Tophane Saat Kulesi",
        placeExplanation:
            "The clock tower, located in Tophane Park, was built in 1905. It was also used as a fire tower for a while, as the panoramic view of Bursa can be seen from its location. The tower, which has an entrance in the south, is reached by a wooden staircase with 89 steps. On the four facades of the upper floor of the tower are round clocks with a diameter of 90 centimeters. The tower, whose clocks do not work, is 33 meters high and has 6 floors.",
        placeLocation:
            "https://www.google.com/search?tbs=lf:1,lf_ui:1&tbm=lcl&q=bursa+saat+kulesi&rflfq=1&num=10&ved=2ahUKEwjv3fyQoLb-AhUCR_EDHVLKA-kQtgN6BAgTEAc#rlfi=hd:;si:11238348889698067608,l,ChFidXJzYSBzYWF0IGt1bGVzaUjepbAHWh0QARACGAAYARgCIhFidXJzYSBzYWF0IGt1bGVzaZIBEnRvdXJpc3RfYXR0cmFjdGlvbqoBShABKg8iC3NhYXQga3VsZXNpKCEyHhABIhr1sjaRsPL8AQcRrZDVhcz_Zzq-lbJO1saVqjIVEAIiEWJ1cnNhIHNhYXQga3VsZXNp,y,4UASRLdrtT4;mv:[[40.446777399999995,29.6891239],[40.1675725,28.953625300000002]]",
        placeImgPath: "assets/img/mustSee/saatkulesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 22,
        placeCategory: "mustSee",
        placeName: "Timsah Arena",
        placeExplanation:
            "Timsah Park, also known as Bursa Metropolitan Municipality Stadium, is a multi-purpose stadium in Bursa. The project, which started with Gintaş [5] winning the tender made by Bursa Metropolitan Municipality on February 24, 2011, was inaugurated by President Recep Tayyip Erdoğan on December 21, 2015. Together with Türk Telekom Stadium and Vodafone Park, the project, which is one of the three stadiums in Turkey with a C90 viewing angle, has a total seating capacity of 43,361.",
        placeLocation:
            "https://www.google.com/search?tbs=lf:1,lf_ui:1&tbm=lcl&q=bursa+timsah+arena&rflfq=1&num=10&ved=2ahUKEwjo6469oLb-AhUDR_EDHSVNB7cQtgN6BAgMEAc#rlfi=hd:;si:15868294083247176633,l,ChJidXJzYSB0aW1zYWggYXJlbmFIjavy8QFaKBAAEAEQAhgAGAEYAiISYnVyc2EgdGltc2FoIGFyZW5hKgYIAhABEAKSAQdzdGFkaXVtqgE7EAEyHxABIhswzx16NNiE7nodNtCp6b3rKY7CTSjfQzG4GD0yFhACIhJidXJzYSB0aW1zYWggYXJlbmE,y,CA1uyZBQiUI;mv:[[40.211695299999995,29.009480799999995],[40.2107599,29.0084319]]",
        placeImgPath: "assets/img/mustSee/timsaharena.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 23,
        placeCategory: "naturalBeauty",
        placeName: "Ağlayan Çınar",
        placeExplanation:
            "Crying Sycamore in Gölyazı Neighborhood, registered as 725 years old in 1998, is one of the oldest monumental trees in Bursa. There is a large hole in the trunk of the tree, which is called Crying Sycamore among the people, because it is rumored that the sad love story of Greek girl Eleni and Mehmet, who lived in Gölyazı, during the population exchange period, ended with the death of the lovers under this tree.",
        placeLocation:
            "https://www.google.com/maps/place/Ağlayan+Çınar/@40.1677154,28.6809761,15z/data=!4m2!3m1!1s0x0:0xf3a2e87c282d99dd?sa=X&ved=2ahUKEwifwobxkbf-AhV-RPEDHYlNAdgQ_BJ6BAh7EAg",
        placeImgPath: "assets/img/naturalBeauty/aglayancinar.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 24,
        placeCategory: "naturalBeauty",
        placeName: "Atatük Kent Ormanı",
        placeExplanation:
            "It is located in Nilüfer district. It is located just behind the Odunluk Neighborhood. Its distance from the city center is 12 km and its altitude is 275 m. It is open to visitors at any time of the year. In the picnic area, there are facilities such as picnic tables, sitting areas, barbecues, playground, masjid and WC. Visitors can spend time in the walking paths and sports areas in the picnic area in their spare time.",
        placeLocation:
            "https://www.google.com/maps/place/Gümüştepe,+Atatürk+Kent+Ormanı,+16110+Nilüfer%2FBursa/data=!4m2!3m1!1s0x14ca16ecf15d296b:0x23927102a5f17db?sa=X&ved=2ahUKEwis6-uqkrf-AhXjh4sKHYrYAHAQ8gF6BAgKEAI",
        placeImgPath: "assets/img/naturalBeauty/ataturkkentormani.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 25,
        placeCategory: "naturalBeauty",
        placeName: "Botanik Park",
        placeExplanation:
            "“Soğanlı Botanical Park” was put into service in 1998 in order to provide plenty of oxygen, new recreation and healthy sports areas to the city within the scope of the green belt in Bursa. Soganli Botanical Park; Located on an area of 400,000 m2, it is a park open to herbal research and scientific studies, while protecting the Bursa Plain, with 8000 trees from 150 species, 100,000 shrubs from 76 species, 50,000 groundcovers from 20 species and 6000 roses from 27 species. Also in the park; There are Japanese garden, English garden, French garden, rose garden, azalea-rhododendron garden, fragrant herb garden, rock garden, color gardens, shaped plants gardens.",
        placeLocation:
            "https://www.google.com/search?tbs=lf:1,lf_ui:1&tbm=lcl&q=bursa+botanik+park&rflfq=1&num=10&ved=2ahUKEwisjOjMkrf-AhVusYsKHTXVAREQtgN6BAgPEAI#rlfi=hd:;si:2509671301201897414,l,ChJidXJzYSBib3RhbmlrIHBhcmtIm5vph4iAgIAIWiQQARACGAAYARgCIhJidXJzYSBib3RhbmlrIHBhcmsqBAgDEAGSAQRwYXJrqgFMEAEqECIMYm90YW5payBwYXJrKCEyHhABIhpXHCR6NRrkmOnCBICOmouvw7nJJbH6EOA_CjIWEAIiEmJ1cnNhIGJvdGFuaWsgcGFyaw,y,B31_afo63YQ;mv:[[40.2208538,29.0408513],[40.2179749,29.037874499999997]]",
        placeImgPath: "assets/img/naturalBeauty/botanikpark.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 26,
        placeCategory: "naturalBeauty",
        placeName: "İznik",
        placeExplanation:
            "Iznik is a district of Turkey's Bursa province and the city that is the center of the district. It is located in the northeast of Bursa, on the eastern shore of Lake Iznik, which takes its name from the city. According to TUIK data for 2020, its population is 44,102 people. The name Iznik comes from Nikea, the old name of the city.",
        placeLocation:
            "https://www.google.com/maps/place/İznik,+Bursa/@40.4304785,29.7147425,13z/data=!3m1!4b1!4m6!3m5!1s0x14cb0bc05d7864f5:0x17b677c58432bec8!8m2!3d40.429524!4d29.719743!16zL20vMGs5eDE",
        placeImgPath: "assets/img/naturalBeauty/iznik.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 27,
        placeCategory: "naturalBeauty",
        placeName: "Kültür Park",
        placeExplanation:
            "The park, which was opened in 1955 by Reşat Oyal as 'Kültürpark', is the first large green area of the city. There are tea gardens, restaurants, bars and resting areas around the lake, which can be visited by boat in the park, which is established on an area of 393 thousand square meters. Archeology Museum, Municipal Conservatory, Open Air Theatre, Wedding Hall and Lunapark are the structures located in Kültürpark. Kültürpark has also hosted the International Bursa Festival since the first festival held in 1963.",
        placeLocation:
            "https://www.google.com/search?q=bursa%20kültür%20park&ei=439AZJWwNcOqxc8Po9GCcA&ved=2ahUKEwimo_2xk7f-AhXdQfEDHXeEBO8QvS56BAgNEAE&uact=5&oq=bursa+kültür+park&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzILCC4QgAQQxwEQrwEyDQguEIAEEMcBEK8BEAoyBQgAEIAEMg0ILhCABBDHARCvARAKMgUIABCABDIFCAAQgAQyBwgAEIAEEAoyBwgAEIAEEAoyBQgAEIAEMg0ILhCABBDHARCvARAKMhYILhCABBDHARCvARDcBBDeBBDgBBgDOgoIABBHENYEELADOgoIABCKBRCwAxBDOg0IABDkAhDWBBCwAxgBOg8ILhCKBRDIAxCwAxBDGAI6EgguEIoFENQCEMgDELADEEMYAjoVCC4QigUQxwEQrwEQyAMQsAMQQxgCOgcIABCKBRBDOgcILhCKBRBDOgsILhCABBCxAxDUAjoLCAAQgAQQsQMQgwE6CAgAEIAEELEDOhEILhCABBCxAxCDARDHARCvAToLCAAQigUQsQMQgwE6CwguEK8BEMcBEIAEOhYILhCvARDHARCABBDcBBDeBBDgBBgDSgQIQRgAUIwEWIwNYMAOaAFwAXgAgAHOAYgB5g2SAQYxLjExLjGYAQCgAQHIARPAAQHaAQYIARABGAnaAQYIAhABGAjaAQYIAxABGBQ&sclient=gws-wiz-serp&tbs=lf:1,lf_ui:1&tbm=lcl&rflfq=1&num=10&rldimm=8991285053410289822&lqi=ChNidXJzYSBrw7xsdMO8ciBwYXJrSN7o862IgICACFofEAEQAhgAGAEYAiITYnVyc2Ega8O8bHTDvHIgcGFya5IBBHBhcmuaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVUjFNbVJFVUVoQkVBRaoBTxABKhEiDWvDvGx0w7xyIHBhcmsoITIfEAEiG1ne9gTbwwVOaNPINMh5stG-BAYx22MfYa1iMDIXEAIiE2J1cnNhIGvDvGx0w7xyIHBhcms&phdesc=SWAOJBRYD-8&sa=X&rlst=f#rlfi=hd:;si:8991285053410289822,l,ChNidXJzYSBrw7xsdMO8ciBwYXJrSN7o862IgICACFofEAEQAhgAGAEYAiITYnVyc2Ega8O8bHTDvHIgcGFya5IBBHBhcmuaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVUjFNbVJFVUVoQkVBRaoBTxABKhEiDWvDvGx0w7xyIHBhcmsoITIfEAEiG1ne9gTbwwVOaNPINMh5stG-BAYx22MfYa1iMDIXEAIiE2J1cnNhIGvDvGx0w7xyIHBhcms,y,SWAOJBRYD-8;mv:[[40.2431857,29.0909244],[40.1903393,28.949165200000003]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:1",
        placeImgPath: "assets/img/naturalBeauty/kulturpark.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 28,
        placeCategory: "naturalBeauty",
        placeName: "Longoz Ormanları",
        placeExplanation:
            "Karacabey Flooded Longoz is the largest of the 3 large longoses in Turkey. Around 250 bird species live in the Karacabey floodplain. In the journey that ends with the spilling of the Susurluk river into the sea, the sand set formed by the waves of the sea and the stream on the last plain before it spills into the sea prevents the river from spilling into the sea, the water that cannot be poured into the sea spreads and forms the Kocaçay Delta and the Karacabey Floodplain. Also known as flooded forest. 12 bird species, including endangered species such as white pelican, black stork, flamingo and swan, breed in the delta in Karacabey floodplain.",
        placeLocation:
            "https://www.google.com/maps/place/Karacabey+Longoz+Ormanları/@40.3861084,28.4246503,15z/data=!4m2!3m1!1s0x0:0xa8528cbd6ef3bf6c?sa=X&hl=tr&ved=2ahUKEwiRocLmk7f-AhUnbvEDHSSFB0oQ_BJ6BQiYARAI",
        placeImgPath: "assets/img/naturalBeauty/longozormanlari.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 29,
        placeCategory: "naturalBeauty",
        placeName: "Oylat Mağarası",
        placeExplanation:
            "The cave, which took thousands of years to form, still continues to form. The water droplets dripping from the ceiling in the cave caused the formation of many dripstone ponds inside the cave.Its formation is discussed in two different sections. The first section consists of narrow galleries, with a width of 2-5 meters and a height of up to 15 meters. This section starts from the entrance and covers the part up to the depression hall. Here, gravel tanks and dripstone pools occupy a large area. The second section is the section consisting of a large depression hall. The ceiling height difference between where this section starts and where it ends reaches 95 meters. As a general feature, the width is 20-25 meters and the ceiling height is between 2.5-13 meters.",
        placeLocation:
            "https://www.google.com/maps/place/Oylat+Mağarası/@39.9436532,29.5912339,15z/data=!4m2!3m1!1s0x0:0x1019fc1e30165d3?sa=X&hl=tr&ved=2ahUKEwiNvKyilLf-AhVaQ_EDHXZ9DTkQ_BJ6BQiIARAI",
        placeImgPath: "assets/img/naturalBeauty/oylatmagarasi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 30,
        placeCategory: "naturalBeauty",
        placeName: "Sansarak Kanyonu",
        placeExplanation:
            "Sansarak Canyon, with its magnificent nature, is among the frequent destinations of those who want to camp or go on a canyon trip. It attracts nature lovers with its incredible nature and challenging tracks. Sansarak Canyon, three hours away from Istanbul, awaits you with its untouched nature. If you are overwhelmed by the stress of work, if you want to get away from the noise of the city, you can spend pleasant time with your family, loved ones and friends in Sansarak Canyon.",
        placeLocation:
            "https://www.google.com/search?hl=tr&tbs=lf:1,lf_ui:1&tbm=lcl&q=bursa+sansarak+kanyonu&rflfq=1&num=10&ved=2ahUKEwji0IjUlLf-AhVvR_EDHav1DK8QtgN6BAhYEAI#rlfi=hd:;si:1305399175043163430,l,ChZidXJzYSBzYW5zYXJhayBrYW55b251SOmi58jXuICACFogEAIYABgBGAIiFmJ1cnNhIHNhbnNhcmFrIGthbnlvbnWSARJ0b3VyaXN0X2F0dHJhY3Rpb26aASRDaGREU1VoTk1HOW5TMFZKUTBGblNVUXRkVFo1Y210QlJSQUKqAUwQASoLIgdrYW55b251KCEyHxABIhuWXNASlgWYvlLr1bD7rvorRL3kN5SXcBzpTzEyGhACIhZidXJzYSBzYW5zYXJhayBrYW55b251,y,ypeK8buH0pY;mv:[[40.521795499999996,29.839118499999994],[40.4883059,29.8285329]]",
        placeImgPath: "assets/img/naturalBeauty/sansarakkanyonu.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 31,
        placeCategory: "naturalBeauty",
        placeName: "Suutçu Şelalesi",
        placeExplanation:
            "It is within the borders of Mustafakemalpaşa district of Bursa and is 17 km away from the district center. The waterfall, which was formed as a result of the collapse of a fault line, spills from a height of 38 meters. Suuçtu Waterfall, which also has a picnic area and a picnic area, is a full oxygen tank with the beech trees surrounding it and its cool air.",
        placeLocation:
            "https://www.google.com/search?hl=tr&tbs=lf:1,lf_ui:1&tbm=lcl&q=bursa+sütçü+şelalesi&rflfq=1&num=10&ved=2ahUKEwijrMr0lLf-AhVPSvEDHenrBJYQtgN6BAgREAg#rlfi=hd:;si:13567305147262336726,l,ChhidXJzYSBzw7x0w6fDvCDFn2VsYWxlc2lIgPiBlJuqgIAIWiIQARACGAAYAiIYYnVyc2Egc8O8dMOnw7wgxZ9lbGFsZXNpkgESdG91cmlzdF9hdHRyYWN0aW9uqgFZEAEqFiISc8O8dMOnw7wgxZ9lbGFsZXNpKCEyHxABIhsmsy-A91p85xs1WmPFpc7OK6b8UcbsMRE2fk0yHBACIhhidXJzYSBzw7x0w6fDvCDFn2VsYWxlc2k,y,81_oDlZhz2Y;mv:[[40.168302,29.352630299999998],[39.8866502,28.330698899999998]]",
        placeImgPath: "assets/img/naturalBeauty/suutcuselalesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 32,
        placeCategory: "religiousPlace",
        placeName: "Alaaddin Bey Cami",
        placeExplanation:
            "The mosque was built by Orhan Gazi's brother Alaaddin Bey in 1326, when Bursa was conquered, and is considered the first mosque of the Ottomans in Bursa. Alaaddin Bey, who was the elder brother of Orhan Gazi, renounced the principality and left his place to his brother Orhan Bey, Bursa. The building, which is a typical early Ottoman period mosque, has a rectangular plan with the main place of worship and the last congregation place with three sections. The narthex sections are carried by columns with Corinthian and Ionic style capitals from the Byzantine period, which are connected to each other with pointed arches of brickwork. It is known that its pulpit was brought from the Mevlevihane in Pınarbaşı. There is a graveyard in the courtyard of the mosque, and a fountain with a pointed arch embedded in the wall on the outer wall.",
        placeLocation:
            "https://www.google.com/maps/place/Alaaddinbey+Cami/@40.195527,28.918691,15z/data=!4m6!3m5!1s0x14ca111b25739771:0xa2b182ff524daef!8m2!3d40.195527!4d28.918691!16s%2Fg%2F1tj9wk0x?hl=tr",
        placeImgPath: "assets/img/religiousPlace/alaaddinbeycami.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 33,
        placeCategory: "religiousPlace",
        placeName: "Emir Sultan Cami",
        placeExplanation:
            "It was built on behalf of Emir Sultan in the early 15th century by Hundi Fatma Sultan, daughter of Yıldırım Bayezid and wife of Emir Sultan. There is an octagonal fountain in the middle of the rectangular planned courtyard. In addition, there is a mosque in the south of the courtyard, Emir Sultan Tomb and wooden rooms in the north. The mosque has a square plan and is covered with a single dome. While the mosque was multi-domed when it was first built, it was destroyed in 1795. It was built in the Rococo and Empire style, in its current form, during the reign of Selim I between 1804 and 1805. The building was repaired between 1861-1876 during the reign of Sultan Abdulaziz.",
        placeLocation:
            "https://www.google.com/maps/place/Emirsultan,+Emir+Sultan+Cami,+16360+Yıldırım%2FBursa/@40.1808291,29.0814073,17z/data=!3m1!4b1!4m6!3m5!1s0x14ca3dd8239591a1:0xa8d057572c1fa26c!8m2!3d40.1808291!4d29.0814073!16s%2Fg%2F11bymz4_3t?hl=tr",
        placeImgPath: "assets/img/religiousPlace/emirsultancami.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 34,
        placeCategory: "religiousPlace",
        placeName: "Hüdavendigar Cami",
        placeExplanation:
            "It is known that the mosque, which was built on a hill overlooking the plain in Çekirge district, was built between 1365-1366. There is a madrasah with 18 rooms on the upper floor of the two-storey building. Constructing the mosque and the madrasah together adds a monumental feature to the mosque. There are two iwans and 6 rooms on the lower floor. Under the middle dome of the mosque, which was built with an inverted T plan, there is the place where the main prayer is performed and there are rooms with an iwan next to them. Inside the mosque, there is a fountain right under the dome. The mosque, which is known to have been built by a Greek architect; Its walls, built with stones, bricks and spolia, are very thick.",
        placeLocation:
            "https://www.google.com/maps/place/I.+Murad+Hüdavendigar+Camii/@40.2023163,29.021183,15z/data=!4m2!3m1!1s0x0:0x8aa741e1dc7ffad?sa=X&hl=tr&ved=2ahUKEwj_zLf3mLf-AhUdS_EDHdQ3CrgQ_BJ6BQiBARAI",
        placeImgPath: "assets/img/religiousPlace/hudavendigar.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 35,
        placeCategory: "religiousPlace",
        placeName: "Muradiye",
        placeExplanation:
            "Muradiye District of Bursa's Osmangazi district has a special importance for history buffs. Because the largest tomb community of the Ottoman dynasty is located here. Sultan II. It is a structure worth seeing with its 12 tombs, mosque, madrasah and bath located in the Muradiye Complex, which was built by Murad in 1425. Moreover, the Muradiye Complex was included in the UNESCO World Cultural Heritage List in 2014. The garden of the Kulliye is quite peaceful, you can also find the chance to see the tombstones of the Ottoman period in the garden covered with lush trees.",
        placeLocation:
            "https://www.google.com/maps/place/Muradiye,+16040+Osmangazi%2FBursa/@40.192037,29.0436841,16z/data=!3m1!4b1!4m6!3m5!1s0x14ca16007af7b1e3:0x60579ce587b18cf0!8m2!3d40.1922555!4d29.043447!16s%2Fg%2F1tf04pbd?hl=tr",
        placeImgPath: "assets/img/religiousPlace/muradiye.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 36,
        placeCategory: "religiousPlace",
        placeName: "Orhangazi Türbesi",
        placeExplanation:
            "Sultan Orhan, the son of Osmangazi and the second sultan of the Ottoman Empire, lived between 1281-1362. During his lifetime, he took Bursa and its surroundings from the Byzantines, established state organizations and printed the provincial Ottoman money. Orhangazi Tomb was built in Tophane Park in Hisar District, on a part of the Sainte Elie Monastery, which was used as the metropolitan monastery of the city before the conquest of Bursa. The tomb, which is right across the Osmangazi Tomb, was built on the floor mosaics of the Sainte Elie Monastery. There are three windows on each side of the mausoleum, which was built in a square plan. The interior walls are whitewashed and there are simple ornaments in the form of pediments on the windows.",
        placeLocation:
            "https://www.google.com/maps/place/Osman+Gazi+Türbesi/@40.1867258,29.0573573,15z/data=!4m6!3m5!1s0x14ca3dfd28db0f8f:0x73b2552864f33538!8m2!3d40.1867258!4d29.0573573!16s%2Fg%2F11c1mfxrmj?hl=tr",
        placeImgPath: "assets/img/religiousPlace/orhangaziturbesi.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 37,
        placeCategory: "religiousPlace",
        placeName: "Osmangazi Türbesi",
        placeExplanation:
            "Osman Gazi, the founder of the Ottoman State, lived between 1258-1324. Osmangazi was buried in the mausoleum built on the chapel of the Byzantine Monastery named Sainte Elie, known as the 'Gümüşlü Kümbet', after the conquest of Bursa upon his will, during the siege of Bursa. The tomb, which was completely destroyed by a fire in 1801 and by the earthquake of 1855, was restored to its present form in 1863 by Sultan Abdulaziz, remaining faithful to its old structure.",
        placeLocation:
            "https://www.google.com/maps/place/Osman+Gazi+Türbesi/@40.1867258,29.0573573,15z/data=!4m6!3m5!1s0x14ca3dfd28db0f8f:0x73b2552864f33538!8m2!3d40.1867258!4d29.0573573!16s%2Fg%2F11c1mfxrmj?hl=tr",
        placeImgPath: "assets/img/religiousPlace/osmangaziturbe.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 38,
        placeCategory: "religiousPlace",
        placeName: "Uftade Cami",
        placeExplanation:
            "Üftade Mosque was built by Üftade Mahmud Muhiddin, who is known to have died in 1580, and was damaged in the 1855 earthquake, and was rebuilt by Serazkar Rıza Pasha in 1869. The narthex, which is covered with three domes on the top, is supported by three arches in the front and one on each side. Above the entrance to the main prayer hall, there is a six-line inscription made of marble, written in Turkish in small talik letters, measuring 0.75 x 1.20 meters. The mosque, which has 13 x 13 meters internal dimensions, is covered with a dome and vault. At the entrance of the mosque, there is a narthex with a depth of three meters. Its walls were built with cut stones and bricks. Since the mosque was destroyed in various earthquakes, it was rebuilt by his grandson İbrahim. In 1855, the great dome was destroyed, and the dome and arches of the narthex were cracked. In this period, an octagonal rimmed Baghdadi dome was placed on four wooden pillars, and round vaults and elliptical arches connected to the main walls of the building were built. The square planned tomb, which was rebuilt in 1869, is located to the east of the Mosque.",
        placeLocation:
            "https://www.google.com/maps/place/Üftade+Camii+ve+Türbesi/@40.1829458,29.0575758,15z/data=!4m6!3m5!1s0x14ca3de4b4d009a9:0x138012387faa7bd8!8m2!3d40.1829458!4d29.0575758!16s%2Fg%2F1td0jqh1?hl=tr",
        placeImgPath: "assets/img/religiousPlace/uftadecami.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 39,
        placeCategory: "religiousPlace",
        placeName: "Ulu Cami",
        placeExplanation:
            "Bursa Ulu Mosque is the grand mosque that was built by Bayezid I between 1396-1400 in Bursa. The mosque, which is one of the historical symbols of Bursa, is on Atatürk Street in the city center of Bursa. It is considered the most classical and monumental example of the multi-legged mosque scheme. The twenty-domed structure is the largest mosque in Turkey with an inner congregation place. It is thought that the architect was Ali Neccar or Hacı İvaz. The minbar of the mosque, made with the kündekari technique, is a valuable work of art, which is considered one of the most important examples of the transition from Seljuk carving to Ottoman wood carving. It is shown among the original examples of calligraphy. The fountain, located under an open dome in the interior of the mosque, is one of the remarkable features of the Ulu Mosque.",
        placeLocation:
            "https://www.google.com/maps/place/Ulu+Cami/@40.1838595,29.0618687,15z/data=!4m6!3m5!1s0x14ca383f1ab219dd:0x26f1946c7d131ee3!8m2!3d40.1838595!4d29.0618687!16s%2Fm%2F05zxfdd?hl=tr",
        placeImgPath: "assets/img/religiousPlace/ulucami.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 40,
        placeCategory: "religiousPlace",
        placeName: "Yeşil Türbe",
        placeExplanation:
            "The Green Tomb was built in 1421 by Mehmet Çelebi, the son of Bayezid I. The architect of the tomb, which is a part of the Green Complex, is Hacı İvaz Pasha. The building, which has become the symbol of Bursa, has a location that can be seen from anywhere in the city. Mehmed I had the tomb built while he was alive, and died 40 days later. There are a total of 9 sarcophagi in the tomb, belonging to Çelebi Sultan Mehmet, his sons Şehzade Mustafa, Mahmut and Yusuf, and his daughters Selçuk Hatun, Sitti Hatun, Hafsa Hatun, Ayşe Hatun and his nanny Daya Hatun.",
        placeLocation:
            "https://www.google.com/maps/place/Yeşil+Türbe/@40.1813475,29.0748991,15z/data=!4m6!3m5!1s0x14ca3dded4277f33:0xede74708b967072!8m2!3d40.1813475!4d29.0748991!16zL20vMGg3bGQw?hl=tr",
        placeImgPath: "assets/img/religiousPlace/yesilturbe.jpg"));

    dbHelper.placeAdd(PlaceModel(
        id: 41,
        placeCategory: "religiousPlace",
        placeName: "Yıldırım Beyazıt Cami",
        placeExplanation:
            "Yıldırım Complex is a building complex built by the Ottoman Sultan Yıldırım Bayezid and Sultan Süleyman Han in Bursa at the end of the 14th century. It is considered one of the most important indicators of the Ottoman Principality's transition from a principality to a state, as it contains the first monumental works with quality workmanship built by the Ottomans. It is located on a steep hill in the Yıldırım district of Bursa. It is one of the components of the “Bursa and Cumalıkızık: The Birth of the Ottoman Empire” World Heritage Site, which was inscribed on the World Heritage List in 2014. A mosque, madrasah, imaret, bath and hospital and later Süleyman Han It consists of the Yıldırım Bayezid tomb, which was built by The architect of the tomb is Hüseyin son Ali. Five structures from the kulliye, including a mosque, a madrasa, a hospital, a bath and a tomb, have survived to the present day. Darüşşifa, which is a part of the complex, is the first hospital building in Ottoman architecture.",
        placeLocation:
            "https://www.google.com/maps/place/Yıldırım,+Yıldırım+Beyazıt+Cami,+16350+Yıldırım%2FBursa/@40.1875306,29.0825355,15z/data=!4m6!3m5!1s0x14ca3e7a143b080f:0xeb2ecd29ee65ccea!8m2!3d40.1875306!4d29.0825355!16s%2Fg%2F11byn0sx24?hl=tr",
        placeImgPath: "assets/img/religiousPlace/yildirimbeyazitcami.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 1,
        foodCategory: "MEAT DISH",
        foodName: "Bursa Kebabı",
        foodImagePath: "assets/img/foods/bursakebabi.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 2,
        foodCategory: "PASTRY",
        foodName: "Cantik",
        foodImagePath: "assets/img/foods/cantik.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 3,
        foodCategory: "DESSERT",
        foodName: "Düğün Helvası",
        foodImagePath: "assets/img/foods/dugunhelvasi.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 4,
        foodCategory: "MEAT DISH",
        foodName: "Etli Kereviz",
        foodImagePath: "assets/img/foods/etlikereviz.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 5,
        foodCategory: "PASTRY",
        foodName: "Haşhaşlı Lokum",
        foodImagePath: "assets/img/foods/hashaslilokum.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 6,
        foodCategory: "MEAT DISH",
        foodName: "Inegöl Köfte",
        foodImagePath: "assets/img/foods/inegolkofte.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 7,
        foodCategory: "MEAT DISH",
        foodName: "Iskender",
        foodImagePath: "assets/img/foods/iskender.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 8,
        foodCategory: "DESSERT",
        foodName: "Kemalpaşa",
        foodImagePath: "assets/img/foods/kemalpasa.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 9,
        foodCategory: "DESSERT",
        foodName: "Kestane Şekeri",
        foodImagePath: "assets/img/foods/kestanesekeri.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 10,
        foodCategory: "MEAT DISH",
        foodName: "Pideli Köfte",
        foodImagePath: "assets/img/foods/pidelikofte.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 11,
        foodCategory: "DESSERT",
        foodName: "Süt Helvası",
        foodImagePath: "assets/img/foods/suthelvasi.jpg"));

    dbHelper.foodAdd(FoodModel(
        id: 12,
        foodCategory: "PASTRY",
        foodName: "Tahinli",
        foodImagePath: "assets/img/foods/tahinli.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 1,
        header: "Milli Park",
        content:
            "Go to the national park and have a picnic have fun with your family.",
        activityImagePath: "assets/img/uludag/millipark.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 2,
        header: "Teleferik",
        content: "Take the cable car and witness the beauty of nature.",
        activityImagePath: "assets/img/uludag/teleferik.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 3,
        header: "Aras Şelalesi",
        content: "Go to Aras waterfall and witness the beauty of nature.",
        activityImagePath: "assets/img/uludag/arasselalesi.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 4,
        header: "Atv",
        content: "Take an ATV tour in the unique beauty of Uludağ.",
        activityImagePath: "assets/img/uludag/atv.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 5,
        header: "Camp",
        content:
            "Camp in the unique beauty of Uludağ and spend a good time with nature and with your friends.",
        activityImagePath: "assets/img/uludag/kamp.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 6,
        header: "Snow Sled",
        content:
            "Have a nice time lost in the snow with your family or other people with the snow sled.",
        activityImagePath: "assets/img/uludag/karkizagi.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 7,
        header: "Snow Bike",
        content:
            "Take a tour in the unique beauty of Uludağ in winter with a snow bike.",
        activityImagePath: "assets/img/uludag/karmotoru.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 8,
        header: "Saf Boğan Şelalesi",
        content:
            "Visit and enjoy the unique beauty of Uludağ, Saf Boğan Waterfall.",
        activityImagePath: "assets/img/uludag/safboganselalesi.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 9,
        header: "Snowboard",
        content:
            "Enjoy and have fun snowboarding on the wonderful tracks of Uludağ.",
        activityImagePath: "assets/img/uludag/snowboarduludag.jpg"));

    dbHelper.activityAdd(UludagActivityModel(
        id: 10,
        header: "Trekking",
        content: "Enjoy nature and witness adventure with trekking in Uludağ.",
        activityImagePath: "assets/img/uludag/trekking.jpg"));
  }
}
