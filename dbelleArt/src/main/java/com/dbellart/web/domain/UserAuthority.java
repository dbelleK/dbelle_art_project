package com.dbellart.web.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.security.core.GrantedAuthority;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
public class UserAuthority extends BaseTimeEntity implements GrantedAuthority {

    @Id
    private Long userId;

    @Id
    private String authority;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}


    
}