.class Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;
.super Landroid/os/Handler;
.source "RemoteReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    .line 167
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const v9, 0x7f0706fa

    const/16 v8, 0x11

    .line 170
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 207
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;

    .line 173
    .local v3, info:Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v6

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->getMine_car_plate_num()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->setReportTheme(Ljava/lang/String;)V

    .line 174
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvReportTitle:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->getMine_car_plate_num()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    invoke-virtual {v8, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvCarName:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    const v9, 0x7f070708

    invoke-virtual {v8, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->getCar_series_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvCarVIN:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    const v9, 0x7f070709

    invoke-virtual {v8, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->getCar_brand_vin()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 179
    .end local v3           #info:Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;
    :pswitch_1
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f07070c

    invoke-static {v6, v7, v8}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 182
    :pswitch_2
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f07070d

    invoke-static {v6, v7, v8}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 185
    :pswitch_3
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f07070e

    invoke-static {v6, v7, v8}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 186
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->btnSendReport:Landroid/widget/Button;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Landroid/widget/Button;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    :try_start_0
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->backInfo:Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->access$5(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 189
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->backInfo:Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->access$5(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, url:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getRemoteDiagRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v4

    .line 191
    .local v4, remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    new-instance v1, Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherUseID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherUseName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-direct {v1, v6, v7, v8}, Lcom/cnlaunch/newgolo/model/ChatRoom;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ChatType;)V

    .line 192
    .local v1, chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherPublicID()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 193
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherPublicName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 194
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getRequest_id()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->request_id:Ljava/lang/String;

    .line 195
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/cnlaunch/newgolo/model/ChatRoom;->createMessage(I)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    .line 196
    .local v0, chatMessage:Lcom/cnlaunch/newgolo/model/ChatMessage;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    const v8, 0x7f0706fa

    invoke-virtual {v7, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setText(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherPublicID()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupId(J)V

    .line 198
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherPublicName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupName(Ljava/lang/String;)V

    .line 199
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 201
    .end local v0           #chatMessage:Lcom/cnlaunch/newgolo/model/ChatMessage;
    .end local v1           #chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    .end local v4           #remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    .end local v5           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 202
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 203
    const-string/jumbo v6, "Sanda"

    const-string/jumbo v7, "RemoteReport SendMessage is NullPointerException!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
