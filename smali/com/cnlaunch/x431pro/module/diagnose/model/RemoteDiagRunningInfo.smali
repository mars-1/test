.class public Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "RemoteDiagRunningInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x6c4a7c7c0336dec2L


# instance fields
.field private goloLat:Ljava/lang/String;

.field private goloLon:Ljava/lang/String;

.field private indetify:I

.field private lan:Ljava/lang/String;

.field private otherPublicID:J

.field private otherPublicName:Ljava/lang/String;

.field private otherUseID:Ljava/lang/String;

.field private otherUseName:Ljava/lang/String;

.field private remoteSerialNum:Ljava/lang/String;

.field private request_id:Ljava/lang/String;

.field private service_domain:Ljava/lang/String;

.field private service_ip:Ljava/lang/String;

.field private service_port:I

.field private userID:Ljava/lang/String;

.field private userInfo:Ljava/lang/String;

.field private userNickName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->otherUseID:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->otherUseName:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->otherPublicName:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->remoteSerialNum:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->service_ip:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->service_port:I

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->service_domain:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->userInfo:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->lan:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->userID:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->userNickName:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->indetify:I

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->goloLat:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->goloLon:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getGoloLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->goloLat:Ljava/lang/String;

    return-object v0
.end method

.method public getGoloLon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->goloLon:Ljava/lang/String;

    return-object v0
.end method

.method public getIndetify()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->indetify:I

    return v0
.end method

.method public getLan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->lan:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherPublicID()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->otherPublicID:J

    return-wide v0
.end method

.method public getOtherPublicName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->otherPublicName:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherUseID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->otherUseID:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherUseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->otherUseName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteSerialNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->remoteSerialNum:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->request_id:Ljava/lang/String;

    return-object v0
.end method

.method public getService_domain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->service_domain:Ljava/lang/String;

    return-object v0
.end method

.method public getService_ip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->service_ip:Ljava/lang/String;

    return-object v0
.end method

.method public getService_port()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->service_port:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "identify"
    .parameter "ver"
    .parameter "appId"
    .parameter "token"

    .prologue
    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 187
    .local v0, json:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .local v1, jsondata:Lorg/json/JSONObject;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v3, signMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "action"

    const-string/jumbo v5, "userinfo.get_base_info"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v4, "user_id"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->userID:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v4, "app_id"

    invoke-interface {v3, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v4, "ver"

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string/jumbo v4, "lan"

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getLan()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {p4, v3}, Lcom/cnlaunch/golo3/utils/SignUtils;->getSign(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, sign:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "identity"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string/jumbo v4, "deviceSN"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->remoteSerialNum:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string/jumbo v4, "userId"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->userID:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string/jumbo v4, "appId"

    invoke-virtual {v1, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string/jumbo v4, "sign"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string/jumbo v4, "lan"

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getLan()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string/jumbo v4, "ver"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string/jumbo v4, "protocolVer"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const-string/jumbo v4, "data"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->userInfo:Ljava/lang/String;

    .line 208
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 205
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getUserNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->userNickName:Ljava/lang/String;

    return-object v0
.end method

.method public setGoloLat(Ljava/lang/String;)V
    .locals 0
    .parameter "goloLat"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->goloLat:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setGoloLon(Ljava/lang/String;)V
    .locals 0
    .parameter "goloLon"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->goloLon:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setIndetify(I)V
    .locals 0
    .parameter "indetify"

    .prologue
    .line 267
    iput p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->indetify:I

    .line 268
    return-void
.end method

.method public setInfo(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 271
    const-string/jumbo v0, "serialNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setRemoteSerialNum(Ljava/lang/String;)V

    .line 272
    const-string/jumbo v0, "pubId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setOtherPublicID(J)V

    .line 273
    const-string/jumbo v0, "pubName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setOtherPublicName(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v0, "NickName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setUserNickName(Ljava/lang/String;)V

    .line 275
    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setOtherUseID(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v0, "userName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setOtherUseName(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v0, "identify"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setIndetify(I)V

    .line 278
    const-string/jumbo v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setRequest_id(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v0, "lat"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setGoloLat(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v0, "lon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setGoloLon(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public setLan(Ljava/lang/String;)V
    .locals 0
    .parameter "lan"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->lan:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setOtherPublicID(J)V
    .locals 0
    .parameter "otherPublicID"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->otherPublicID:J

    .line 98
    return-void
.end method

.method public setOtherPublicName(Ljava/lang/String;)V
    .locals 0
    .parameter "otherPublicName"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->otherPublicName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setOtherUseID(Ljava/lang/String;)V
    .locals 0
    .parameter "otherUseID"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->otherUseID:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setOtherUseName(Ljava/lang/String;)V
    .locals 0
    .parameter "otherUseName"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->otherUseName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setRemoteSerialNum(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteSerialNum"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->remoteSerialNum:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setRequest_id(Ljava/lang/String;)V
    .locals 0
    .parameter "request_id"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->request_id:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setService_domain(Ljava/lang/String;)V
    .locals 0
    .parameter "service_domain"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->service_domain:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setService_ip(Ljava/lang/String;)V
    .locals 0
    .parameter "service_ip"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->service_ip:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setService_port(I)V
    .locals 0
    .parameter "service_port"

    .prologue
    .line 165
    iput p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->service_port:I

    .line 166
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .parameter "userID"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->userID:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setUserNickName(Ljava/lang/String;)V
    .locals 0
    .parameter "userNickName"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->userNickName:Ljava/lang/String;

    .line 298
    return-void
.end method
