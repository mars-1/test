.class Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;
.super Landroid/os/AsyncTask;
.source "RemindInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModifyWarnInfoStateAsy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;-><init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;
    .locals 5
    .parameter "params"

    .prologue
    .line 295
    if-eqz p1, :cond_0

    .line 296
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$2(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "user_id"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, cc:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    const/4 v2, 0x0

    .line 300
    .local v2, readRes:Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$4(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4, v0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->read(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 307
    .end local v0           #cc:Ljava/lang/String;
    .end local v2           #readRes:Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;
    :goto_0
    return-object v2

    .line 301
    .restart local v0       #cc:Ljava/lang/String;
    .restart local v2       #readRes:Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;
    :catch_0
    move-exception v1

    .line 302
    .local v1, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v1}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_0

    .line 307
    .end local v0           #cc:Ljava/lang/String;
    .end local v1           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v2           #readRes:Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;->doInBackground([Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;->getCode()I

    move-result v0

    .line 315
    .local v0, code:I
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$5()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u66f4\u6539\u63d0\u9192\u72b6\u6001\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-nez v0, :cond_0

    .line 317
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->onChange(I)V

    .line 320
    .end local v0           #code:I
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;->onPostExecute(Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;)V

    return-void
.end method
