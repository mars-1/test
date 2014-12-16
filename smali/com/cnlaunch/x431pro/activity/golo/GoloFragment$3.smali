.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$3;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    .line 2677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 2681
    const/4 v1, 0x0

    .line 2682
    .local v1, type:Ljava/lang/String;
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 2683
    check-cast v0, Landroid/content/Intent;

    .line 2684
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "Customer_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2685
    const-string/jumbo v2, "bunding_new"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2686
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->datalistenter:Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$23(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;->setListType(I)V

    .line 2687
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showSelectView()V
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$24(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    .line 2693
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2688
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string/jumbo v2, "remote_req"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2689
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->datalistenter:Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$23(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;->setListType(I)V

    .line 2690
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showSelectView()V
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$24(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    goto :goto_0
.end method
