<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h2>스프링 MVC 시작하기</h2>
	<!--
	Spring MVC에서는 이미지와 같은 리소스를 사용하기 위해 별도로 resources폴더를 제공한다. 해당 폴더의 설정은 servlet-context.xml에서 한다.
	-->
	<h3>resources 폴더 사용하기</h3>
	<!-- 최초 설정으로 이미지 사용하기 -->
	<img src="./resources/4.png" alt="강아지" />
	<!-- <resources 엘리먼트의 mapping부분을 수정한후 이미지 사용하기 -->
	<img src="./images/4.png" alt="강아지" />
	<!--
	리소스 사용을 위한 resources폴더의 기본 매핑명은  resources이지만 엘리먼트 추가로 별칭을 변경하거나 추가할 수 있다.
	<resources mapping="/images/**" location="/resources/" /> 이와 같이 해당 폴더에 images라는 별칭을 부여함.
	-->
	<h3>첫번째 컨트롤러 만들기</h3>
	<!-- 1. 요청명을 결정한다. -->
	<ul>
		<li>
			<a href="./home/helloSpring" target="_blank"> 첫 번째 컨트롤러 바로가기 </a>
		</li>
	</ul>

	<!-- 컨트롤러 : FormController.java -->
	<h3>form값 처리하기</h3>
	<ul>
		<li>
			<a href="./form/servletRequest?id=kosmo&pw=1234" target="_blank"> HttpServletRequest로 폼값받기 </a>
		</li>
		<li>
			<a href="./form/requestParam.do?id=kosmo&pw=1234&name=이준승&email=dlwnstmd@gmail.com" target="_blank"> @requestParam 어노테이션으로 폼값받기 </a>
		</li>
		<li>
			<a href="./form/commandObjGet.do?id=kosmo&pw=1234&name=이준승&email=dlwnstmd@gmail.com" target="_blank"> 커맨드(Command)객체로 한번에 폼값받기 </a>
		</li>
		<li>
			<a href="./form/junseunglee/코스모" target="_blank"> pathVariable 어노테이션으로 폼값받기 </a>
		</li>
	</ul>
	<!-- 컨트롤러 : RequestMappingController.java -->
	<h3>@RequestMapping 어노테이션 활용</h3>
	<ul>
		<li>
			<a href="./requestMapping/index.do" target="_blank"> requestMapping시작페이지 바로가기 </a>
		</li>
	</ul>

	<!-- 컨트롤러 : ValidateController.java -->
	<h2>폼 데이터 검증하기 - Validator</h2>
	<ul>
		<li>
			<a href="validate/memberRegist.do" target="_blank"> 회원가입 바로가기 </a>
		</li>
	</ul>

	<!--
		DI를 활용한 개발 순서
		1. 요청명을 결정한다.
			-> di/myClaculator
		2. 컨트롤러를 생성한 후 해당 요청명을 매핑한 메소드 정의
			->
				@RequestMapping("/di/myCalculator")
				public String 메소드명() {
					수행할 내용
				}
		3. View에 해당하는 jsp파일을 생성한다.
		4. 해당 프로그램에서 사용할 클래스 생성
			-> src/main/java 아래 패키지 생성 후 클래스를 추가함
		5. XML 설정파일을 생성한 후 <bean> 엘리먼트를 통해 빈 생성
			-> src/main/resources 하위에 Spring Bean Configuration File을 생성함
		6. View로 전달할 정보를 model객체에 저장한 후 호출
			-> String 혹은 modelAndView 객체를 사용함.
	-->
	<!-- 컨트롤러 : DIController.java -->
	<h3>DI(Dependency Injection) : 의존성 주입</h3>
	<ul>
		<li>
			<a href="di/myCalculator" target="_blank">간단한 사칙연산 계산기</a>
		</li>
		<li>
			<a href="di/myBMICal" target="_blank">BMI(비만지수) 계산기</a>
		</li>
		<li>
			<a href="di/myAvengers" target="_blank">어벤져스 히어로</a>
		</li>
		<li>
			<a href="di/myAnnotation" target="_blank">어노테이션을 이용한 DI활용 </a>
		</li>
	</ul>
	<!--
	Environment 객체를 이용한 외부파일 참조 절차
	1. 요청명을 결정한다.
		: environment/main
	2. 컨트롤러 생성 및 매핑
	3. /src/main/resources 폴더 하위에 properties 파일을 생성
	4. 컨트롤러에서 외부파일을 읽어서 프로그램에 적용
		4-1) 스프링 컨테이너 생성
		4-2) Environment객체 생성
		4-3) PropertySources 가져옴
		4-4) 외부파일을 가져와서 addList로 추가 후 내용 읽음
		4-5) 읽은 내용을 Model에 저장하거나 비즈니스 로직에 직접 사용함.
	-->
	<h3>Environment 객체를 이용한 외부파일 참조하기</h3>
	<ul>
		<li>
			<a href="environment/main1" target="_blank">외부파일 참조하기1(Environment객체 사용)</a>
		</li>
		<li>
			<a href="environment/main2" target="_blank">외부파일 참조하기2(XML설정파일 사용)</a>
		</li>
		<li>
			<a href="environment/main3" target="_blank">외부파일 참조하기3(어노테이션 사용)</a>
		</li>
	</ul>

	<!--
	파일업로드 & 다운로드 구현 절차
	1. pom.xml 의존 설정
		<dependency>
			<groupId>commons-io</groupId>
			<artifactId>commons-io</artifactId>
			<version>2.0.1</version>
		</dependency>
		<dependency>
			<groupId>commons-fileupload</groupId>
			<artifactId>commons-fileupload</artifactId>
			<version>1.2.2</version>
		</dependency>
	2. servlet-context.xml에 업로드 다운로드 관련 빈 생성
		<beans:bean id="multipartResolver" class="org.springframework.web.multipart.commons.CommonsMultipartResolver">
			<beans:property name="maxUploadSize" value="1000000"></beans:property>
		</beans:bean>
		<beans:bean id="fileDownloadView" class="common.FileDownloadView"></beans:bean>
		<beans:bean id="fileViewResolver" class="org.springframework.web.servlet.view.BeanNameViewResolver">
			<beans:property name="order" value="0"></beans:property>
		</beans:bean>
	3. 요청명에 따른 컨트롤러를 생성
		- 업로드 폼, 업로드 처리 등을 진행
		- 파일명 변경을 위해 UUID클래스를 통한 유니크한 문자열 생성
	4. 파일이외의 나머지 폼값을 확인하는 페이지 작성
	5. 파일 다운로드를 위해 빈을 생성할 때는 미리 common.FileDownloadView 클래스가 생성되어 있어야 한다.
		응답헤더와 스트림을 통해 파일을 다운로드 하기 위한 로직으로 구성된다.
	-->
	<h3>파일업로드</h3>
	<ul>
		<li>
			<a href="./fileUpload/uploadPath.do" target="_blanck">upload폴더의 물리적 경로 확인하기 </a>
		</li>
		<li>
			<a href="./fileUpload/uploadForm.do" target="_blank">파일업로드 폼 </a>
		</li>
		<li>
			<a href="./fileUpload/uploadList.do" target="_blank"> 파일목록보기 </a>
		</li>
	</ul>
</body>
</html>
