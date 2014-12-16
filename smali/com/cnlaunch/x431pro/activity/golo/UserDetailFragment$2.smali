.class Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$2;
.super Ljava/lang/Object;
.source "UserDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->startMessageFragment()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$10(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)V

    .line 85
    return-void
.end method
