.class public Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "UserBaseInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x7c13c480548397bcL


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private identity_tag:Ljava/lang/String;

.field private is_bind_email:I

.field private is_bind_mobile:I

.field private mobile:Ljava/lang/String;

.field private nick_name:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private sex:I

.field private signature:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentity_tag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->identity_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_bind_email()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->is_bind_email:I

    return v0
.end method

.method public getIs_bind_mobile()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->is_bind_mobile:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->sex:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->city:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->country:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->email:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setIdentity_tag(Ljava/lang/String;)V
    .locals 0
    .parameter "identity_tag"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->identity_tag:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setIs_bind_email(I)V
    .locals 0
    .parameter "is_bind_email"

    .prologue
    .line 53
    iput p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->is_bind_email:I

    .line 54
    return-void
.end method

.method public setIs_bind_mobile(I)V
    .locals 0
    .parameter "is_bind_mobile"

    .prologue
    .line 37
    iput p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->is_bind_mobile:I

    .line 38
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->mobile:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0
    .parameter "nick_name"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->nick_name:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .parameter "province"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->province:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setSex(I)V
    .locals 0
    .parameter "sex"

    .prologue
    .line 69
    iput p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->sex:I

    .line 70
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->signature:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->url:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0
    .parameter "user_name"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->user_name:Ljava/lang/String;

    .line 126
    return-void
.end method
