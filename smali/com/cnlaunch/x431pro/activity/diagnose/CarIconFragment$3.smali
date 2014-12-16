.class Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment$3;
.super Lcom/cnlaunch/x431pro/common/RTUHelper;
.source "CarIconFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;->initRTUHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;

    .line 479
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/common/RTUHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public finishActivity()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 483
    return-void
.end method
