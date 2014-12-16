.class Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$2;
.super Ljava/lang/Object;
.source "RegisterInstructionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;

    const-class v2, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->finish()V

    .line 77
    return-void
.end method
