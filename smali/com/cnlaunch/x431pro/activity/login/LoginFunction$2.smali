.class Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;
.super Ljava/lang/Object;
.source "LoginFunction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->showLoginConflictDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 732
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->access$0(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "login_username"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->access$0(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "login_password"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, pass:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    invoke-virtual {v2, v0, v1}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->Login(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    return-void
.end method
