.class public Lcom/cnlaunch/golo3/dto/ContactUserInfo;
.super Ljava/lang/Object;
.source "ContactUserInfo.java"


# instance fields
.field private face_path:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private remarkname:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFace_path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ContactUserInfo;->face_path:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ContactUserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRemarkname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ContactUserInfo;->remarkname:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ContactUserInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ContactUserInfo;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setFace_path(Ljava/lang/String;)V
    .locals 0
    .parameter "face_path"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ContactUserInfo;->face_path:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ContactUserInfo;->nickname:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setRemarkname(Ljava/lang/String;)V
    .locals 0
    .parameter "remarkname"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ContactUserInfo;->remarkname:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ContactUserInfo;->signature:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ContactUserInfo;->user_id:Ljava/lang/String;

    .line 24
    return-void
.end method
