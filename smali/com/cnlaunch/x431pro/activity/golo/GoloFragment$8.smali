.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
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
    .line 665
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isLogin(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 666
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0706d8

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    if-lez p3, :cond_2

    .line 670
    add-int/lit8 p3, p3, -0x1

    .line 672
    :cond_2
    const/4 v4, 0x0

    .line 673
    .local v4, user:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateBindList:Ljava/util/List;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$42(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 674
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateBindList:Ljava/util/List;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$42(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #user:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    .line 678
    .restart local v4       #user:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    :goto_1
    const-string/jumbo v6, "0"

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getIf_pass()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 679
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0706c5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_3
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #user:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    .restart local v4       #user:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    goto :goto_1

    .line 684
    :cond_4
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNick_name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 685
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNick_name()Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, name:Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUser_id()Ljava/lang/String;

    move-result-object v5

    .line 690
    .local v5, userId:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSerial_no()Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, seriNo:Ljava/lang/String;
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatRoom;

    sget-object v6, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-direct {v0, v5, v2, v6}, Lcom/cnlaunch/newgolo/model/ChatRoom;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ChatType;)V

    .line 693
    .local v0, chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_3
    int-to-long v6, v6

    iput-wide v6, v0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 695
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$16(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 696
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$9(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    const-string/jumbo v6, "followed"

    :goto_4
    iput-object v6, v0, Lcom/cnlaunch/newgolo/model/ChatRoom;->customer_type:Ljava/lang/String;

    .line 697
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0, v3}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->startBundingActivity(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/ChatRoom;Ljava/lang/String;)V

    .line 699
    const-string/jumbo v6, "GoloFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "userId:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",vip_user.getName():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", seriNo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    new-instance v1, Lcom/cnlaunch/newgolo/bean/UserInfo;

    invoke-direct {v1}, Lcom/cnlaunch/newgolo/bean/UserInfo;-><init>()V

    .line 701
    .local v1, info:Lcom/cnlaunch/newgolo/bean/UserInfo;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 702
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/cnlaunch/newgolo/bean/UserInfo;->user_id:J

    .line 703
    iput-object v2, v1, Lcom/cnlaunch/newgolo/bean/UserInfo;->name:Ljava/lang/String;

    .line 704
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getAuto_logos()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/cnlaunch/newgolo/bean/UserInfo;->head_uri:Ljava/lang/String;

    .line 705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/cnlaunch/newgolo/bean/UserInfo;->time:J

    .line 706
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v6, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->saveUserInfo(Lcom/cnlaunch/newgolo/bean/UserInfo;)V

    goto/16 :goto_0

    .line 687
    .end local v0           #chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    .end local v1           #info:Lcom/cnlaunch/newgolo/bean/UserInfo;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #seriNo:Ljava/lang/String;
    .end local v5           #userId:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUser_name()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #name:Ljava/lang/String;
    goto/16 :goto_2

    .line 693
    .restart local v0       #chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    .restart local v3       #seriNo:Ljava/lang/String;
    .restart local v5       #userId:Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 696
    :cond_7
    const-string/jumbo v6, ""

    goto :goto_4
.end method
