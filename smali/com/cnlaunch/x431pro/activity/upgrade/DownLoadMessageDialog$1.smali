.class Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog$1;
.super Ljava/lang/Object;
.source "DownLoadMessageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;->showSuccessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;->oneOnClickListener()V

    .line 52
    return-void
.end method
