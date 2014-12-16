.class Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$5;
.super Ljava/lang/Object;
.source "UpgradeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

.field private final synthetic val$spinnerlist:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$5;->val$spinnerlist:Ljava/util/List;

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 807
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    .line 808
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$5;->val$spinnerlist:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 809
    .local v1, sn:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$4(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 810
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->setSN(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$26(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;Ljava/lang/String;)V

    .line 811
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07058d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 812
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    const/16 v3, 0x835

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->request(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    .end local v1           #sn:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
