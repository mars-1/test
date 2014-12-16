.class public Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "LocationInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x377a9c7a1e9a327bL


# instance fields
.field private lat:D

.field private lon:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 11
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    .line 15
    iput-wide v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->lat:D

    .line 16
    iput-wide v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->lon:D

    .line 11
    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->lon:D

    return-wide v0
.end method

.method public setLat(D)V
    .locals 0
    .parameter "lat"

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->lat:D

    .line 24
    return-void
.end method

.method public setLon(D)V
    .locals 0
    .parameter "lon"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->lon:D

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "lat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->lon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
