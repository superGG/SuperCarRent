    drop database if exists supercarrent;
   
    create database supercarrent;
   
   	/*新添加*/
    drop table if exists t_carinfo;
    drop table if exists t_menuitem;
  	/*新添加*/
    drop table if exists t_orderdetail;
   	/*新添加*/
    drop table if exists t_orders;
    drop table if exists t_permission;
    drop table if exists t_role;
    drop table if exists t_rolemenuitemmap;
    drop table if exists t_rolepermissionmap;
   	/*新添加*/
    drop table if exists t_server;
   	/*新添加*/
    drop table if exists t_tmporders;
    drop table if exists t_user;
    drop table if exists t_userrolemap;
    
        create table t_carinfo (
        /*车辆信息的id*/
        CarInfoId bigint not null auto_increment,
        /*车辆品牌*/
        CarBrand varchar(255),
        /*车辆名字*/
        CarInfoName varchar(255),
        /*车辆状态*/
        CarState integer,
        /*车辆类型（三厢）*/
        CarType varchar(255),
        /**/
        CreateTime datetime,
        /**/
        CreatorId bigint,
        /**/
        EditeTime datetime,
        /**/
        EditorId bigint,
        /**/
        IsDelete bit,
        /**/
        Version bigint,
        primary key (CarInfoId)
    ) ENGINE=InnoDB;
    
    create table t_menuitem (
        /**/
        MenuItemId bigint not null auto_increment,
        /**/
        CreateTime datetime,
        /**/
        CreatorId bigint,
        /**/
        EditeTime datetime,
        /**/
        EditorId bigint,
        /**/
        IsDelete bit,
        /**/
        IsLockUp bit,
        /**/
        MenuItemCtrl varchar(255),
        /**/
        MenuItemIcon varchar(255),
        /**/
        MenuItemName varchar(255),
        /**/
        MenuItemOrder bigint,
        /**/
        MenuItemParentId bigint,
        /**/
        MenuItemRouteUrl varchar(255),
        /**/
        MenuItemUrl varchar(255),
        /**/
        MenuName varchar(255),
        /**/
        Version bigint,
        primary key (MenuItemId)
    ) ENGINE=InnoDB;
    
     create table t_orderdetail (
        /*订单详情id*/
        OrderDatailId bigint not null auto_increment,
        /**/
        CreateTime datetime,
        /**/
        CreatorId bigint,
        /**/
        EditeTime datetime,
        /**/
        EditorId bigint,
        /*外键id*/
        foreignId bigint,
        /*外键类型（标志外键id是carid还是ordersid）*/
        foreignIdtype varchar(255),
        /**/
        IsDelete bit,
        /*标志该订单明细是否是必须的，对于车辆来说*/
        necessary bit,
        /*服务id*/
        ServerId bigint,
        /*服务名称*/
        ServerName varchar(255),
        /*服务费用*/
        servercost integer,
        /*服务单位（天，次）*/
        servercounttype varchar(255),
        /*服务的描述*/
        serverdescribe varchar(255),
        /*服务数量*/
        ServerNum integer,
        /**/
        Version bigint,
        primary key (OrderDatailId)
    ) ENGINE=InnoDB;
    
     create table t_orders (
     	/*订单id*/
        OrdersId bigint not null auto_increment,
     	/*还车时间*/
        BackCarTime datetime,
     	/*车品牌*/
        CarBrand varchar(255),
     	/*车辆id*/
        CarInfoId bigint,
     	/*车名字*/
        CarInfoName varchar(255),
     	/*车辆的类型*/
        CarType varchar(255),
     	/**/
        CreateTime datetime,
     	/**/
        CreatorId bigint,
        /**/
        EditeTime datetime,
     	/**/
        EditorId bigint,
     	/*取车时间*/
        GetCarTime datetime,
     	/**/
        IsDelete bit,
     	/**/
        OrderState integer,
     	/*订单总费用*/
        TotalCost bigint,
     	/*使用时长*/
        UsedTime integer,
     	/*用户id*/
        UserId bigint,
     	/**/
        Version bigint,
        primary key (OrdersId)
    ) ENGINE=InnoDB;
    
     create table t_permission (
     	/**/
        PermissionId bigint not null auto_increment,
     	/**/
        CreateTime datetime,
     	/**/
        CreatorId bigint,
     	/**/
        EditeTime datetime,
     	/**/
        EditorId bigint,
     	/**/
        IsDelete bit,
     	/**/
        IsLockUp bit,
     	/**/
        PermissionName varchar(255),
     	/**/
        Version bigint,
        primary key (PermissionId)
    ) ENGINE=InnoDB;
    
    create table t_role (
    	/**/
        RoleId bigint not null auto_increment,
     	/**/
        CreateTime datetime,
     	/**/
        CreatorId bigint,
     	/**/
        EditeTime datetime,
     	/**/
        EditorId bigint,
     	/**/
        IsDelete bit,
     	/**/
        IsLockUp bit,
     	/**/
        RoleName varchar(255),
     	/**/
        Version bigint,
        primary key (RoleId)
    ) ENGINE=InnoDB;
    
     create table t_rolemenuitemmap (
        RoleMenuItemMapId bigint not null auto_increment,
     	/**/
        CreateTime datetime,
     	/**/
        CreatorId bigint,
     	/**/
        EditeTime datetime,
     	/**/
        EditorId bigint,
     	/**/
        IsDelete bit,
     	/**/
        IsLockUp bit,
     	/**/
        menuItemId bigint,
     	/**/
        RoleId bigint,
     	/**/
        Version bigint,
        primary key (RoleMenuItemMapId)
    ) ENGINE=InnoDB;
    
     create table t_rolepermissionmap (
     	/**/
        RolePermissionMapId bigint not null auto_increment,
     	/**/
        CreateTime datetime,
     	/**/
        CreatorId bigint,
     	/**/
        EditeTime datetime,
     	/**/
        EditorId bigint,
     	/**/
        IsDelete bit,
     	/**/
        IsLockUp bit,
     	/**/
        PermissionId bigint,
     	/**/
        RoleId bigint,
     	/**/
        Version bigint,
        primary key (RolePermissionMapId)
    ) ENGINE=InnoDB;
    
     create table t_server (
     	/*服务id*/
        ServerId bigint not null auto_increment,
     	/**/
        CreateTime datetime,
     	/**/
        CreatorId bigint,
     	/**/
        EditeTime datetime,
     	/**/
        EditorId bigint,
     	/**/
        IsDelete bit,
     	/*服务名称*/
        ServerName varchar(255),
     	/*服务费用*/
        ServerCost integer,
     	/*服务描述*/
        ServerDescribe varchar(255),
     	/**/
        Version bigint,
        primary key (ServerId)
    ) ENGINE=InnoDB;
    
     create table t_tmporders (
     	/*tmp订单id*/
        TmpOrdersId bigint not null auto_increment,
     	/*还车时间*/
        BackCarTime datetime,
     	/*车辆品牌*/
        CarBrand varchar(255),
     	/*车辆id*/
        CarInfoId bigint,
     	/*车辆名字*/
        CarInfoName varchar(255),
     	/*车辆类型*/
        CarType varchar(255),
     	/**/
        CreateTime datetime,
     	/**/
        CreatorId bigint,
     	/**/
        EditeTime datetime,
     	/**/
        EditorId bigint,
     	/*取车时间*/
        GetCarTime datetime,
     	/**/
        IsDelete bit,
     	/*总费用*/
        TotalCost bigint,
     	/*使用时长*/
        UsedTime integer,
     	/*用户id*/
        UserId bigint,
     	/**/
        Version bigint,
     	/**/
        primary key (TmpOrdersId)
    ) ENGINE=InnoDB;
    
    create table t_user (
     	/**/
        UserId bigint not null auto_increment,
     	/**/
        CreateTime datetime,
     	/**/
        CreatorId bigint,
     	/**/
        EditeTime datetime,
     	/**/
        EditorId bigint,
     	/**/
        IsDelete bit,
     	/**/
        IsLockUp bit,
     	/**/
        LoginName varchar(255),
     	/**/
        Password varchar(255),
     	/**/
        Version bigint,
     	/**/
        primary key (UserId)
    ) ENGINE=InnoDB;
    
     create table t_userrolemap (
     	/**/
        UserRoleMapId bigint not null auto_increment,
     	/**/
        CreateTime datetime,
     	/**/
        CreatorId bigint,
     	/**/
        EditeTime datetime,
     	/**/
        EditorId bigint,
     	/**/
        IsDelete bit,
     	/**/
        IsLockUp bit,
     	/**/
        RoleId bigint,
     	/**/
        UserId bigint,
     	/**/
        Version bigint,
     	/**/
        primary key (UserRoleMapId)
    ) ENGINE=InnoDB;
