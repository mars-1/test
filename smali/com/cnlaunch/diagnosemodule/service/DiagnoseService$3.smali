.class Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;
.super Landroid/os/Handler;
.source "DiagnoseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .parameter "msg"

    .prologue
    .line 137
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 216
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 139
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v6, v3, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mClient:Landroid/os/Messenger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v16

    .line 220
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Error(100):"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v3, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 142
    .end local v16           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    .line 143
    .local v11, bfeedback:Landroid/os/Bundle;
    const-string/jumbo v3, "type"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 144
    .local v29, type:Ljava/lang/String;
    const-string/jumbo v3, "cmd"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 145
    .local v13, cmd:Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-static {v0, v13}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 147
    .local v15, data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #calls: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->feedbackCMD(Ljava/lang/String;)V
    invoke-static {v3, v15}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$3(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v11           #bfeedback:Landroid/os/Bundle;
    .end local v13           #cmd:Ljava/lang/String;
    .end local v15           #data:Ljava/lang/String;
    .end local v29           #type:Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    .line 151
    .local v20, maskback:Landroid/os/Bundle;
    const-string/jumbo v3, "type"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 152
    .local v19, maskType:Ljava/lang/String;
    const-string/jumbo v3, "cmd"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 153
    .local v18, maskList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$2(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->setDataStreamPageMask(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 156
    .end local v18           #maskList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #maskType:Ljava/lang/String;
    .end local v20           #maskback:Landroid/os/Bundle;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v6, v3, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mClient:Landroid/os/Messenger;

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 158
    .local v12, blaunch:Landroid/os/Bundle;
    const-string/jumbo v3, "LibPath"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 159
    .local v26, path:Ljava/lang/String;
    const-string/jumbo v3, "LibLanguage"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 160
    .local v17, language:Ljava/lang/String;
    const/4 v3, 0x0

    sput-boolean v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    #calls: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->launchDiagnose(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0, v1}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$4(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    .end local v12           #blaunch:Landroid/os/Bundle;
    .end local v17           #language:Ljava/lang/String;
    .end local v26           #path:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #calls: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->launchWifi()V
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$5(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)V

    goto/16 :goto_0

    .line 168
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseStatue:I
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$1(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 169
    invoke-static {}, Lcom/launch/rcu/socket/SocketCall;->getInstance()Lcom/launch/rcu/socket/SocketCall;

    move-result-object v3

    sget-object v6, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    sget-object v8, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v3, v6, v8}, Lcom/launch/rcu/socket/SocketCall;->sendRemoteData(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 170
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseStatue:I
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$1(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$2(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->backToPreviousLevel()V

    goto/16 :goto_0

    .line 175
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v25

    .line 176
    .local v25, pageb:Landroid/os/Bundle;
    const-string/jumbo v3, "type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 177
    .local v24, pageType:Ljava/lang/String;
    const-string/jumbo v3, "cmd"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 178
    .local v23, pageCmd:Ljava/lang/String;
    const-string/jumbo v3, "page"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 179
    .local v22, page:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$2(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v3, v0, v1, v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->switchPage(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 183
    .end local v22           #page:I
    .end local v23           #pageCmd:Ljava/lang/String;
    .end local v24           #pageType:Ljava/lang/String;
    .end local v25           #pageb:Landroid/os/Bundle;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$2(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->onRemoteStatusListener:Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;
    invoke-static {v6}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$6(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->setRemoteDiagnoseStatueCallback(Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;)V

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    .line 186
    .local v10, bRemoteDiag:Landroid/os/Bundle;
    const-string/jumbo v3, "ip"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, ip:Ljava/lang/String;
    const-string/jumbo v3, "port"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 188
    .local v5, port:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    const-string/jumbo v6, "identify"

    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    #setter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseStatue:I
    invoke-static {v3, v6}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$7(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseStatue:I
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$1(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)I

    move-result v3

    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->setDiagIdentity(I)V

    .line 190
    const-string/jumbo v3, "info"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, info:Ljava/lang/String;
    invoke-static {}, Lcom/launch/rcu/socket/SocketCall;->getInstance()Lcom/launch/rcu/socket/SocketCall;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseStatue:I
    invoke-static {v6}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$1(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/launch/rcu/socket/SocketCall;->StartRemoteDiag(Ljava/lang/String;IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 195
    .end local v4           #ip:Ljava/lang/String;
    .end local v5           #port:I
    .end local v7           #info:Ljava/lang/String;
    .end local v10           #bRemoteDiag:Landroid/os/Bundle;
    :pswitch_9
    invoke-static {}, Lcom/launch/rcu/socket/SocketCall;->getInstance()Lcom/launch/rcu/socket/SocketCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/launch/rcu/socket/SocketCall;->StopRemoteDiag()V

    .line 197
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->setVersionCom(Z)V

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    const/4 v6, 0x3

    #setter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseStatue:I
    invoke-static {v3, v6}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$7(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseStatue:I
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$1(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)I

    move-result v3

    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->setDiagIdentity(I)V

    goto/16 :goto_0

    .line 203
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v27

    .line 204
    .local v27, sendDialogBundle:Landroid/os/Bundle;
    const-string/jumbo v3, "type"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 205
    .local v14, custom_type:Ljava/lang/String;
    const-string/jumbo v3, "ui_type"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 206
    .local v30, ui_type:Ljava/lang/String;
    const-string/jumbo v3, "title"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 207
    .local v28, title:Ljava/lang/String;
    const-string/jumbo v3, "message"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 208
    .local v21, message:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-static {v14, v0, v1, v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendCustomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    .end local v14           #custom_type:Ljava/lang/String;
    .end local v21           #message:Ljava/lang/String;
    .end local v27           #sendDialogBundle:Landroid/os/Bundle;
    .end local v28           #title:Ljava/lang/String;
    .end local v30           #ui_type:Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v3, "bcf"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "msg.what: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    .line 213
    .local v9, bBundle:Landroid/os/Bundle;
    const-string/jumbo v3, "datastream_record"

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->datastreamRecord:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
