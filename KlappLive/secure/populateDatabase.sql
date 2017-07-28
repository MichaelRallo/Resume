CREATE TABLE klappdb.user_info (
	username 		    VARCHAR(30) PRIMARY KEY,
	registration_date 	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	description 		VARCHAR(500),
	is_admin 			boolean DEFAULT false
);


CREATE TABLE klappdb.authentication (
	username           VARCHAR(30) PRIMARY KEY,
	password_hash      CHAR(40) NOT NULL,
	salt               CHAR(40) NOT NULL,
	FOREIGN KEY (username) REFERENCES klappdb.user_info(username)
);


CREATE TABLE klappdb.words(
    id                  SERIAL,
    username            VARCHAR(30) NOT NULL REFERENCES klappdb.user_info,
    wordType            VARCHAR(30),
    category            VARCHAR(30),
    koreanWord          NVARCHAR (100),
    englishTranslation  VARCHAR(100),
    romanization        VARCHAR(100)
);

-- ************************************************USERS************************************************ --

INSERT INTO klappdb.user_info(username, registration_date, description, is_admin) 
VALUES("defaultUser", CURRENT_TIMESTAMP, "Default User Database.", false);

INSERT INTO klappdb.user_info(username,registration_date , description, is_admin) 
VALUES("Mike", CURRENT_TIMESTAMP, "The Admin.", true);

INSERT INTO klappdb.authentication(username, password_hash, salt) 
VALUES("Mike", "97778bb8bbaa0ffabb11589b70bbc60a28110cb4", "887309d048beef83ad3eabf2a79a64a389ab1c9f");



-- ************************************************ALPHABET************************************************ --

-- ************************CONSONANTS************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㄱ", "g", "g");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㄴ", "n", "n");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㄷ", "d", "d");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㄹ", "r,l", "r,l");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅁ", "m", "m");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅂ", "b", "b");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅅ", "s", "s");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅇ", "ng", "ng");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅈ", "j", "j");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅊ", "ch", "ch");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅋ", "k", "k");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅌ", "t", "t");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅍ", "p", "p");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅎ", "h", "h");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㄲ", "kk", "kk");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㄸ", "tt", "tt");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅃ", "pp", "pp");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅆ", "ss", "ss");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "consonant", "ㅉ", "jj", "jj");



-- ************************VOWELS************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅏ", "a", "a");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅑ", "ya", "ya");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅓ", "eo", "eo");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅕ", "yeo", "yeo");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅗ", "o", "o");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅛ", "yo", "yo");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅜ", "u", "u");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅠ", "yu", "yu");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅡ", "eu", "eu");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅣ", "i", "i");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅐ", "ae", "ae");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅒ", "yae", "yae");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅔ", "e", "e");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅖ", "ye", "ye");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅘ", "wa", "wa");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅙ", "wae", "wae");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅚ", "oe", "oe");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅝ", "wo", "wo");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅞ", "we", "we");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅟ", "wi", "wi");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "alphabet", "vowel", "ㅢ", "ui", "ui");


-- ************************************************NOUNS************************************************ --

-- ************************ANIMALS************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "사자", "lion", "saja");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "호랑이", "tiger", "horangi");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "원숭이", "monkey", "wonsungi");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "개", "dog", "gae");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "고양이", "cat", "goyangi");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "말", "horse", "mal");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "돼지", "pig", "dwaeji");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "소", "cow", "so");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "너구리", "raccoon", "neoguri");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "팬더", "panda", "paendeo");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "토끼", "rabbit", "tokki");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "늑대", "wolf", "neukdae");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "곰", "bear", "gom");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "여우", "fox", "yeou");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "사슴", "deer", "saseum");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "animal", "양", "sheep", "yang");


-- ************************NUMBERS************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "number", "일", "one", "il");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "number", "이", "two", "i");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "number", "삼", "three", "sam");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "number", "사", "four", "sa");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "number", "오", "five", "o");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "number", "육", "six", "yuk");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "number", "칠", "seven", "chil");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "number", "팔", "eight", "pal");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "number", "구", "nine", "gu");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "number", "십", "ten", "ship");


-- ************************FOODS************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "food", "바나나", "banana", "banana");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "food", "사과", "apple", "sagwa");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "food", "오렌지", "orange", "orenji");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "food", "망고", "strawberry", "ttalgi");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "food", "감자", "potato", "gamja");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "food", "쌀", "rice", "ssal");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "food", "누들", "noodle", "nudeul");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "food", "브로콜리", "broccoli", "beulokolli");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "food", "당근", "carrot", "dang-geun");

-- ************************BUILDINGS************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "building", "학교", "school", "haggyo");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "building", "병원", "hospital", "byeong-won");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "building", "저장", "store", "jeojang");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "building", "쇼핑 센터", "mall", "syoping senteo");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "building", "경찰서", "police station", "gyeongchalseo");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "building", "집", "house", "jib");

-- ************************TECHNOLOGY************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "technology", "컴퓨터", "computer", "keompyuteo");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "technology", "텔레비전", "television", "tellebijeon");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "technology", "전화", "phone", "jeonhwa");

-- ************************NATURE************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "nature", "비", "rain", "bi");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "nature", "눈", "snow", "nun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "nature", "바람", "wind", "balam");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "nature", "지구", "earth", "jigu");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "nature", "흙", "soil", "heulg");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "nature", "나무", "tree", "namu");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "nature", "잔디", "grass", "jandi");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "nature", "록", "rock", "log");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "nature", "산", "mountain", "san");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "nature", "강", "river", "gang");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "nature", "대양", "ocean", "daeyang");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "nature", "하늘", "sky", "haneul");

-- ************************SCHOOL************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "school", "도서", "book", "doseo");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "school", "연필", "pencil", "yeonpil");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "school", "종이", "paper", "jong-i");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "school", "수첩", "notebook", "sucheob");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "school", "칠판", "chalkboard", "chilpan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "school", "크레용", "crayon", "keuleyong");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "school", "배낭", "backpack", "baenang");


-- ************************HOUSING************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "housing", "침대", "bed", "chimdae");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "housing", "침상", "couch", "chimsang");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "housing", "부엌", "kitchen", "bueok");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "housing", "화장실", "bathroom", "hwajangsil");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "housing", "거실", "livingroom", "geosil");


-- ************************TRANSPORTATION************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "transportation", "차", "car", "cha");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "transportation", "버스", "bus", "beoseu");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "transportation", "비행기", "plane", "bihaeng-gi");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "transportation", "택시", "taxi", "taegsi");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "transportation", "기차", "train", "gicha");



-- ************************BODY************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "body", "신체", "body", "sinche");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "body", "머리", "head", "meoli");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "body", "손", "hand", "son");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "body", "발", "foot", "bal");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "body", "팔", "arm", "pal");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "body", "다리", "leg", "dali");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "body", "이", "teeth", "i");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "body", "머리", "hair", "meoli");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "body", "발가락", "toe", "balgalag");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "body", "손가락", "finger", "songalag");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "body", "입", "mouth", "ib");


-- ************************SPORTS************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "sport", "축구", "soccer", "chuggu");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "sport", "야구", "baseball", "yagu");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "sport", "배구", "volleyball", "baegu");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "sport", "테니스", "tennis", "teniseu");


-- ************************PEOPLE************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "people", "대통령", "president", "daetonglyeong");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "people", "경찰관", "police officer", "gyeongchalgwan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "people", "소방수", "fireman", "sobangsu");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "people", "운전사", "driver", "unjeonsa");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "people", "보스", "boss", "boseu");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "people", "동료", "brother", "donglyo");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "people", "여자 형제", "sister", "yeoja hyeongje");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "people", "아버지", "father", "abeoji");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "people", "어머니", "mother", "eomeoni");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "people", "이모", "aunt", "imo");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "noun", "people", "삼촌", "uncle", "samchon");





-- ************************************************ADJECTIVES************************************************ --
-- ************************COLOR************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "빨간", "red", "ppalgan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "화이트", "white", "hwaiteu");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "푸른", "blue", "puleun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "보라색", "purple", "bolasaeg");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "검은", "black", "geom-eun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "녹색", "green", "nogsaeg");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "주황색", "orange", "juhwangsaeg");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "노랑", "yellow", "nolang");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "담홍색", "pink", "damhongsaeg");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "회색", "gray", "hoesaeg");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "갈색", "brown", "galsaeg");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "은", "silver", "eun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "color", "금", "gold", "geum");


-- ************************SIZE************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "size", "큰", "big", "keun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "size", "작은", "small", "jag-eun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "size", "긴", "tall", "gin");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "size", "짧은", "short", "jjalb-eun");


-- ************************SOUND************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "sound", "화려한", "loud", "hwalyeohan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "sound", "조용한", "quiet", "joyonghan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "sound", "시끄러운", "noisy", "sikkeuleoun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "sound", "우뢰", "thunder", "uloe");


-- ************************SHAPE************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "shape", "원", "circle", "won");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "shape", "광장", "square", "gwangjang");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "shape", "삼각형", "triangle", "samgaghyeong");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "shape", "넓은", "wide", "neolb-eun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "shape", "제한된", "narrow", "jehandoen");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "shape", "높은", "high", "nop-eun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "shape", "낮은", "low", "naj-eun");


-- ************************FEELINGS************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "feeling", "게으른", "lazy", "geeuleun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "feeling", "피곤한", "tired", "pigonhan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "feeling", "어리둥절한", "embarrassed", "eolidungjeolhan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "feeling", "심술 궂은", "grumpy", "simsul guj-eun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "feeling", "무서운", "scary", "museoun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "feeling", "강한", "nervous", "ganghan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "feeling", "교만한", "proud", "gyomanhan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "feeling", "걱정", "worried", "geogjeong");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "feeling", "성난", "angry", "seongnan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "feeling", "모양 없는", "clumsy", "moyang eobsneun");

-- ************************AMOUNTS************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "amount", "조금", "few", "jogeum");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "amount", "많이", "many", "manh-i");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "amount", "단일", "single", "dan-il");

-- ************************WEATHER************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "weather", "비오는", "rainy", "bioneun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "weather", "흐린", "cloudy", "heulin");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "weather", "맑은", "sunny", "malg-eun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "weather", "깜짝 놀란", "windy", "kkamjjag nollan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "weather", "따뜻한", "warm", "ttatteushan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "weather", "감기", "cold", "gamgi");

-- ************************APPEARANCE************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "appearance", "공상", "fancy", "gongsang");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "appearance", "예쁜", "pretty", "yeppeun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "appearance", "추한", "ugly", "chuhan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "appearance", "번쩍이는", "sparkling", "beonjjeog-ineun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "appearance", "홀딱 반할 만한", "adorable", "holttag banhal manhan");

-- ************************TIME************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "time", "늙은", "old", "neulg-eun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "time", "어린", "young", "eolin");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "time", "빠른", "fast", "ppaleun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "time", "느린", "slow", "neulin");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "time", "이른", "early", "ileun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "time", "늦은", "late", "neuj-eun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "time", "긴", "long", "gin");

-- ************************CONDITION************************ --
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "condition", "쉬운", "easy", "swiun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "condition", "어려운", "difficult", "eolyeoun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "condition", "살아 있는", "alive", "sal-a issneun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "condition", "죽은", "dead", "jug-eun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "condition", "옳은", "correct", "olh-eun");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "condition", "잘못된", "wrong", "jalmosdoen");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "condition", "유명한", "famous", "yumyeonghan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "condition", "중대한", "important", "jungdaehan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "condition", "깨끗한", "clean", "kkaekkeushan");
INSERT INTO klappdb.words(username, wordType, category, koreanWord, englishTranslation, romanization) 
VALUES("defaultUser", "adjective", "condition", "더러운", "dirty", "deoleoun");










