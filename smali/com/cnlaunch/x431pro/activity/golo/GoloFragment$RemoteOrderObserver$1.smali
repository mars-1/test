.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

.field private final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->val$data:Ljava/lang/Object;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 338
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->val$data:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 339
    const-string/jumbo v5, "GoloFragment"

    const-string/jumbo v6, "remote request1 "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 386
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->val$data:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    .line 343
    .local v3, msg:Lorg/json/JSONObject;
    const-string/jumbo v5, "acttype"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, acttype:I
    :try_start_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v5

    const-string/jumbo v6, "diag_uid"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->diag_uid:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$25(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v5, "acttype"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 352
    :goto_1
    if-nez v0, :cond_2

    .line 353
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v5

    const v6, 0x9c46

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 358
    :cond_1
    :goto_2
    const-string/jumbo v5, "GoloFragment"

    const-string/jumbo v6, "bunding request "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 354
    .end local v1           #e:Lorg/json/JSONException;
    :cond_2
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 355
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v5

    const v6, 0x9c45

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    goto :goto_2

    .line 359
    .end local v0           #acttype:I
    :cond_3
    const-string/jumbo v5, "diag_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 360
    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 362
    :try_start_1
    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 363
    const-string/jumbo v5, "diag_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, request_id:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v5

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->deleteRemoteCustomer(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 371
    .end local v4           #request_id:Ljava/lang/String;
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 381
    :goto_4
    const-string/jumbo v5, "GoloFragment"

    const-string/jumbo v6, "remote request 2"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 366
    :catch_1
    move-exception v2

    .line 367
    .local v2, e1:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 368
    .end local v2           #e1:Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 369
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 374
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v5

    const-string/jumbo v6, "diag_uid"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->diag_uid:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$25(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V

    .line 375
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v5

    const-string/jumbo v6, "diag_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->diag_id:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$26(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 379
    :goto_5
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v5

    const v6, 0x9c47

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    goto :goto_4

    .line 376
    :catch_3
    move-exception v1

    .line 377
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 383
    .end local v1           #e:Lorg/json/JSONException;
    :cond_6
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    goto/16 :goto_0
.end method
