.class Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$1;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.source "OneKeyClearFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    .line 288
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public noOnClickListener()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public yesOnClickListener()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    const/16 v1, 0x271c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->request(IZ)V

    .line 293
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    const v2, 0x7f070695

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    return-void
.end method
