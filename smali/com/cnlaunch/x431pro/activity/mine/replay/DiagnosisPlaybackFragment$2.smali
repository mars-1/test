.class Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$2;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.source "DiagnosisPlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    .line 140
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public noOnClickListener()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public yesOnClickListener()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mReportPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 144
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->fragmentManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 145
    return-void
.end method
