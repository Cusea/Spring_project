create sequence place_seq start with 1 increment by 1;
create table place(
	num number(8) constraint place_pk_num primary key,
	name_ko varchar2(300) constraint place_uk_name_ko unique,
	name_en varchar2(300),
	summary varchar2(1200) not null,
	wayToGo varchar2(1200) not null,
	tel varchar2(50),
	open_time varchar2(1200) not null,
	address varchar2(600) not null,
	imageaddList varchar2(4000) not null,
	homepage varchar2(1000),
	category_num number(8) constraint place_fk_category_num references category(num) not null,
	city_num number(8) constraint place_fk_city_num references city(num) not null,
	clipCount number(8) default 0
);
insert into place(num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'커낼 시티 하카타', 'Canal City Hakata', 
	'후쿠오카 시 하카타 구에 있는 복합시설, 오피스동 상업 시설등이 늘어서 있다.', 
	'지도', '+81 92-282-2525', '오전10:00~오후9:00', 
	'1 Chome-2 Sumiyoshi, Hakata Ward, Fukuoka, Fukuoka Prefecture 812-0018 일본', '이미지', 'http://www.ohorikouen.jp/',28, 1);

insert into place(num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'후쿠오카 성', 'Fukuoka Castle', 
	'에도 시대 초기에 완성된 성이다. 다른 이름은 마이즈루 성', 
	'지도', '전화번호', '24시간', 
	'Jonai, Chuo, Fukuoka, Fukuoka Prefecture 810-0043 일본', '이미지', 'http://www.ohorikouen.jp/',2,1);

insert into place(num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'오호리 공원', '?hori Park', 
	'연못이 공원 면적의 60%를 차지하는 호수 공원이다.', 
	'지도', '+81 92-741-2004', '24시간', 
	'일본 810-0051 Fukuoka Prefecture, Fukuoka, Chuo, Ohorikoen, 1-2', '이미지', 'http://www.ohorikouen.jp/',1,1);

insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'후쿠오카 타워', 'Fukuoka Tower', 
	'마이니치 방송의 본사 내에 있는 높이 234m의 랜드마크 타워이다.', 
	'지도', '+81 92-823-0234', '오전9:30~오후10:00', 
	'일본 814-0001 Fukuoka Prefecture, Fukuoka, Sawara Ward, Momochihama, 2 Chome-3番26', '이미지', 'https://www.fukuokatower.co.jp/',6,1);

insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'구시다 신사', 'Kushida Shrine', 
	'하카타 구에 있는 신사. 명성황후 시해 당시 사용된 칼이 보관 되어 있다.', 
	'지도', '+81 92-291-4459', '24시간', 
	'일본 812-0026 Fukuoka Prefecture, Fukuoka, Hakata Ward, Kamikawabatamachi, 1-41', '이미지', 'http://hakatanomiryoku.com/spot/%E6%AB%9B%E7%94%B0%E7%A5%9E%E7%A4%BE',8,1);

insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'도초지', 'Gokushomachi', 
	'일본에서 가장 오래된 사원이며 국보로 지정된 불상이 소장되어 있다.', 
	'지도', '+81 92-291-4459', '24시간', 
	'일본 812-0037 Fukuoka Prefecture, Fukuoka, Hakata Ward, Gokushomachi, 2-4', '이미지', 'https://www.city.fukuoka.lg.jp/',8,1);

insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'후쿠오카 마린월드', 'Fukuoka MarinWolrd', 
	'하카타에 있는 아쿠아리움 돌고래와 물개쇼를 볼 수 있다.', 
	'지도', '+81 92-603-0400', '오전10:00~오후5:00', 
	'일본 811-0321 Fukuoka Prefecture, Fukuoka, Higashi Ward, Saitozaki, 18?28', '이미지', 'https://marine-world.jp/',13,1);

insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'후쿠오카 돔', 'Fukuoka Yahuoku! Dome', 
	'일본 후쿠오카 현 후쿠오카 시에 있는 일본 최초의 개폐식 돔 구장이다.', 
	'지도', '+81 92-847-1006', '제한적 개방', 
	'2 Chome-2-2 Jigyohama, Chuo, Fukuoka, Fukuoka Prefecture 810-8660 일본', '이미지', 'http://www.softbankhawks.co.jp/stadium/',10,1);
	
insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'규슈 국립박물관', 'Kyushu National Museum', 
	'후쿠오카 현 다자이후 시에 있는 박물관이다 약 800점의 문화재가 전시되어 있다.', 
	'지도', '+81 92-918-2807', '월요일 휴무,오전9:30~오후5:00', 
	'4 Chome-7-2 Ishizaka, Dazaifu, Fukuoka Prefecture 818-0118 일본', '이미지', 'http://www.kyuhaku.jp/',7,1);
	
insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'우미노나카미치 해변 공원', 'Uminonakamichi Seaside Park', 
	'매우 넓고 좨적하게 관리되는 공원 동물원 놀이터 풀장 호수등이 있다.', 
	'지도', '+81 92-603-1111', '오전9:00~오후5:00', 
	'18-25 Saitozaki, Higashi Ward, Fukuoka, Fukuoka Prefecture 811-0321 일본', '이미지', 'https://uminaka-park.jp/',1,1);

insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'하카타 역사 공원', 'Hakata Townhouse History Hall', 
	'후쿠오카의 옛 민가 풍의 전시관', 
	'지도', '+81 92-281-7761', '오전10:00~오후6:00', 
	'일본 812-0039 Fukuoka Prefecture, Fukuoka, Hakata Ward, Reisenmachi, 6-1 0', '이미지', 'http://www.hakatamachiya.com/',1,1);
	
insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'후쿠오카시 박물관', 'Fukuoka City Museum', 
	'작은 규모지만, 후쿠오카시의 역사를 보여주는 박물관', 
	'지도', '+81 92-845-5011', '오전9:30~오후5:30', 
	'3 Chome-1-1 Momochihama, Sawara Ward, Fukuoka, Fukuoka Prefecture 814-0001 일본', '이미지', 'http://museum.city.fukuoka.jp/',7,1);
	
insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'후쿠오카 동물원', 'Fukuoka Municipal Zoo and Botanical Garden', 
	'렛서팬더를 보러 가는 동물원', 
	'지도', '+81 92-531-1968', '오전9:00~오후5:00', 
	'일본 〒810-0037 Fukuoka Prefecture, Fukuoka, Chuo', '이미지', 'http://zoo.city.fukuoka.lg.jp/',13,1);
	
insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'나미하노유온천', 'Namihanou HotSpring', 
	'하카타 포트 타워 옆 작은 온천 휴식하기 딱 알맞다.', 
	'지도', '+81 92-271-4126', '오전9:00~오전1:00', 
	'13-1 Chikkohonmachi, Hakata Ward, Fukuoka, Fukuoka Prefecture 812-0021 일본', '이미지', 'http://www.namiha.jp/',14,1);
	
insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'하카타 포트 타워', 'Hakata Ward', 
	'입장료 없는 전망대. 낮이든 밤이든 전망이 좋다.', 
	'지도', '+81 92-291-0573', '오전10:00~오후10:00', 
	'일본 812-0021 Fukuoka Prefecture, Fukuoka, Hakata Ward, Chikkohonmachi, 14-1', '이미지', 'http://port-of-hakata.city.fukuoka.lg.jp/healing_leisure/port_museum.html',34,1);
	
insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'다자이후텐만구', 'Dazaifu Tenman-gū', 
	'후쿠오카 현 다자이후 시에 위치하고 있는 신사이다 919년에 창건 되었으며 일본 중요문화재중 하나이다.', 
	'지도', '+81 92-922-8225', '24시간', 
	'일본 〒818-0117 Fukuoka Prefecture, Dazaifu, Saifu, 4 Chome-7-1', '이미지', 'http://www.dazaifutenmangu.or.jp/',8,1);
	
insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'마이즈루 공원', 'Maizuru Park', 
	'후쿠오카 성터를 중심으로 한 공원 빛축제가 열린다.', 
	'지도', '+81 92-781-2153', '24시간', 
	'1 Jonai, Chuo, Fukuoka, Fukuoka Prefecture 810-0043 일본', '이미지', 'http://www.midorimachi.jp/park/detail.php?code=302001',1,1);
	
insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'모모치 해변공원', 'Momochi seaside park', 
	'후쿠오카 성터를 중심으로 한 공원 빛축제가 열린다.', 
	'지도', '+81 92-822-8141', '24시간', 
	'일본 〒814-0001 Fukuoka Prefecture, Fukuoka, Sawara Ward, Momochihama, 2丁目、4丁目地先', '이미지', 'https://www.marizon-kankyo.jp/',1,1);
		
insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'스미요시 신사', 'Sumiyoshi Shrine', 
	'캐널시티 옆 쿄토 느낌의 신사 한번쯤 들릴만 하다.', 
	'지도', '+81 92-291-2670', '24시간', 
	'3 Chome-1-51 Sumiyoshi, Hakata Ward, Fukuoka, Fukuoka Prefecture 812-0018 일본', '이미지', 'http://chikuzen-sumiyoshi.or.jp/',8,1);
		
insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'고묘젠지', 'Kōmyōzen-ji', 
	'1272년 창건된 사찰 한적한 사찰이다. 사진촬영금지.', 
	'지도', '+81 92-925-1880', '24시간', 
	'2 Chome-16-1 Saifu, Dazaifu, Fukuoka Prefecture 818-0117 일본', '이미지', 'http://www.dazaifu.org/map/tanbo/tourismmap/2.html',8,1);	
	
insert into place(num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'하쿠자키 신사', 'Hakozaki Shrine', 
	'다자이후쪽 신사 대신에 가볼만한 사찰', 
	'지도', '+81 92-641-7431', '24시간', 
	'1 Chome-22-1 Hakozaki, Higashi Ward, Fukuoka, Fukuoka Prefecture 812-0053 일본', '이미지', 'http://www.hakozakigu.or.jp/',8,1);		
	
insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'라쿠스이엔 (낙수원)', 'rakusuien', 
	'작은 일본식 정원 입장료가 생각보다 비싸다', 
	'지도', '+81 92-262-6665', '오전9:00~오후5:00', 
	' 2 Chome-10-7 Sumiyoshi, Hakata Ward, Fukuoka, Fukuoka Prefecture 812-0018 일본', '이미지', 'http://rakusuien.net/',1,1);		

insert into place (num, name_ko, name_en, summary, wayToGo, tel, open_time, address, imageaddList, homepage, category_num, city_num) 
	values(place_seq.nextval,'쇼호쿠지', 'rakusuien', 
	'상당히 큰 규모의 절. 고양이가 많다.', 
	'지도', '+81 92-291-0775', '24시간', 
	'일본 812- 0037 福岡県福岡市博多区御供所町６', '이미지', 'http://www.shofukuji.or.jp/',8,1);		


	
	