.class public Lcom/cnlaunch/golo3/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final ALLACTIVE:I = 0x3

.field public static final MOBILEACTIVE:I = 0x2

.field public static final NONETWORK:I = 0x9

.field public static final WIFIACTIVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkInfo(Landroid/content/Context;)I
    .locals 6
    .parameter "mContext"

    .prologue
    const/4 v4, 0x1

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 22
    .local v1, context:Landroid/content/Context;
    const-string/jumbo v5, "connectivity"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 23
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 26
    .local v3, wifi:Landroid/net/NetworkInfo$State;
    const/4 v2, 0x0

    .line 29
    .local v2, mobile:Landroid/net/NetworkInfo$State;
    const/4 v5, 0x0

    .line 28
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 29
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 34
    :goto_0
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_1

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v2, :cond_1

    .line 35
    const/4 v4, 0x3

    .line 46
    :cond_0
    :goto_1
    return v4

    .line 38
    :cond_1
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v5, :cond_0

    .line 42
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v2, :cond_2

    .line 43
    const/4 v4, 0x2

    goto :goto_1

    .line 46
    :cond_2
    const/16 v4, 0x9

    goto :goto_1

    .line 30
    :catch_0
    move-exception v5

    goto :goto_0
.end method
