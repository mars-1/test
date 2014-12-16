.class Lcom/cnlaunch/x431pro/common/RTUHelper$1;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;
.source "RTUHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/common/RTUHelper;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/common/RTUHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper$1;->this$0:Lcom/cnlaunch/x431pro/common/RTUHelper;

    .line 252
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;-><init>()V

    return-void
.end method


# virtual methods
.method public gamOnClickListener()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public noOnClickListener()V
    .locals 3

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper$1;->this$0:Lcom/cnlaunch/x431pro/common/RTUHelper;

    #getter for: Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/common/RTUHelper;->access$0(Lcom/cnlaunch/x431pro/common/RTUHelper;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper$1;->this$0:Lcom/cnlaunch/x431pro/common/RTUHelper;

    #getter for: Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/common/RTUHelper;->access$0(Lcom/cnlaunch/x431pro/common/RTUHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public yesOnClickListener()V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper$1;->this$0:Lcom/cnlaunch/x431pro/common/RTUHelper;

    #getter for: Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/common/RTUHelper;->access$0(Lcom/cnlaunch/x431pro/common/RTUHelper;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper$1;->this$0:Lcom/cnlaunch/x431pro/common/RTUHelper;

    #getter for: Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/common/RTUHelper;->access$0(Lcom/cnlaunch/x431pro/common/RTUHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void
.end method
