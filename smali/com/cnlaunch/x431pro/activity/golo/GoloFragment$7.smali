.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setItemClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 25
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isLogin(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f0706d8

    invoke-static/range {v22 .. v23}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    const/16 v19, 0x0

    .line 572
    .local v19, user:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;
    const/4 v11, 0x0

    .line 573
    .local v11, name:Ljava/lang/String;
    const-wide/16 v15, 0x0

    .line 574
    .local v15, pubId:J
    const/16 v17, 0x0

    .line 575
    .local v17, req_Id:Ljava/lang/String;
    const/4 v5, 0x0

    .line 576
    .local v5, face_thrumb:Ljava/lang/String;
    const/4 v12, 0x0

    .line 577
    .local v12, nick_name:Ljava/lang/String;
    const/16 v21, 0x0

    .line 578
    .local v21, user_name:Ljava/lang/String;
    const/16 v20, 0x0

    .line 579
    .local v20, user_id:Ljava/lang/String;
    if-lez p3, :cond_2

    .line 580
    add-int/lit8 p3, p3, -0x1

    .line 583
    :cond_2
    const/4 v13, 0x0

    .line 584
    .local v13, object:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$9(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 585
    new-instance v13, Ljava/lang/Object;

    .end local v13           #object:Ljava/lang/Object;
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 586
    .restart local v13       #object:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$34(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_3

    .line 587
    const-string/jumbo v22, "GoloFragment"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "filterDateList.size() != 0:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v24, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;
    invoke-static/range {v24 .. v24}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$34(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$34(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 592
    :goto_1
    instance-of v0, v13, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object v8, v13

    .line 593
    check-cast v8, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    .line 594
    .local v8, goloRemoteRepairTitle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->isStatus()Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->setStatus(Z)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->getType()I

    move-result v23

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->isStatus()Z

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->hidenList(IZ)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$10(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$10(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 590
    .end local v8           #goloRemoteRepairTitle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$8(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    goto :goto_1

    .line 594
    .restart local v8       #goloRemoteRepairTitle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
    :cond_4
    const/16 v22, 0x1

    goto :goto_2

    .line 600
    .end local v8           #goloRemoteRepairTitle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
    :cond_5
    instance-of v0, v13, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object v9, v13

    .line 601
    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    .line 602
    .local v9, goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getFace()Ljava/lang/String;

    move-result-object v5

    .line 603
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getUser_name()Ljava/lang/String;

    move-result-object v21

    .line 604
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getSend_id()Ljava/lang/String;

    move-result-object v20

    .line 633
    .end local v9           #goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    .end local v13           #object:Ljava/lang/Object;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    :goto_4
    move/from16 v0, v22

    int-to-long v15, v0

    .line 634
    invoke-static {v12}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    move-object v11, v12

    .line 635
    :goto_5
    new-instance v4, Lcom/cnlaunch/newgolo/model/ChatRoom;

    sget-object v22, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v11, v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ChatType;)V

    .line 636
    .local v4, chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    iput-wide v15, v4, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$16(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 638
    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/cnlaunch/newgolo/model/ChatRoom;->request_id:Ljava/lang/String;

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$9(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    const-string/jumbo v22, "followed"

    :goto_6
    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/cnlaunch/newgolo/model/ChatRoom;->customer_type:Ljava/lang/String;

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v22

    const-string/jumbo v23, "serialNo_Prefix"

    invoke-virtual/range {v22 .. v23}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 641
    .local v14, prefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$9(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v22

    check-cast v13, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    move-object/from16 v0, v22

    invoke-static {v0, v4, v14, v13}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->startScheduledActivity(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/ChatRoom;Ljava/lang/String;Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;)V

    .line 647
    :cond_7
    :goto_7
    const-string/jumbo v22, "GoloFragment"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "position:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", requst_id:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v4, Lcom/cnlaunch/newgolo/model/ChatRoom;->request_id:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", user_id:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v24, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v10, Lcom/cnlaunch/newgolo/bean/UserInfo;

    invoke-direct {v10}, Lcom/cnlaunch/newgolo/bean/UserInfo;-><init>()V

    .line 649
    .local v10, info:Lcom/cnlaunch/newgolo/bean/UserInfo;
    move-object/from16 v18, v20

    .line 650
    .local v18, uId:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    const-string/jumbo v22, "null"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 651
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v10, Lcom/cnlaunch/newgolo/bean/UserInfo;->user_id:J

    .line 652
    iput-object v11, v10, Lcom/cnlaunch/newgolo/bean/UserInfo;->name:Ljava/lang/String;

    .line 653
    iput-object v5, v10, Lcom/cnlaunch/newgolo/bean/UserInfo;->head_uri:Ljava/lang/String;

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v10, Lcom/cnlaunch/newgolo/bean/UserInfo;->time:J

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->saveUserInfo(Lcom/cnlaunch/newgolo/bean/UserInfo;)V

    goto/16 :goto_0

    .line 605
    .end local v4           #chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    .end local v10           #info:Lcom/cnlaunch/newgolo/bean/UserInfo;
    .end local v14           #prefix:Ljava/lang/String;
    .end local v18           #uId:Ljava/lang/String;
    .restart local v13       #object:Ljava/lang/Object;
    :cond_8
    instance-of v0, v13, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object v7, v13

    .line 606
    check-cast v7, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 607
    .local v7, goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getFace_thumb()Ljava/lang/String;

    move-result-object v5

    .line 608
    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getId()Ljava/lang/String;

    move-result-object v17

    .line 609
    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_name()Ljava/lang/String;

    move-result-object v21

    .line 610
    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getNick_name()Ljava/lang/String;

    move-result-object v12

    .line 611
    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_id()Ljava/lang/String;

    move-result-object v20

    .line 612
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setIsRead(Ljava/lang/Boolean;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    const-string/jumbo v23, "true"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateRemoteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$40(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$10(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    move-result-object v22

    if-eqz v22, :cond_9

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$10(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->notifyDataSetChanged()V

    .line 618
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v23, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$8(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x2

    invoke-virtual/range {v22 .. v23}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateRemoteTitle(I)V

    goto/16 :goto_3

    .line 620
    .end local v7           #goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$9(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateAttList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$41(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_b

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateAttList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$41(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #user:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;
    check-cast v19, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    .restart local v19       #user:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;
    :goto_8
    move-object/from16 v6, v19

    .line 627
    check-cast v6, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    .line 628
    .local v6, goloAttentionInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;
    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getFace_thumb()Ljava/lang/String;

    move-result-object v5

    .line 629
    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getUser_name()Ljava/lang/String;

    move-result-object v21

    .line 630
    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getNick_name()Ljava/lang/String;

    move-result-object v12

    .line 631
    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getUser_id()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    .line 624
    .end local v6           #goloAttentionInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;
    :cond_b
    const-string/jumbo v22, "GoloFragment"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "guanzhuDateList.size() != 0:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v24, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;
    invoke-static/range {v24 .. v24}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$7(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$7(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #user:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;
    check-cast v19, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    .restart local v19       #user:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;
    goto :goto_8

    .line 633
    .end local v13           #object:Ljava/lang/Object;
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_d
    move-object/from16 v11, v21

    .line 634
    goto/16 :goto_5

    .line 639
    .restart local v4       #chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    :cond_e
    const-string/jumbo v22, ""

    goto/16 :goto_6

    .line 643
    .restart local v14       #prefix:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$9(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v4, v14}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->startFollowedActivity(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/ChatRoom;Ljava/lang/String;)V

    goto/16 :goto_7
.end method
