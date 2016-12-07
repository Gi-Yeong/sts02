package com.hb.sts05.model;

import java.util.List;

public interface GuestDao {

    List selectAll();
    GuestVo selectOne(int sabun);
    void updateOne(GuestVo bean);
    void insertOne(GuestVo bean);
    void deleteOne(int sabun);
}
