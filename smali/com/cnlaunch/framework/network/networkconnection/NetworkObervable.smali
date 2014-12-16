.class public Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;
.super Ljava/lang/Object;
.source "NetworkObervable.java"


# static fields
.field private static instance:Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;


# instance fields
.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;->observers:Ljava/util/List;

    .line 13
    return-void
.end method

.method private dispatchChange(Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "observer"
    .parameter "networkInfo"

    .prologue
    .line 40
    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1, p2}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;->dispath_Connected(Landroid/net/NetworkInfo;)V

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p1, p2}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;->dispatch_noneNetwork(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1, p2}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;->dispatch_noneNetwork(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;->instance:Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;

    invoke-direct {v0}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;->instance:Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;

    .line 19
    :cond_0
    sget-object v0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;->instance:Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;

    return-object v0
.end method


# virtual methods
.method public addObserver(Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public onChanged(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "networkInfo"

    .prologue
    .line 31
    iget-object v1, p0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    return-void

    .line 31
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;

    .line 32
    .local v0, observer:Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;
    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;->dispatchChange(Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method public removeObserver(Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
