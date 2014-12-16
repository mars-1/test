.class Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$2;
.super Landroid/webkit/WebChromeClient;
.source "WebSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;

    .line 87
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 92
    return-void
.end method
