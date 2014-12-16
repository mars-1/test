.class Lcom/cnlaunch/x431pro/activity/BaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/BaseActivity;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/BaseActivity;

    .line 143
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/BaseActivity;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_right:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/BaseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/BaseActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/BaseActivity;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "login_username"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/BaseActivity;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_right:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string/jumbo v1, "logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/BaseActivity;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_right:Landroid/widget/TextView;

    const v2, 0x7f070628

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 152
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/BaseActivity;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_right:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
