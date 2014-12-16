.class Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment$1;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.source "ReportShowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;

    .line 128
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public noOnClickListener()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public yesOnClickListener()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;->filePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 132
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 133
    return-void
.end method
