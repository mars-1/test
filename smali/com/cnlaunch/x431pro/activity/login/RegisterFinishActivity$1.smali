.class Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity$1;
.super Ljava/lang/Object;
.source "RegisterFinishActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "show_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->finish()V

    .line 36
    return-void
.end method
