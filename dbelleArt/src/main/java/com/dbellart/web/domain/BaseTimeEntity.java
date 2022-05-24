package com.dbellart.web.domain;

import lombok.Getter;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.time.LocalDateTime;

@Getter
public abstract class BaseTimeEntity {

    // Entity�� �����Ǿ� ����� �� �ð��� �ڵ� ����˴ϴ�.
    @CreatedDate
    private LocalDateTime createdDate;

    // ��ȸ�� Entity ���� ������ �� �ð��� �ڵ� ����˴ϴ�.
    @LastModifiedDate
    private LocalDateTime modifiedDate;

}