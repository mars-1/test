.class Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$6;
.super Ljava/lang/Object;
.source "DiagnoseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->exitDiagDialog()V
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 469
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->regainMainView()V
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$22(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/BaseFragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 472
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;-><init>()V

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$23(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Lcom/cnlaunch/x431pro/activity/BaseFragment;)V

    .line 478
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$22(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/BaseFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$22(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 482
    :goto_1
    return-void

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;-><init>()V

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$23(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Lcom/cnlaunch/x431pro/activity/BaseFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
