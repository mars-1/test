.class Lcom/cnlaunch/x431pro/activity/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/BaseActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/BaseActivity;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
