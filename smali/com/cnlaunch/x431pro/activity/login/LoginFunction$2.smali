.class Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;
.super Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;
.source "LoginFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->showLoginDialog()Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    .line 740
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loginListenter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "username"
    .parameter "password"

    .prologue
    .line 743
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->access$0(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "login_password"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->access$0(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->USERNAMELIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, UsernameString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 747
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->String2StringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v3, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->UsernameList:Ljava/util/ArrayList;

    .line 748
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->UsernameList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->access$0(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, p1, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->UsernameList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 751
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->access$0(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->USERNAMELIST:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    iget-object v4, v4, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->UsernameList:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->StringList2String(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 761
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    invoke-virtual {v2, p1, p2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->Login(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    return-void

    .line 753
    :catch_0
    move-exception v1

    .line 754
    .local v1, e:Ljava/io/StreamCorruptedException;
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_0

    .line 755
    .end local v1           #e:Ljava/io/StreamCorruptedException;
    :catch_1
    move-exception v1

    .line 756
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 757
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 758
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
