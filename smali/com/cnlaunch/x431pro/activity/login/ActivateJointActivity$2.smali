.class Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$2;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;

    const-class v2, Lcom/cnlaunch/x431pro/activity/login/HowToGetJointVerifyCodeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method
