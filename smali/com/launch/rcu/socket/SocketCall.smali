.class public Lcom/launch/rcu/socket/SocketCall;
.super Ljava/lang/Object;
.source "SocketCall.java"


# static fields
.field private static identify:I

.field private static instance:Lcom/launch/rcu/socket/SocketCall;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const-string/jumbo v0, "Socket"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    sput-object v1, Lcom/launch/rcu/socket/SocketCall;->instance:Lcom/launch/rcu/socket/SocketCall;

    .line 27
    sput-object v1, Lcom/launch/rcu/socket/SocketCall;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/launch/rcu/socket/SocketCall;->identify:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getIdentify()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/launch/rcu/socket/SocketCall;->identify:I

    return v0
.end method

.method public static getInstance()Lcom/launch/rcu/socket/SocketCall;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/launch/rcu/socket/SocketCall;->instance:Lcom/launch/rcu/socket/SocketCall;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/launch/rcu/socket/SocketCall;

    invoke-direct {v0}, Lcom/launch/rcu/socket/SocketCall;-><init>()V

    sput-object v0, Lcom/launch/rcu/socket/SocketCall;->instance:Lcom/launch/rcu/socket/SocketCall;

    .line 46
    :cond_0
    sget-object v0, Lcom/launch/rcu/socket/SocketCall;->instance:Lcom/launch/rcu/socket/SocketCall;

    return-object v0
.end method

.method public static receive([B)V
    .locals 4
    .parameter "data"

    .prologue
    .line 142
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 145
    .local v1, receiveData:Ljava/lang/String;
    invoke-static {}, Lcom/launch/rcu/socket/SocketCall;->getInstance()Lcom/launch/rcu/socket/SocketCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/launch/rcu/socket/SocketCall;->getCurrentVersion()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 147
    :try_start_0
    invoke-static {}, Lcom/launch/rcu/socket/SocketCall;->getIdentify()I

    move-result v2

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->compatibleReciveData(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 155
    :cond_0
    :goto_0
    invoke-static {}, Lcom/launch/rcu/socket/SocketCall;->getIdentify()I

    move-result v2

    if-nez v2, :cond_1

    .line 157
    sget-object v2, Lcom/launch/rcu/socket/SocketCall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->feekbackDataRemote(Ljava/lang/String;)V

    .line 162
    :goto_1
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    sget-object v2, Lcom/launch/rcu/socket/SocketCall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendUIDataRemote(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static serverCMD([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 171
    return-void
.end method

.method public static setIdentify(I)V
    .locals 0
    .parameter "identify"

    .prologue
    .line 37
    sput p0, Lcom/launch/rcu/socket/SocketCall;->identify:I

    .line 38
    return-void
.end method

.method public static state(B)V
    .locals 1
    .parameter "reg"

    .prologue
    .line 180
    sget-object v0, Lcom/launch/rcu/socket/SocketCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendRemoteDiagStatus(I)V

    .line 181
    return-void
.end method


# virtual methods
.method public StartRemoteDiag(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 6
    .parameter "ip"
    .parameter "port"
    .parameter "identif"
    .parameter "data"
    .parameter "iPlat"

    .prologue
    .line 86
    invoke-static {p3}, Lcom/launch/rcu/socket/SocketCall;->setIdentify(I)V

    .line 88
    invoke-static {}, Lcom/launch/rcu/socket/SocketCall;->getInstance()Lcom/launch/rcu/socket/SocketCall;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/launch/rcu/socket/SocketCall;->start(Ljava/lang/String;IILjava/lang/String;I)V

    .line 89
    return-void
.end method

.method public StopRemoteDiag()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/launch/rcu/socket/SocketCall;->stop()V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/StackOverflowError;
    const-string/jumbo v1, "Sanda"

    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native getCurrentVersion()I
.end method

.method public native send([BI)I
.end method

.method public sendRemoteData(Ljava/lang/String;I)V
    .locals 4
    .parameter "dataString"
    .parameter "iReq"

    .prologue
    .line 110
    move-object v1, p1

    .line 113
    .local v1, sendData:Ljava/lang/String;
    invoke-static {}, Lcom/launch/rcu/socket/SocketCall;->getInstance()Lcom/launch/rcu/socket/SocketCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/launch/rcu/socket/SocketCall;->getCurrentVersion()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/launch/rcu/socket/SocketCall;->getIdentify()I

    move-result v2

    invoke-static {p1, v2}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->compatibleSendData(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/launch/rcu/socket/SocketCall;->send([BI)I

    .line 124
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 119
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public native start(Ljava/lang/String;IILjava/lang/String;I)V
.end method

.method public native stop()V
.end method
