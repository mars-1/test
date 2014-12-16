.class public Lcom/cnlaunch/diagnosemodule/bean/BasicMenuListBean;
.super Lcom/cnlaunch/diagnosemodule/bean/BasicBean;
.source "BasicMenuListBean.java"


# instance fields
.field check_type:Ljava/lang/String;

.field id:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCheck()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuListBean;->check_type:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuListBean;->id:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setIsCheck(Ljava/lang/String;)V
    .locals 0
    .parameter "isCheck"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuListBean;->check_type:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuListBean;->title:Ljava/lang/String;

    .line 23
    return-void
.end method
