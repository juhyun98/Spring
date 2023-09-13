# Spring

- Spring 개요 필요

환경설치
1. Java 8버전
2. Eclipse IDE
3. MySQL 8 
4. Tomcat 8

이런것들을 하나로 모아서 설치해야하는데 하나로 다운받아서 세팅하는 방법이 있다
우리나라에서 사용하고 있는 전자정부프레임워크를 다운 받으면 위에 있는 4개를 다 설치할 수 있다
우리나라에서 제공하는 툴을 가지고 개발을 할 것이다

설치방법

구글에 전자정부프레임워크 검색
![image](https://github.com/juhyun98/Spring/assets/140494238/28412779-2992-4aa1-b170-094c86803013)



개발자 교육에 -> 교육자료 클릭
![image](https://github.com/juhyun98/Spring/assets/140494238/df6f57b0-b3eb-4007-930d-0600ec5737ee)



자신의 운영체제에 맞는 프로그램 다운로드
![image](https://github.com/juhyun98/Spring/assets/140494238/4854e0fe-8f40-4508-a632-74e002937a9f)


반드시 exe로 설치 후 C드라이브에 압축을 풀 수 있도록 한다
![image](https://github.com/juhyun98/Spring/assets/140494238/5d40cbb9-8f30-4bc3-bacf-f47903fc47fc)

실행했는데 PC 보호가 나온다면 추가정보를 클릭한 후 실행을 누르면 된다
![image](https://github.com/juhyun98/Spring/assets/140494238/924df8e6-19f1-42a5-b18e-7a6ed9257704)




반드시 C드라이브 위치에 압축을 풀어준다
![image](https://github.com/juhyun98/Spring/assets/140494238/fe1157bb-5ce4-470b-9f35-710cbab38885)


설치가 완료되면 C드라이브에 eGovFrame-4.0.0폴더가 생긴것을 확인할 수 있다
![image](https://github.com/juhyun98/Spring/assets/140494238/a14beaf0-f4b9-46a1-abce-5153dccece0e)





폴더를 들어가면 아래와 같이 구조가 되어있다


![image](https://github.com/juhyun98/Spring/assets/140494238/dcece758-cc72-414f-862a-043d8c6188fb)




bin 폴더 안에 들어가면


![image](https://github.com/juhyun98/Spring/assets/140494238/93d2a847-6ab9-4fb4-9940-9d819065e9b9)





필요한 언어 및 프로그램들이 있는 것을 확인 할 수 있다.

![image](https://github.com/juhyun98/Spring/assets/140494238/65eab37c-83f1-4739-9a8e-4215dd1ee033)



다시 돌아와서 eclipse.edu를 클릭하면 이클립스를 실행할 수 있다
![image](https://github.com/juhyun98/Spring/assets/140494238/98d9bbd3-e322-46c8-b36b-639285ab560c)





이클립스 실행 후 안에있는 내용을 다 지워준다

![image](https://github.com/juhyun98/Spring/assets/140494238/adba52c5-4598-4245-b5b2-b50421ce3ae9)




workspace.edu폴더는 workspace로 만든 프로젝트가 저장이 된다 (http://workspace.xn--edu-f42m53a054l/)




프로젝트 만들기


![image](https://github.com/juhyun98/Spring/assets/140494238/9a53f016-aa2f-4522-9912-79aab7644f6c)


마우스 오른쪽 누르고 프로젝트 클릭

![image](https://github.com/juhyun98/Spring/assets/140494238/0b0f50b4-28d4-47a9-bb3c-d19cf3fe6e9b)


그다음 Spring Legacy Project 클릭

![image](https://github.com/juhyun98/Spring/assets/140494238/ea27be82-bdd6-48d9-9f30-39ea87480726)




그다음 프로젝트 명과 해당 Templates 선택을 한다

![image](https://github.com/juhyun98/Spring/assets/140494238/bbda719e-228f-4a99-8d53-2478dfe144cd)



패키지를 3단계로 걸쳐서 입력

마지막 경로는 Web Project 접근하는 Context Path로 tomcat서버에 등록이 된다

Servet Tomcat의 포트번호도 겹치지 않게 변경해준다

![image](https://github.com/juhyun98/Spring/assets/140494238/8a2d7790-3ed9-4360-b3b4-04d40270e6e3)



그다음 만든 프로젝트를 서버에 등록을 해줘야한다

![image](https://github.com/juhyun98/Spring/assets/140494238/a7c2eac8-453c-4aec-bb6e-0bc4e42c9b2c)


![image](https://github.com/juhyun98/Spring/assets/140494238/b1e2dadc-550b-4c73-9c70-3943ac5fcecd)




이렇게 등록된 것을 확인 가능하다 server.xml이나 우측에 edit를 통해 context Path를 변경할 수 있다


![image](https://github.com/juhyun98/Spring/assets/140494238/15c4d1a3-1711-41f2-85a4-545b2b1499e8)




properties에서도 변경이 가능하다 context Path경로를



테스트로 실행해보기

![image](https://github.com/juhyun98/Spring/assets/140494238/87f62f36-d6d5-4e0a-a3d5-428fff93d876)


프로젝트 오른쪽 클릭마우스 클릭후 Run As RunonServer 후 서버 선택 후 실행

![image](https://github.com/juhyun98/Spring/assets/140494238/f92edf2d-f45c-454f-ab97-e5c02ecf312a)



이렇게 나오면 테스트 끝이난다



Project 환경설정

Spring 버전 바꾸기

![image](https://github.com/juhyun98/Spring/assets/140494238/22b4ae36-ce48-493e-99d9-cca937e69e08)





JDK 버전 바꿔주기

![image](https://github.com/juhyun98/Spring/assets/140494238/c74f8e90-ef83-4ff8-aa16-5273f4a5c972)


1.8버전으로 바꿔준


![image](https://github.com/juhyun98/Spring/assets/140494238/e111d5ff-6715-4958-8975-e18ef55996cb)


그다음 프로젝트 클릭후 알트 + f5를 눌러서 프로젝트를 업데이트 해준다

Github 연동하기



기트허브 사이트 로그인




우측 상단에 새로운 repository 만들기




이름을 지어주고 만들기 버튼 클릭



만들어진 서버의 주소를 복사한다




이클립스의 퍼스펙티브를 git으로 번경




클론을 눌러 깃 레파지토리 안에 있는걸 복제한다


복사한 주소를 넣고 계정과 비밀번호를 입력한다 그 다음 Next -> finish

그럼 내 컴퓨터에 레파지토리 저장소가 생김

그럼 우리 웹 프로젝트를 git에 올려야함





프로젝트 마우스 오른쪽 클릭 -> Team -> share Project 선택




Git를 선택한다음



그다음 레파지토리 클릭 후 아까 만든 위치를 잡아준다



인덱스 표기도 추가해준다

이제 우리가 만든 기트허브 서버에 프로젝트를 올릴 것이다



커밋을 하면 우리 프로젝트를 서버에 올린다는 것이다



내용을 입력하고

커밋 푸쉬를 누른다




계정과 비밀번호를 입력하라고 하는 데 비밀번호는 계정 비밀번호가 아니라 기트 비밀번호이다





세팅으로 들어와서 토큰을 만들어준다



그럼 푸쉬를 눌러준다



그러면 기트에 내 프로젝트가 올라와서 언제든지 활용이 가능하다

