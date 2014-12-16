.class Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;
.super Landroid/os/AsyncTask;
.source "RemindInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TipDetailAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private postion:I

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;-><init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;
    .locals 5
    .parameter "params"

    .prologue
    .line 446
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->postion:I

    .line 447
    const/4 v0, 0x0

    .line 449
    .local v0, detailRes:Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$4(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->pub_id:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$6(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->goloDetailInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 454
    :goto_0
    return-object v0

    .line 450
    :catch_0
    move-exception v1

    .line 452
    .local v1, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v1}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->doInBackground([Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$0(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$0(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 462
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$7(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->postion:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->setRemindDetail(Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;)V

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$3(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$7(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->refresh(Ljava/util/List;)V

    .line 466
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$3(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->notifyDataSetChanged()V

    .line 468
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->onPostExecute(Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;)V

    return-void
.end method
