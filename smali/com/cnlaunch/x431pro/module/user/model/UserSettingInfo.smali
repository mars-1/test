.class public Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "UserSettingInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x65ebf1de07196013L


# instance fields
.field private nickname:Ljava/lang/String;

.field private sex:I

.field private signature:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->tag:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->signature:Ljava/lang/String;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->sex:I

    .line 21
    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->nickname:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->sex:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->nickname:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setSex(I)V
    .locals 0
    .parameter "sex"

    .prologue
    .line 71
    iput p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->sex:I

    .line 72
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->signature:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->tag:Ljava/lang/String;

    .line 89
    return-void
.end method
