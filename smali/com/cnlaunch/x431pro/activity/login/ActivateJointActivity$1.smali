.class Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$1;
.super Ljava/lang/Object;
.source "ActivateJointActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->finish()V

    .line 114
    return-void
.end method
