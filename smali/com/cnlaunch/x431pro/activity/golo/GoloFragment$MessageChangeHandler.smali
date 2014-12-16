.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageChangeHandler;
.super Landroid/os/HandlerThread;
.source "GoloFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageChangeHandler;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    .line 463
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 464
    return-void
.end method
