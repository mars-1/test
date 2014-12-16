.class Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment$2;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.source "ReadReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;

    .line 110
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public noOnClickListener()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public yesOnClickListener()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mReportPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 114
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 115
    return-void
.end method
