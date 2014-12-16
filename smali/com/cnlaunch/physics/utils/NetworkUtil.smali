.class public Lcom/cnlaunch/physics/utils/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field private static mInstance:Lcom/cnlaunch/physics/utils/NetworkUtil;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/NetworkUtil;->context:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/physics/utils/NetworkUtil;
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    sget-object v0, Lcom/cnlaunch/physics/utils/NetworkUtil;->mInstance:Lcom/cnlaunch/physics/utils/NetworkUtil;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/cnlaunch/physics/utils/NetworkUtil;

    invoke-direct {v0, p0}, Lcom/cnlaunch/physics/utils/NetworkUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/physics/utils/NetworkUtil;->mInstance:Lcom/cnlaunch/physics/utils/NetworkUtil;

    .line 16
    :cond_0
    sget-object v0, Lcom/cnlaunch/physics/utils/NetworkUtil;->mInstance:Lcom/cnlaunch/physics/utils/NetworkUtil;

    return-object v0
.end method


# virtual methods
.method public getConnectWIFI()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 24
    iget-object v3, p0, Lcom/cnlaunch/physics/utils/NetworkUtil;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 25
    iget-object v3, p0, Lcom/cnlaunch/physics/utils/NetworkUtil;->context:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 26
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 27
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 34
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
