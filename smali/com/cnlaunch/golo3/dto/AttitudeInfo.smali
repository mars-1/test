.class public Lcom/cnlaunch/golo3/dto/AttitudeInfo;
.super Ljava/lang/Object;
.source "AttitudeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1da9919ec5c646efL


# instance fields
.field private faceUrl:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private shareId:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/AttitudeInfo;->faceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/AttitudeInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/AttitudeInfo;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/AttitudeInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/AttitudeInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setFaceUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "faceUrl"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/AttitudeInfo;->faceUrl:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/AttitudeInfo;->filePath:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0
    .parameter "shareId"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/AttitudeInfo;->shareId:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/AttitudeInfo;->type:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/AttitudeInfo;->uid:Ljava/lang/String;

    .line 44
    return-void
.end method
