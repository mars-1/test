.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

.field private final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->val$data:Ljava/lang/Object;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 403
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->val$data:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 405
    .local v1, msg:Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    const-string/jumbo v3, "pub_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$27(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    const-string/jumbo v3, "pub_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$28(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$16(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$16(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$28(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V

    .line 413
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "null"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 414
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "USER_PUBLIC_ID"

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v4

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "USER_PUBLIC_NAME"

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v4

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$16(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "null"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 421
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->checkNetWork()Z
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$29(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 422
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showProgressDialog()V
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$30(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    .line 423
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 424
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 425
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 430
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showSelectView()V
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$24(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    .line 431
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 417
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "USER_PUBLIC_ID"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "USER_PUBLIC_NAME"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 428
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$11(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
