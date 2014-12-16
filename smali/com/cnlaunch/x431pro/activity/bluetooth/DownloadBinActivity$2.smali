.class Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;
.super Landroid/os/Handler;
.source "DownloadBinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    .line 199
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;)Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v6, 0x7f07003d

    const/16 v5, 0x11

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 206
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvHit:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$2(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070567

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvVer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$3(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mBtnUpdate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$4(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 209
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mBtnUpdate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$4(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #setter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateSuccess:Z
    invoke-static {v0, v3}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$5(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;Z)V

    .line 211
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #setter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateing:Z
    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$6(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;Z)V

    .line 212
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvUpdateStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$7(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$8(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->serialNo:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$9(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->getDPUVersionAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$10(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070569

    invoke-static {v0, v1, v5}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 217
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mBtnUpdate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$4(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 218
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mBtnUpdate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$4(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #setter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateing:Z
    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$6(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;Z)V

    .line 220
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvUpdateStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$7(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 223
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvRatio:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$11(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->currentDownloadBin:F
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$12(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mUpdateProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$13(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->currentDownloadBin:F
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$12(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 227
    :sswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvUpdateStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$7(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadString:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$14(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    const v3, 0x7f07056b

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadString:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$14(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 230
    :sswitch_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateing:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$15(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #setter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateing:Z
    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$6(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;Z)V

    .line 232
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$10(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070569

    invoke-static {v0, v1, v5}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 233
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$8(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->stopUpdate()V

    .line 234
    new-instance v0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2$1;-><init>(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;)V

    .line 243
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2$1;->start()V

    goto/16 :goto_0

    .line 202
    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_4
        0x1 -> :sswitch_3
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_2
    .end sparse-switch
.end method
