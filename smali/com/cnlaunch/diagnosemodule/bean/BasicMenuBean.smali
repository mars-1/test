.class public Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;
.super Lcom/cnlaunch/diagnosemodule/bean/BasicBean;
.source "BasicMenuBean.java"


# instance fields
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
    .line 9
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;->id:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;->title:Ljava/lang/String;

    .line 22
    return-void
.end method
