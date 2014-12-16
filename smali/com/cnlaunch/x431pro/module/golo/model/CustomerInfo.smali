.class public abstract Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "CustomerInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x666eadd966711ac5L


# instance fields
.field private isExtend:Z

.field private isRead:Ljava/lang/Boolean;

.field private lastTime:Ljava/lang/String;

.field private newMsgCount:I

.field private nick_name:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private sortKey:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isExtend:Z

    .line 7
    return-void
.end method

.method public static isNotNull(Ljava/lang/String;)Z
    .locals 1
    .parameter "txt"

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIsRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNewMsgCount()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->newMsgCount:I

    return v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public isExtend()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isExtend:Z

    return v0
.end method

.method public setExtend(Z)V
    .locals 0
    .parameter "isExtend"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isExtend:Z

    .line 38
    return-void
.end method

.method public setIsRead(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isRead"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isRead:Ljava/lang/Boolean;

    .line 87
    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastTime"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->lastTime:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setNewMsgCount(I)V
    .locals 0
    .parameter "newMsgCount"

    .prologue
    .line 80
    iput p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->newMsgCount:I

    .line 81
    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0
    .parameter "nick_name"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->nick_name:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->signature:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0
    .parameter "sortKey"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->sortKey:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->status:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->user_id:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0
    .parameter "user_name"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->user_name:Ljava/lang/String;

    .line 63
    return-void
.end method
