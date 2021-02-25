package com.cqnu.dj.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TbTkUser {
    private int userId;
    private String userPhone;
    private String userCid;
    private String userSid;
    private String userName;
    private String userPwd;
    private int trainerId;
    private int trainerTime;
    private boolean isPass;
    private boolean isAtt;
    private boolean isAllin;
    private boolean isCourse;
    private int dshipId;
    private int userSex;
    private String userPic;
    private int userMm;
}
