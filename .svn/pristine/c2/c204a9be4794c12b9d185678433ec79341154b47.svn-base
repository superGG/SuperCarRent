/**
 * Copyright (c) 2014 Wteamfly.  All rights reserved. 网飞公司 版权所有.
 * 请勿修改或删除版权声明及文件头部.
 */
package com.wteamfly.superW.entity.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Version;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.Type;

/**
 * 用户持久层类.
 * 
 * @author 侯骏雄
 * @since 3.0.0
 */
@Entity
@Table(name = "t_user")
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
@DynamicInsert
@DynamicUpdate
public class UserPo extends SuperPersistentObject {
    
    /**
     * 用户编号.
     */
    private Long userId;

    /**
     * 登录名称.
     */
    private String loginName;

    /**
     * 密码.
     */
    private String password;

    /**
     * 创建时间.
     */
    private Date createTime;

    /**
     * 创建者编号.
     */
    private Long creatorId;

    /**
     * 修改时间.
     */
    private Date editeTime;

    /**
     * 修改者编号.
     */
    private Long editorId;

    /**
     * 是否删除.
     */
    private Boolean isDelete;

    /**
     * 是否冻结.
     */
    private Boolean isLockUp;

    /**
     * 版本.
     */
    private Long version;

    /**
     * @return 获取的userId
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "UserId")
    public final Long getUserId() {
        return userId;
    }

    /**
     * 设置userId的方法.
     * 
     * @param userId
     *            赋值给userId的值
     */
    public final void setUserId(final Long userId) {
        this.userId = userId;
    }

    /**
     * @return 获取的loginName
     */
    @Type(type = "string")
    @Column(name = "LoginName")
    public final String getLoginName() {
        return loginName;
    }

    /**
     * 设置loginName的方法.
     * 
     * @param loginName
     *            赋值给loginName的值
     */
    public final void setLoginName(final String loginName) {
        this.loginName = loginName;
    }

    /**
     * @return 获取的password
     */
    @Type(type = "string")
    @Column(name = "Password")
    public final String getPassword() {
        return password;
    }

    /**
     * 设置password的方法.
     * 
     * @param password
     *            赋值给password的值
     */
    public final void setPassword(final String password) {
        this.password = password;
    }

    /**
     * @return 获取的createTime
     */
    @Temporal(value = TemporalType.TIMESTAMP)
    @Column(name = "CreateTime")
    public final Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置createTime的方法.
     * 
     * @param createTime
     *            赋值给createTime的值
     */
    public final void setCreateTime(final Date createTime) {
        this.createTime = createTime;
    }

    /**
     * @return 获取的creatorId
     */
    @Type(type = "long")
    @Column(name = "CreatorId")
    public final Long getCreatorId() {
        return creatorId;
    }

    /**
     * 设置creatorId的方法.
     * 
     * @param creatorId
     *            赋值给creatorId的值
     */
    public final void setCreatorId(final Long creatorId) {
        this.creatorId = creatorId;
    }

    /**
     * @return 获取的editeTime
     */
    @Temporal(value = TemporalType.TIMESTAMP)
    @Column(name = "EditeTime")
    public final Date getEditeTime() {
        return editeTime;
    }

    /**
     * 设置editeTime的方法.
     * 
     * @param editeTime
     *            赋值给editeTime的值
     */
    public final void setEditeTime(final Date editeTime) {
        this.editeTime = editeTime;
    }

    /**
     * @return 获取的editorId
     */
    @Type(type = "long")
    @Column(name = "EditorId")
    public final Long getEditorId() {
        return editorId;
    }

    /**
     * 设置editorId的方法.
     * 
     * @param editorId
     *            赋值给editorId的值
     */
    public final void setEditorId(final Long editorId) {
        this.editorId = editorId;
    }

    /**
     * @return 获取的isDelete
     */
    @Type(type = "boolean")
    @Column(name = "IsDelete")
    public final Boolean getIsDelete() {
        return isDelete;
    }

    /**
     * 设置isDelete的方法.
     * 
     * @param isDelete
     *            赋值给isDelete的值
     */
    public final void setIsDelete(final Boolean isDelete) {
        this.isDelete = isDelete;
    }

    /**
     * @return 获取的isLockUp
     */
    @Type(type = "boolean")
    @Column(name = "IsLockUp")
    public final Boolean getIsLockUp() {
        return isLockUp;
    }

    /**
     * 设置isLockUp的方法.
     * 
     * @param isLockUp
     *            赋值给isLockUp的值
     */
    public final void setIsLockUp(final Boolean isLockUp) {
        this.isLockUp = isLockUp;
    }

    /**
     * @return 获取的version
     */
    @Version
    @Type(type = "long")
    @Column(name = "Version")
    public final Long getVersion() {
        return version;
    }

    /**
     * 设置version的方法.
     * 
     * @param version
     *            赋值给version的值
     */
    public final void setVersion(final Long version) {
        this.version = version;
    }

}
