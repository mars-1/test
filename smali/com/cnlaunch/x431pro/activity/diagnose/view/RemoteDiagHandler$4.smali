.class Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$4;
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


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->handlerStatue(I)V

    .line 177
    return-void
.end method
