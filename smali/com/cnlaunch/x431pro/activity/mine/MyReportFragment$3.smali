.class Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;
.super Ljava/lang/Object;
.source "MyReportFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->initViews()V
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
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "arg2"
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
    .line 157
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v1, "0"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mReportType:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$9(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    const-string/jumbo v2, "report_name"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getImagesPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_diagnosis_report:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$10(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->getReportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const-string/jumbo v1, "1"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mReportType:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$9(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    const-string/jumbo v2, "urlkey"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_remote_diagnosis_report:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 164
    :cond_2
    const-string/jumbo v1, "2"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mReportType:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$9(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string/jumbo v2, "report_name"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getImagesPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_iagnosis_playback:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$11(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->getReportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
