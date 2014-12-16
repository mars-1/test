.class public Lcom/cnlaunch/framework/utils/location/MyLocationManager;
.super Ljava/lang/Object;
.source "MyLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/cnlaunch/framework/network/async/OnDataListener;


# static fields
.field private static instance:Lcom/cnlaunch/framework/utils/location/MyLocationManager;


# instance fields
.field private final REQ_GEOCODER_CODE:I

.field private asyncHttpClient:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

.field private asyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

.field private latitude:D

.field private locationListener:Lcom/cnlaunch/framework/utils/location/MyLocationListener;

.field private locationMgr:Landroid/location/LocationManager;

.field private longitude:D

.field private mContext:Landroid/content/Context;

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-class v0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->tag:Ljava/lang/String;

    .line 59
    const/16 v0, 0x2725

    iput v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->REQ_GEOCODER_CODE:I

    .line 92
    iput-object p1, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->asyncHttpClient:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    .line 94
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->asyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    .line 95
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationMgr:Landroid/location/LocationManager;

    .line 96
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)Lcom/cnlaunch/framework/utils/location/MyLocationListener;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationListener:Lcom/cnlaunch/framework/utils/location/MyLocationListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)D
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->latitude:D

    return-wide v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)D
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->longitude:D

    return-wide v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->asyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/utils/location/MyLocationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    sget-object v0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->instance:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    if-nez v0, :cond_1

    .line 78
    const-class v1, Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->instance:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    invoke-direct {v0, p0}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->instance:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    sget-object v0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->instance:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 11
    .parameter "requsetCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 224
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 225
    .local v0, gc:Landroid/location/Geocoder;
    iget-wide v1, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->latitude:D

    iget-wide v3, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->longitude:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v10

    .line 227
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v7, addressBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .end local v0           #gc:Landroid/location/Geocoder;
    .end local v7           #addressBuilder:Ljava/lang/StringBuilder;
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :goto_0
    return-object v1

    .line 228
    .restart local v0       #gc:Landroid/location/Geocoder;
    .restart local v7       #addressBuilder:Ljava/lang/StringBuilder;
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 229
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    if-ge v9, v2, :cond_0

    .line 232
    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 238
    .end local v0           #gc:Landroid/location/Geocoder;
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addressBuilder:Ljava/lang/StringBuilder;
    .end local v9           #i:I
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v8

    .line 239
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 241
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocationListener()Lcom/cnlaunch/framework/utils/location/MyLocationListener;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationListener:Lcom/cnlaunch/framework/utils/location/MyLocationListener;

    return-object v0
.end method

.method public isGPSEnabled()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationMgr:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 259
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->sendLocation(Landroid/location/Location;)V

    .line 196
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 201
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 206
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 211
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 6
    .parameter "requestCode"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 246
    if-eqz p2, :cond_0

    .line 247
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationListener:Lcom/cnlaunch/framework/utils/location/MyLocationListener;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->tag:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Geocoder latitude: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->latitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " longitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationListener:Lcom/cnlaunch/framework/utils/location/MyLocationListener;

    iget-wide v1, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->latitude:D

    iget-wide v3, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->longitude:D

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/cnlaunch/framework/utils/location/MyLocationListener;->onLocation(DDLjava/lang/String;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->tag:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "LocateManager MyLocationListener is not null."

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendLocation(Landroid/location/Location;)V
    .locals 5
    .parameter "location"

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->latitude:D

    .line 150
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->longitude:D

    .line 152
    new-instance v0, Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-direct {v0}, Lcom/cnlaunch/framework/network/http/RequestParams;-><init>()V

    .line 153
    .local v0, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v1, "latlng"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v1, "sensor"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v1, "language"

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->asyncHttpClient:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    const-string/jumbo v2, "http://maps.google.com/maps/api/geocode/json"

    new-instance v3, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;

    invoke-direct {v3, p0}, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;-><init>(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    .line 191
    .end local v0           #params:Lcom/cnlaunch/framework/network/http/RequestParams;
    :cond_0
    return-void
.end method

.method public setLocationListener(Lcom/cnlaunch/framework/utils/location/MyLocationListener;)V
    .locals 0
    .parameter "locationListener"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationListener:Lcom/cnlaunch/framework/utils/location/MyLocationListener;

    .line 219
    return-void
.end method

.method public settingGPS(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->isGPSEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public startLocation()V
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, "network"

    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->startLocation(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public startLocation(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationMgr:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 130
    .local v6, location:Landroid/location/Location;
    invoke-virtual {p0, v6}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->sendLocation(Landroid/location/Location;)V

    .line 131
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationMgr:Landroid/location/LocationManager;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 132
    return-void
.end method

.method public stopLocation()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationMgr:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationMgr:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 141
    :cond_0
    return-void
.end method
