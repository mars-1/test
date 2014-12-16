.class public Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;
.super Ljava/lang/Object;
.source "ConfigInfo.java"


# instance fields
.field private id:Ljava/lang/Long;

.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->id:Ljava/lang/Long;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->id:Ljava/lang/Long;

    .line 24
    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->key:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->value:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->id:Ljava/lang/Long;

    .line 34
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->key:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->value:Ljava/lang/String;

    .line 54
    return-void
.end method
