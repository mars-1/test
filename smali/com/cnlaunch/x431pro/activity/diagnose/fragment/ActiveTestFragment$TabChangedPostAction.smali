.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;
.super Ljava/lang/Object;
.source "ActiveTestFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabChangedPostAction"
.end annotation


# instance fields
.field private mShowAllSelection:Z

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Z)V
    .locals 0
    .parameter
    .parameter "showAllSelection"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;->mShowAllSelection:Z

    .line 379
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DataStreamShow_Type"

    const-string/jumbo v2, "ActiveTest"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ActiveTestType"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCurrentActiveType:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DataStreamMask"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mMaskString:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ActiveValueList"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 387
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ActiveButtonList"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestButton:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 388
    return-void
.end method
