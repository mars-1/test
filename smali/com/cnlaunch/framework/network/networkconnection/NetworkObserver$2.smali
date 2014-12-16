.class Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver$2;
.super Ljava/lang/Object;
.source "NetworkObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;->dispath_Connected(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;

.field private final synthetic val$networkInfo:Landroid/net/NetworkInfo;


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver$2;->this$0:Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;

    iput-object p2, p0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver$2;->val$networkInfo:Landroid/net/NetworkInfo;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver$2;->this$0:Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;

    iget-object v1, p0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver$2;->val$networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;->networkIsConnected(Landroid/net/NetworkInfo;)V

    .line 31
    return-void
.end method
