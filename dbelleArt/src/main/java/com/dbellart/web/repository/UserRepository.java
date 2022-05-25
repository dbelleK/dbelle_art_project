//package com.dbellart.web.repository;
//
//
//import org.apache.ibatis.annotations.Mapper;
//import org.apache.ibatis.annotations.Param;
//import org.apache.ibatis.annotations.Select;
//
//import com.dbellart.web.domain.Member;
//import com.dbellart.web.domain.UserAuthority;
//
//import java.util.List;
//import java.util.Map;
//import java.util.Optional;
//
//@Mapper
//public interface UserRepository {
//	
//    public void signupUser(Member users);
//    
//    public void insert_authority(UserAuthority userAuthority);
//    
//    public int emailCount(String email);
//
//
//    @Select("SELECT * FROM dbelle.authoriy where email = #{email}")
//    Optional<Member> findByEmail(@Param("email") String email);
//
//    @Select("SELECT * FROM dbelle.authoriy where user_id = #{id}")
//    List<UserAuthority> findAuthorityById(@Param("id") Long id);
//
//    @Select("SELECT R.*, U.name FROM moca_client.REVIEW as R join USER U on R.user_id = U.id where R.open_view = 1 order by rand() limit 6")
//    List<Map<String, Object>> getReviews();
//}
