.class Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$4;
.super Ljava/lang/Object;
.source "DiagnoseActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;


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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelAnchored(Landroid/view/View;)V
    .locals 0
    .parameter "panel"

    .prologue
    .line 1363
    return-void
.end method

.method public onPanelCollapsed(Landroid/view/View;)V
    .locals 0
    .parameter "panel"

    .prologue
    .line 1359
    return-void
.end method

.method public onPanelExpanded(Landroid/view/View;)V
    .locals 0
    .parameter "panel"

    .prologue
    .line 1355
    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 3
    .parameter "panel"
    .parameter "slideOffset"

    .prologue
    const/4 v2, 0x0

    .line 1341
    const/high16 v0, 0x3f80

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 1342
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->btnVoice:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$20(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1343
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->isAutoPlay:Z

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->btnVoice:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$20(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->btnVoice:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$20(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1347
    sput-boolean v2, Lcom/cnlaunch/newgolo/task/ReceiveTask;->isAutoPlay:Z

    goto :goto_0
.end method
