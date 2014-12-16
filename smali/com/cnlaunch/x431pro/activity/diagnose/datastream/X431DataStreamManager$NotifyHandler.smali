.class Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431DataStreamManager$NotifyHandler;
.super Landroid/os/Handler;
.source "X431DataStreamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431DataStreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyHandler"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;)V
    .locals 1
    .parameter "dsManager"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431DataStreamManager$NotifyHandler;->mRef:Ljava/lang/ref/WeakReference;

    .line 22
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 26
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431DataStreamManager$NotifyHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    .line 27
    .local v0, dsManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;
    if-eqz v0, :cond_0

    .line 28
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 30
    :pswitch_0
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->innerNotifyDataStreamChanged()V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
