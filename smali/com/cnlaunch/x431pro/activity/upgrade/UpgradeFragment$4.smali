.class Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;
.super Ljava/lang/Object;
.source "UpgradeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->onSuccess(ILjava/lang/Object;)V
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


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "position"
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
    .line 666
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->historylist:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$23(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 667
    .local v1, historybean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setVersionNo(Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionDetailId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setVersionDetailId(Ljava/lang/String;)V

    .line 669
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setSoftName(Ljava/lang/String;)V

    .line 670
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setSoftId(Ljava/lang/String;)V

    .line 671
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftUpdateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setSoftUpdateTime(Ljava/lang/String;)V

    .line 672
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setSoftPackageID(Ljava/lang/String;)V

    .line 673
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getDiagVehicleType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setDiagVehicleType(Ljava/lang/String;)V

    .line 674
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftApplicableArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setSoftApplicableArea(Ljava/lang/String;)V

    .line 675
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setFileSize(J)V

    .line 676
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getServerCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setServerCurrentTime(Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFreeUseEndTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setFreeUseEndTime(Ljava/lang/String;)V

    .line 678
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getLanId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setLanId(Ljava/lang/String;)V

    .line 680
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->setList(Ljava/util/List;)V

    .line 681
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v1           #historybean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
