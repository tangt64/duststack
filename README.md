# Ansible Playbook: duststack

## 알려드려요!

- **placement**에 사소한 버그가 있습니다. 플레이북 문제가 아니라 placement가 이전 정보를 테이블에 저장하고 있습니다.

엔서블 기반으로 오픈스택/컨테이너/스토리지 클러스터를 구축하는 플레이북 입니다. 아직 공식버전이 아닙니다. 아직도 계속 **개발/테스트/분리**가 진행이 되고 있습니다. 

현재 사용중인 오프스택 버전은 **rocky**기반으로 구성이 되어 있습니다.

## 자주받는 질문

##### 왜 플레이북이 자주 업데이트가 되지 않나요?
> 강의하고 있어서.... 집에와서 시간 남을때 작성중 입니다. 늦어도 이해를..

##### 오픈스택 엔서블이 있는데 왜 만드시나요?
> .....

##### 오픈스택 이외 다른 role로 추가가 계속 되나요?
> 네, 지금은 centos만 지원하고 있지만, 조만간 debian도 같이 지원합니다. 

##### 쿠버네티스는 왜 만드시나요?
> 오픈스택하고 통합 목적으로 만들고 있습니다.

##### 대시보드는 언제 공개하나요?
> 죄송합니다. 역시 시간이 조금 더 걸릴 듯 합니다.


## Overview
오픈스택/컨테이너/스토리지를 엔서블 기반으로 구축. 주요 목적은 인프라에서 제일 많이 사용하는 소프트웨어 설치를 엔서블로 설치/구성/배포/갱신을 엔서블 기반으로 하는게 주요 목적입니다.

## Specification

* CPU: 8cores 최소 권장.
* Memory: 16기가 최소 권장.
* Disk: 100GiB HHD 혹은 SSD 디스크 최소 권장. 
* NIC: 최소 1GiB이상 혹은 본딩으로 3GiB권장. 가능하시면 10GiB권장.

이 플레이북은 가상머신 기반으로 구축이 가능하며, 최소 한개 가상머신 혹은 물리적인 장비를 요구 합니다.

## 설치방법 

```bash
# yum install ansible git -y
# yum group install "Virtualization Host" -y
# git clone http://git.howtodothat.kr/tang/duststack
# ansible-playbook -i inventory/openstack playbooks/openstack.yaml
```

- **"group_vars"**의 파일을 꼭 수정하셔야 됩니다. 조만간 수정 방법은 정리해서 올리도록 하겠습니다.

- 설치전에 꼭 **inventory/openstack**파일에서 서버의 아이피 주소를 꼭 변경해야 합니다.

## 문의사항

아래 메일로 보내주시면 감사하겠습니다.

**이메일:** <gochoi@redhat.com>

**이름:** 최국현(Choi Gook Hyun)


## License
MIT 라이센스 입니다. 플레이북은 마음대로 사용하셔도 됩니다. 
[MIT](LICENSE)
