.class public Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
.super Ljava/lang/Object;
.source "GoloRemoteRepairTitle.java"


# static fields
.field public static final TYPE_REMOTE:I = 0x1

.field public static final TYPE_REPAIR:I = 0x2


# instance fields
.field private content:Ljava/lang/String;

.field private status:Z

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->status:Z

    .line 3
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->type:I

    return v0
.end method

.method public isStatus()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->status:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->content:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->status:Z

    .line 27
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 20
    iput p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->type:I

    .line 21
    return-void
.end method
