.class Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$5;
.super Ljava/lang/Object;
.source "RemoteDiagHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->showRetryDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

.field private final synthetic val$isWait:Z


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$5;->val$isWait:Z

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$5;->val$isWait:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    const v1, 0x7f0706f7

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;I)V

    .line 185
    :cond_0
    return-void
.end method
