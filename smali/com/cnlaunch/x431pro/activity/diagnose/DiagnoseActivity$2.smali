.class Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;
.super Ljava/lang/Object;
.source "DiagnoseActivity.java"

# interfaces
.implements Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiagnoseActiveTestDataCallback(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "type"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, activeDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    .local p3, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    const/4 v5, 0x0

    .line 335
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    const-string/jumbo v4, "active"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStreamSelectJumpType(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 340
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isActiveTest()Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStream(Z)V

    .line 342
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setActiveTest(Z)V

    .line 343
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setFaultCode(Z)V

    .line 344
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSpeciaFunction(Z)V

    .line 345
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;-><init>()V

    .line 346
    .local v2, fActiveTest:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;
    invoke-static {p1, p2, p3}, Lcom/cnlaunch/x431pro/utils/diagnose/FragmentBundleUtils;->getActiveTestBundle(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    .line 347
    .local v1, bundle:Landroid/os/Bundle;
    invoke-virtual {v2, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->setArguments(Landroid/os/Bundle;)V

    .line 348
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 352
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #fActiveTest:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;
    :goto_1
    return-void

    .line 337
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .line 338
    .local v0, bean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->doConversion()V

    goto :goto_0

    .line 350
    .end local v0           #bean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    move-result-object v3

    invoke-interface {v3, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;->updateActiveTestListener(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public onDiagnoseArgingWindowCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "data"

    .prologue
    .line 396
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 397
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;-><init>()V

    .line 398
    .local v0, argingWindowFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;
    invoke-static {p2}, Lcom/cnlaunch/x431pro/utils/diagnose/FragmentBundleUtils;->getArgingWindowBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 399
    .local v1, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->setArguments(Landroid/os/Bundle;)V

    .line 400
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 404
    .end local v0           #argingWindowFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;->updateArgingWindowListener(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDiagnoseCombineMenu(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 5
    .parameter "type"
    .parameter "title"
    .parameter "firstItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p4, combineMenuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;>;"
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSubTitle(Ljava/lang/String;)V

    .line 388
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;-><init>()V

    .line 389
    .local v1, combineMenuFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;
    invoke-static {p2, p3, p4}, Lcom/cnlaunch/x431pro/utils/diagnose/FragmentBundleUtils;->getCombineMenuBundle(Ljava/lang/String;ILjava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v0

    .line 390
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->setArguments(Landroid/os/Bundle;)V

    .line 391
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 392
    return-void
.end method

.method public onDiagnoseDatastreamCallback(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "type"
    .parameter
    .parameter "title"
    .parameter "pageCount"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, dataStreamList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v5, 0x0

    .line 297
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 301
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDataStream()Z

    move-result v3

    if-nez v3, :cond_2

    .line 302
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStream(Z)V

    .line 303
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setActiveTest(Z)V

    .line 304
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setFaultCode(Z)V

    .line 305
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSpeciaFunction(Z)V

    .line 306
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;-><init>()V

    .line 307
    .local v2, dataStreamShowFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;
    invoke-static {p1, p2, p3, p4, p5}, Lcom/cnlaunch/x431pro/utils/diagnose/FragmentBundleUtils;->getDataStreamBundle(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 308
    .local v1, bundle:Landroid/os/Bundle;
    invoke-virtual {v2, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->setArguments(Landroid/os/Bundle;)V

    .line 309
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 313
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #dataStreamShowFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;
    :goto_1
    return-void

    .line 297
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .line 298
    .local v0, bean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->doConversion()V

    goto :goto_0

    .line 311
    .end local v0           #bean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;->updateDataStreamListener(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public onDiagnoseDatastreamSelectMenuDataCallback(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p2, selectMenuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;>;"
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;-><init>()V

    .line 287
    .local v1, dataStreamSelectListFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;
    invoke-static {p2}, Lcom/cnlaunch/x431pro/utils/diagnose/FragmentBundleUtils;->getDataStreamSelectBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v0

    .line 288
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isActiveTest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const-string/jumbo v2, "IS_SORT"

    const-string/jumbo v3, "false"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->setArguments(Landroid/os/Bundle;)V

    .line 291
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 292
    return-void
.end method

.method public onDiagnoseFaultCodeDataCallback(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, faultCodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;>;"
    const/4 v4, 0x0

    .line 317
    sget-boolean v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FAULTCODE_REFRESH:Z

    if-eqz v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isFaultCode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStream(Z)V

    .line 320
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setActiveTest(Z)V

    .line 321
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setFaultCode(Z)V

    .line 322
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSpeciaFunction(Z)V

    .line 323
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;-><init>()V

    .line 324
    .local v1, faultCodeFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;
    invoke-static {p1, p2}, Lcom/cnlaunch/x431pro/utils/diagnose/FragmentBundleUtils;->getFaultCodeBundle(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v0

    .line 325
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 326
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 331
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #faultCodeFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;
    :cond_1
    :goto_0
    return-void

    .line 328
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;->updateFaultCodesListener(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onDiagnoseMenuDataCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 5
    .parameter "type"
    .parameter "title"
    .parameter "help"
    .parameter "firstItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, menuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;>;"
    const/4 v4, 0x0

    .line 271
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->messageBoxDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->messageBoxDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->closeDialog()V

    .line 274
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setDiagFlag(Z)V

    .line 275
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    const-string/jumbo v3, "menu"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStreamSelectJumpType(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSubTitle(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDatastreamSelectIndex(I)V

    .line 278
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;-><init>()V

    .line 279
    .local v1, menuListFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;
    invoke-static {p1, p2, p3, p4, p5}, Lcom/cnlaunch/x431pro/utils/diagnose/FragmentBundleUtils;->getMenuBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v0

    .line 280
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 281
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 282
    return-void
.end method

.method public onDiagnoseMessageBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "type"
    .parameter "title"
    .parameter "context"
    .parameter "ratio"

    .prologue
    .line 373
    invoke-static {p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/utils/diagnose/FragmentBundleUtils;->getMessageBoxBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 374
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->messageBoxDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;-><init>()V

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->messageBoxDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$5(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)V

    .line 377
    :cond_0
    const-string/jumbo v1, "170"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->messageBoxDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mService:Landroid/os/Messenger;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$6(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->showProgressDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Messenger;)V

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->messageBoxDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mService:Landroid/os/Messenger;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$6(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->showMessageDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Messenger;)V

    goto :goto_0
.end method

.method public onDiagnoseSpeciaFunctionCallback(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 5
    .parameter "type"
    .parameter
    .parameter
    .parameter
    .parameter "title"
    .parameter "colums"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    .local p3, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    .local p4, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    const/4 v4, 0x0

    .line 357
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isSpeciaFunction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStream(Z)V

    .line 359
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setActiveTest(Z)V

    .line 360
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setFaultCode(Z)V

    .line 361
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSpeciaFunction(Z)V

    .line 362
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;-><init>()V

    .line 363
    .local v1, speciaFunctionFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;
    invoke-static/range {p1 .. p6}, Lcom/cnlaunch/x431pro/utils/diagnose/FragmentBundleUtils;->getSpeciaFuntionBundle(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 364
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 365
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 369
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #speciaFunctionFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;->updateSpeciaFuntionListener(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
