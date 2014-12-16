.class Lcom/cnlaunch/physics/wifi/WLANManager$2;
.super Ljava/lang/Object;
.source "WLANManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/physics/wifi/WLANManager;->connect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/physics/wifi/WLANManager;


# direct methods
.method constructor <init>(Lcom/cnlaunch/physics/wifi/WLANManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/physics/wifi/WLANManager$2;->this$0:Lcom/cnlaunch/physics/wifi/WLANManager;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager$2;->this$0:Lcom/cnlaunch/physics/wifi/WLANManager;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/wifi/WLANManager;->connectWIFISocket()Z

    .line 225
    return-void
.end method
