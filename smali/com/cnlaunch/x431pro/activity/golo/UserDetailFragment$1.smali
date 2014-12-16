.class Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;
.super Landroid/os/Handler;
.source "UserDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const v11, 0x7f020237

    const/4 v8, 0x1

    .line 94
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 131
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 134
    :goto_0
    return-void

    .line 96
    :pswitch_1
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v9, v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;)V

    .line 97
    const-string/jumbo v6, ""

    .line 98
    .local v6, tempUrl:Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 99
    .local v5, tempName:Ljava/lang/String;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getUser_id()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "666666"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 100
    const-string/jumbo v6, "drawable://2130838056"

    .line 101
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    const v9, 0x7f070092

    invoke-virtual {v7, v9}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 106
    :goto_1
    new-instance v7, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    new-instance v9, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    invoke-direct {v9, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v7, v9}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    .line 107
    invoke-virtual {v7, v11}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 108
    .local v3, options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->autoLogo:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v7, v6, v9, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 109
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvNickName:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$3(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvSignature:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$4(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, ""

    :goto_2
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvTag:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$5(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getIdentity_tag()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getTagMessage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvTel:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$7(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getMobile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, ""

    :goto_3
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, ""

    :goto_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getProvince()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, ""

    :goto_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, ""

    :goto_6
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getSex()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 118
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvSexCountry:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$8(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_7
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v9, "current_country"

    const-string/jumbo v10, ""

    invoke-virtual {v7, v9, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, countryID:Ljava/lang/String;
    const-string/jumbo v7, "CN"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string/jumbo v7, "ZH"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 125
    .local v2, isShowLogo:Z
    :goto_8
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v8

    #calls: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->initAutoCarLogo(Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;Z)V
    invoke-static {v7, v8, v2}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$9(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;Z)V

    goto/16 :goto_0

    .line 103
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #countryID:Ljava/lang/String;
    .end local v2           #isShowLogo:Z
    .end local v3           #options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getFace_large()Ljava/lang/String;

    move-result-object v6

    .line 104
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getNick_name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getUser_id()Ljava/lang/String;

    move-result-object v5

    :goto_9
    goto/16 :goto_1

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getNick_name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getRename()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, ""

    :goto_a
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "("

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getRename()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 110
    .restart local v3       #options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_3
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getSignature()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 112
    :cond_4
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getMobile()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 114
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v9}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 115
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v9}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getProvince()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    .line 116
    :cond_7
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getCity()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    .line 120
    :cond_8
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getSex()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, sex:Ljava/lang/String;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvSexCountry:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$8(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/TextView;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    const v11, 0x7f0705b0

    invoke-virtual {v7, v11}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_b
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "  "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_9
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    const v11, 0x7f0705b1

    invoke-virtual {v7, v11}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    .end local v4           #sex:Ljava/lang/String;
    .restart local v1       #countryID:Ljava/lang/String;
    :cond_a
    move v2, v8

    .line 124
    goto/16 :goto_8

    .line 128
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #countryID:Ljava/lang/String;
    .end local v3           #options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .end local v5           #tempName:Ljava/lang/String;
    .end local v6           #tempUrl:Ljava/lang/String;
    :pswitch_2
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x11

    invoke-static {v7, v8, v9}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
