package com.hb.sts04.guest.model;

import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class GuestDaoImp implements GuestDao {
    private SqlSession sqlSession;

    public void setSqlSession(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public List selectAll() {
        return sqlSession.selectList("guest.selectAll");
    }

    @Override
    public GuestVo selectOne(int sabun) {
        return null;
    }

    @Override
    public void insertOne(GuestVo bean) {

    }

    @Override
    public void updateOne(GuestVo bean) {

    }

    @Override
    public void deleteOne(int sabun) {

    }
}
