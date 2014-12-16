.class public Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "PidBytData.java"


# static fields
.field private static final serialVersionUID:J = 0x38f646ff0b0c32bfL


# instance fields
.field private pub_id:Ljava/lang/String;

.field private pub_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getPub_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->pub_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPub_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->pub_name:Ljava/lang/String;

    return-object v0
.end method

.method public setPub_id(Ljava/lang/String;)V
    .locals 0
    .parameter "pub_id"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->pub_id:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPub_name(Ljava/lang/String;)V
    .locals 0
    .parameter "pub_name"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->pub_name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PidBytData [pub_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pub_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->pub_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
