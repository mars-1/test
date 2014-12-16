.class public Lcom/cnlaunch/x431pro/module/user/model/LoginData;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "LoginData.java"


# static fields
.field private static final serialVersionUID:J = 0xe65e97a513eaf15L


# instance fields
.field private token:Ljava/lang/String;

.field private user:Lcom/cnlaunch/x431pro/module/user/model/User;

.field private xmpp:Lcom/cnlaunch/x431pro/module/user/model/Xmpp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/cnlaunch/x431pro/module/user/model/User;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->user:Lcom/cnlaunch/x431pro/module/user/model/User;

    return-object v0
.end method

.method public getXmpp()Lcom/cnlaunch/x431pro/module/user/model/Xmpp;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->xmpp:Lcom/cnlaunch/x431pro/module/user/model/Xmpp;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->token:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setUser(Lcom/cnlaunch/x431pro/module/user/model/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->user:Lcom/cnlaunch/x431pro/module/user/model/User;

    .line 50
    return-void
.end method

.method public setXmpp(Lcom/cnlaunch/x431pro/module/user/model/Xmpp;)V
    .locals 0
    .parameter "xmpp"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->xmpp:Lcom/cnlaunch/x431pro/module/user/model/Xmpp;

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LoginData [xmpp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->xmpp:Lcom/cnlaunch/x431pro/module/user/model/Xmpp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->user:Lcom/cnlaunch/x431pro/module/user/model/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
