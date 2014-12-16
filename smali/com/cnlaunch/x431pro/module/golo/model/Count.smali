.class public Lcom/cnlaunch/x431pro/module/golo/model/Count;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "Count.java"


# static fields
.field private static final serialVersionUID:J = 0x4e783659d7507d72L


# instance fields
.field private serial_no:Ljava/lang/String;

.field private unread_size:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getSerial_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/Count;->serial_no:Ljava/lang/String;

    return-object v0
.end method

.method public getUnread_size()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/Count;->unread_size:Ljava/lang/String;

    return-object v0
.end method

.method public setSerial_no(Ljava/lang/String;)V
    .locals 0
    .parameter "serial_no"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/Count;->serial_no:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setUnread_size(Ljava/lang/String;)V
    .locals 0
    .parameter "unread_size"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/Count;->unread_size:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Count [serial_no="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/Count;->serial_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unread_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/Count;->unread_size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
