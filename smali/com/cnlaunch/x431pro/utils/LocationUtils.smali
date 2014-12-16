.class public Lcom/cnlaunch/x431pro/utils/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGPSLocation(Landroid/content/Context;Landroid/location/LocationListener;)Landroid/location/Location;
    .locals 8
    .parameter "mContext"
    .parameter "locationListener"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    const-string/jumbo v2, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 70
    .local v0, locationManager:Landroid/location/LocationManager;
    const-string/jumbo v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    const/4 v7, 0x0

    .line 85
    :cond_0
    :goto_0
    return-object v7

    .line 74
    :cond_1
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 75
    .local v6, criteria:Landroid/location/Criteria;
    invoke-virtual {v6, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 76
    invoke-virtual {v6, v4}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 77
    invoke-virtual {v6, v4}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 78
    invoke-virtual {v6, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 79
    invoke-virtual {v6, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 80
    invoke-virtual {v0, v6, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, provider:Ljava/lang/String;
    const/4 v7, 0x0

    .line 82
    .local v7, location:Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 83
    const-wide/16 v2, 0x64

    const/high16 v4, 0x3f80

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public static getLocationInfo(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;
    .locals 8
    .parameter "mContext"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 22
    new-instance v0, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;-><init>()V

    .line 23
    .local v0, info:Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;
    const/4 v1, 0x0

    .line 24
    .local v1, location:Landroid/location/Location;
    new-instance v2, Lcom/cnlaunch/x431pro/utils/LocationUtils$1;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/utils/LocationUtils$1;-><init>()V

    .line 42
    .local v2, locationListener:Landroid/location/LocationListener;
    invoke-static {p0, v2}, Lcom/cnlaunch/x431pro/utils/LocationUtils;->getGPSLocation(Landroid/content/Context;Landroid/location/LocationListener;)Landroid/location/Location;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->setLat(D)V

    .line 45
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->setLon(D)V

    .line 46
    const-string/jumbo v3, "Sanda"

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "GPS={"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .end local v0           #info:Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;
    :goto_0
    return-object v0

    .line 49
    .restart local v0       #info:Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;
    :cond_0
    invoke-static {p0, v2}, Lcom/cnlaunch/x431pro/utils/LocationUtils;->getNetworkLocation(Landroid/content/Context;Landroid/location/LocationListener;)Landroid/location/Location;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->setLat(D)V

    .line 52
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->setLon(D)V

    .line 53
    const-string/jumbo v3, "Sanda"

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "NET={"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_1
    const-string/jumbo v3, "Sanda"

    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "Location is null"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNetworkLocation(Landroid/content/Context;Landroid/location/LocationListener;)Landroid/location/Location;
    .locals 8
    .parameter "mContext"
    .parameter "locationListener"

    .prologue
    .line 97
    const/4 v7, 0x0

    .line 98
    .local v7, location:Landroid/location/Location;
    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 99
    .local v0, locationManager:Landroid/location/LocationManager;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-nez v7, :cond_0

    const/16 v1, 0xa

    if-lt v6, v1, :cond_1

    .line 103
    :cond_0
    return-object v7

    .line 100
    :cond_1
    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 101
    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
