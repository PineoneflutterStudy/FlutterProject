# 2024 Pineone Flutter Study 
[ 24.06.10 ~ 24.10.08 ]

Flutter 프로젝트 '나만의 여행플래너, 댕꿀트립🍯'에 대한 코드를 기록하고 공유합니다.

## 👩🏻‍💻Team Members🧑🏻‍💻
|이름|역할|맡은 기능|
|---|---|---------|
|곽나연|팀장|협업도구 관리, 메인구조 개발, Splash 화면, 여행플래너(Plan) 메뉴 개발, 앱 배포|
|김경태|팀원|서브구조 개발, 약속장소 추천(Meet) 메뉴 개발|
|박현민|팀원|홈(Home) 메뉴 개발|
|이희상|팀원|나만의 장소(Meet) 메뉴 개발|
|최정창|팀원|마이페이지(MyPage) 메뉴 개발|

## 🛠Collaboration tools🛠
### Github, Teams, Confluence, jira

## ⚙️Architecture
#### 스터디를 위해 플러터의 다양한 상태관리를 익히고자 아래 두가지의 구조를 사용하였습니다.
- 메인구조 : Clean Architecture + Bloc + DI 구조 (여행플래너, 찜목록, 마이페이지 메뉴)
- 서브구조 : MVVM Architecture + RiverPod 구조 (홈, 약속장소 추천 메뉴)
#### Firebase의 Firestore, storage를 활용하여 로그인한 회원들의 데이터를 관리하였습니다.
#### SharedPreference를 활용하여 로그인하지 않은 비회원들의 데이터를 관리하였습니다.

## 🗣️Subject
### 나만의 여행 플래너 (댕꿀트립🍯)
파워 J를 위한 앱! 당신의 여행과 만남을 스마트하게 관리해줍니다! 
주변 맛집과 관광지, 가까운 역, 주유소 등을 추천받을 수 있으며, 이전장소와의 이동시간까지 제공되어 완벽한 여행 계획을 세울 수 있습니다.
또한, 친구들과의 약속도 걱정 없이, 각자의 위치를 고려한 최적의 장소를 손쉽게 찾아드립니다!


## 📲 기능소개
#### [ 홈 (Home) ]
- 검색 기능
    - 지역 검색 시 > 추천 목록 화면으로 이동
- 인기 지역 (오늘 어디를 가볼까?)
    - 여기어때 인기 여행 지역 목록 제공 ( json 크롤링 )
    - 클릭 시 > 추천 목록 화면으로 이동
- 배너 ( Firebase > Storage )
    - 이미지를 제공받아 배너 형태로 노출
- 전국축제 ( TourAPI, 카카오 Map )
    - 한국관광공사에서 제공하는 축제 목록을 가져와 클릭 시 > 상세 팝업 표시
    - 팝업 내 주소지 클릭 시 > 카카오 MAP 제공
#### [ 나만의 여행플레너 (Plan) ]
- 여행계획 세우기 화면 ( FireStore DB)
    - 여행 계획 추가 및 삭제 가능
    - 여행 일정( 2일차, 3일차 … ) 추가 및 삭제 가능
    - 여행 일정 수정 기능
        - 이용시간, 이동수단 수정 기능
        - 장소 수정 및 삭제 기능
- 추천목록 화면 ( Kakao 로컬(Local) API - 주소검색, 키워드 장소 검색 )
    - 카테고리별 추천 장소 제공
        - 이전 장소와의 이동거리 및 이동수단에 따른 이동시간 제공
        - 상세사이트 이동
        - 장소 찜하기 기능 제공
    - 검색 기능
        - 거리순/정확도순 필터 선택
        - 거리순 > 최대 20km까지 필터 적용 가능
#### [ 나만의 장소 (Like) ]
- 나만의 장소 찜목록 제공 ( Firestore DB )
    - 지역별 필터링 제공 ( 통계청 SGIS API )
    - 카테고리별 필터링 제공
- 장소 삭제, 찜해제 기능
    - 장소별, 카테고리별, 전체 삭제 가능
#### [ 약속장소 추천 (Meet) ]
- 최대 4인 중간지점 장소 탐색 및 가이드 제공
    - 도로명 주소 검색 기능 ( kpostal )
    - 중간지점 추천 기능 ( 한국관광공사_관광정보 서비스 API - 위치 기반 관광정보 조회 )
    - 중간지점으로부터 각 출발지까지 경로 탐색 기능 ( 카카오모빌리티 - 자동차 길찾기 API )
    - 출발지와 목적지 지도 표기 기능 ( kaka_map_plugin ( 카카오Map ) )
    - 목적지 장소 정보 카카오맵 이동 기능 ( kakaoMap - URL Scheme )
    - 출발지 - 목적지 길찾기 카카오맵 이동 기능 ( kakaoMap - URL Scheme )
    - 로그인 사용자 탐색한 약속장소 저장 기능
    - 로그인 사용자 저장한 약속장소들 제공 기능
    - 비로그인 사용자 약속장소 탐색 기능 제공 ( 약속장소 저장 기능 X )

#### [ 마이페이지 (MyPage) ]
- 마이페이지 및 내정보 화면
    - 프로필 이미지 변경(카메라/갤러리) 기능
    - 로그아웃 기능
- 로그인 화면
    - 구글 로그인 및 회원가입 (OIDC)
    - 네이버 로그인 및 회원가입 (GoogleCould Server)
    - 카카오 로그인 및 회원가입 (OIDC)
    - 이메일 중복 가입 여부 확인
- 이메일 로그인 화면
    - 이메일 로그인 및 회원가입 (Firebase Auth)

## 📸 ScreenShot
#### [ 스플래쉬 (Splash) ]
<img height="514" src="https://github.com/user-attachments/assets/08c66632-335e-4455-9920-fd554ba3249f">

#### [ 홈 (Home) ]
<img src="https://github.com/user-attachments/assets/fcddc4f2-257f-47a4-8d11-ddcb6d7fc88f"  height="514">

#### [ 나만의 여행플레너 (Plan) ]
<img height="514" src="https://github.com/user-attachments/assets/99aab0c2-5a52-4942-bca9-d1f5b8d500a4">
<img height="514" src="https://github.com/user-attachments/assets/9a143e46-b86b-4de7-927d-1cf08329d280">
<img height="514" src="https://github.com/user-attachments/assets/22cf21bc-5e9b-4c91-bf4b-3adb90890356">

#### [ 나만의 장소 (Like) ]
<img height="542" src = "https://github.com/user-attachments/assets/827c8afb-1a01-42f1-9c98-b1b89db20d94">

#### [ 약속장소 추천 (Meet) ]
<img height="611" src = "https://github.com/user-attachments/assets/96b7a306-87f1-4060-9273-6ec3f68bd876">
<img height="611" src = "https://github.com/user-attachments/assets/05f751bb-99ea-47c1-82ae-a1ff1d0cf2ac">
<img height="611" src = "https://github.com/user-attachments/assets/194a0eed-507b-4348-98d2-a1f720dd9354">

#### [ 마이페이지 (MyPage) ]
<img height="514" src = "https://github.com/user-attachments/assets/df9fcd5f-4cf9-4432-b227-dad365a2f806">
<img height="514" src = "https://github.com/user-attachments/assets/cab7a5a5-4c69-458c-a6fd-226f9e8f1a70">

## 🎥 ScreenShot & Video Recording Link
Android, iOS 에서 실행 시킨 앱의 스크린샷, 화면녹화영상 모음
> https://drive.google.com/drive/u/1/folders/1qLlPNuuw4dMfbkmMkWi9nFC710DYM37N

## Fine
24.10.04 테스트용 앱 배포 완료! 
<p float="left">
<img height="400" src = "https://github.com/user-attachments/assets/e7f4537b-cf69-409f-b111-89c0275d80cd">
<img width="500" src = "https://github.com/user-attachments/assets/9d474328-5764-4b5c-87ac-6977f4e6dc3d">
</p>
24.10.08 회식 ~!

<p float="left">
<img height="400" src = "https://github.com/user-attachments/assets/bc36cd45-f624-488e-b907-1390362a4218">
</p>
