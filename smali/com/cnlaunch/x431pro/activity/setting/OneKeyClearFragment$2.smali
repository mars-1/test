.class Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$2;
.super Ljava/lang/Object;
.source "OneKeyClearFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 313
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lstLastestNum:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 315
    .local v1, num:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_lastest_num:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lastestVerisonNum:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    sget-object v3, Lcom/cnlaunch/x431pro/common/Constants;->LASTEST_VERSION_NUMBER:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_lastest_num:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lastestVerisonNum:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->access$4(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v1           #num:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
