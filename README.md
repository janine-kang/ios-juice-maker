# 음료 구매 키오스크 앱
---
<img width="1418" alt="스크린샷 2023-09-22 오후 2 10 39" src="https://github.com/janine-kang/ios-juice-maker/assets/142188004/3c764792-3614-48d8-b104-293461a959de">

---
### Table of Content

> **OverView**
> - 결과물
> - 프로젝트 참여자
> - 프로젝트 기간
>
> **프로젝트 구현**
> - 프로젝트 설계
> - 사용 기술/구성
> - 태스크 매니지먼트
> - 프로젝트 파일 구조
> - 구현 기능
>
> **습득 지식**
> 

## OverView

### 결과물

![play1](https://github.com/janine-kang/ios-juice-maker/assets/142188004/df9c2eb1-4821-4e54-a079-24f522da19f3)


### 프로젝트 참여자

| <img src="https://avatars.githubusercontent.com/u/76927263?v=4" width="90" height="90"> | <img src="https://avatars.githubusercontent.com/u/142188004?v=4" width="90" height="90"> |
| ----------- | --------- |
| [@janine-kang](https://github.com/janine-kang) | [@SimJaeHyeok](https://github.com/SimJaeHyeok) |
| Janine🐠 | JaeHyeok🦊 |

### 프로젝트 기간

> 2023.09.11 ~ 2023.09.22 (2 weeks)

## 프로젝트 구현

### 프로젝트 설계
- 디자인 패턴: `MVC`
 ![관계도](https://github.com/janine-kang/ios-juice-maker/assets/142188004/15634657-2b7b-4f25-8f83-763dfdf39a02)

### 사용 기술/구성

- Clean Architecture
- UIKit framework
- Storyboard
- Swift
- Git-flow 기반 협업

### 태스크 매니지먼트

- Notion

### 프로젝트 파일 구조

```JuiceMaker
   ├── Controller
   │   ├── AppDelegate.swift
   │   ├── DashboardViewController.swift
   │   ├── JuiceMaker.swift
   │   ├── SceneDelegate.swift
   │   └── ViewController.swift
   ├── Model
   │   ├── Fruit.swift
   │   ├── FruitStore.swift
   │   ├── JuiceMaker.swift
   │   ├── Menu.swift
   │   └── OrderError.swift
   └── View
       ├── Assets.xcassets
       └── Base.lproj
           ├── LaunchScreen.storyboard
           └── Main.storyboard
```
### 구현 기능

- 메인 화면
  <br> <img width="639" alt="메인화면" src="https://github.com/janine-kang/ios-juice-maker/assets/142188004/d2b6b410-7202-4597-9068-1b48b2bcd8d3">

- 쥬스 주문 기능
  <br> ![주스주문버튼탭](https://github.com/janine-kang/ios-juice-maker/assets/142188004/ba6b69da-42dc-46bf-920a-1962da98e1ef)

- 재고 부족 시 이동
  <br> ![재고부족시창고로](https://github.com/janine-kang/ios-juice-maker/assets/142188004/9e67c4aa-578d-4427-8332-4a1b83693f67)

- 재고 수정 버튼 클릭 시 이동
  <br> ![재고수정버튼클릭시이동](https://github.com/janine-kang/ios-juice-maker/assets/142188004/a1a93ac1-ee57-460a-8503-ec92afbd68f0)

- 재고 수정 기능(stepper 사용)
  <br> ![재고수정기능](https://github.com/janine-kang/ios-juice-maker/assets/142188004/8757d224-d7c9-4857-ad0d-98871d4385bb)

- 모달창 닫기 기능 + 재고 현황 연동
  <br> ![모달창닫을시재고연동](https://github.com/janine-kang/ios-juice-maker/assets/142188004/fe54c5d6-ac47-411a-9712-0ee04727925e)


## 습득 지식

`화면전환 방법` `MVC` `Delegate Pattern` `Storyboard` `Singleton`
