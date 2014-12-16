.class Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$5;
.super Ljava/lang/Object;
.source "ModifyPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->submit()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$13(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V

    .line 254
    return-void
.end method
