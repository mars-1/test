.class public Lcom/cnlaunch/x431pro/module/user/model/ExtParam;
.super Ljava/lang/Object;
.source "ExtParam.java"


# instance fields
.field private facebook:Ljava/lang/String;

.field private hobby:Ljava/lang/String;

.field private qq:Ljava/lang/String;

.field private twitter:Ljava/lang/String;

.field private weibo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFacebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getHobby()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->hobby:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getWeibo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->weibo:Ljava/lang/String;

    return-object v0
.end method

.method public setFacebook(Ljava/lang/String;)V
    .locals 0
    .parameter "facebook"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->facebook:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setHobby(Ljava/lang/String;)V
    .locals 0
    .parameter "hobby"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->hobby:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0
    .parameter "qq"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->qq:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 0
    .parameter "twitter"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->twitter:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setWeibo(Ljava/lang/String;)V
    .locals 0
    .parameter "weibo"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->weibo:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ExtInfo [qq="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->qq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", weibo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->weibo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", facebook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->facebook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", twitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->twitter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hobby="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->hobby:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
