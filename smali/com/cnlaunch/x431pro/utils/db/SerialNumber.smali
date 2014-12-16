.class public Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
.super Ljava/lang/Object;
.source "SerialNumber.java"


# instance fields
.field private cc:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isDefault:Ljava/lang/Boolean;

.field private isMine:Ljava/lang/Boolean;

.field private serialNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->id:Ljava/lang/Long;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "isMine"
    .parameter "isDefault"
    .parameter "serialNo"
    .parameter "cc"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->id:Ljava/lang/Long;

    .line 26
    iput-object p2, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->isMine:Ljava/lang/Boolean;

    .line 27
    iput-object p3, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->isDefault:Ljava/lang/Boolean;

    .line 28
    iput-object p4, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->serialNo:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->cc:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getCc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsDefault()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->isDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsMine()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->isMine:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method public setCc(Ljava/lang/String;)V
    .locals 0
    .parameter "cc"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->cc:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->id:Ljava/lang/Long;

    .line 38
    return-void
.end method

.method public setIsDefault(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isDefault"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->isDefault:Ljava/lang/Boolean;

    .line 54
    return-void
.end method

.method public setIsMine(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isMine"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->isMine:Ljava/lang/Boolean;

    .line 46
    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0
    .parameter "serialNo"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->serialNo:Ljava/lang/String;

    .line 64
    return-void
.end method
