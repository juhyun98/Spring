package kr.spring.entity;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class MemberUser extends User{
	// Spring Security에 Member객체를 담을 수 있게 해주는 클래스
	
	private Member member;
	
	public MemberUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		// MemberUser 객체 생성시 아이디, 비밀번호, 권한을 입력받는다
		// 
		super(username, password, authorities);
		
	}
	
	
	
}
