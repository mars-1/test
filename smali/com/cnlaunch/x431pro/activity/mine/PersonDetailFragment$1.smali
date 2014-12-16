.class Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;
.super Landroid/os/Handler;
.source "PersonDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const v7, 0x7f020236

    const/4 v6, 0x1

    .line 135
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 166
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v4, v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;)V

    .line 138
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvSignature:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    new-instance v4, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    .line 140
    invoke-virtual {v3, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 141
    .local v1, options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->imageFace:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 142
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvNickName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getUser_name()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getSex()I

    move-result v2

    .line 144
    .local v2, sexInt:I
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvSex:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    if-ne v2, v6, :cond_3

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    const v5, 0x7f0705ae

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, ""

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, ""

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, ""

    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvAreas:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvMobile:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, ""

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvMail:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$8(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, ""

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvTag:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$9(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getIdentity_tag()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getTagMessage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$10(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 138
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .end local v2           #sexInt:I
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getSignature()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 142
    .restart local v1       #options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getNick_name()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 147
    .restart local v2       #sexInt:I
    :cond_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    const v5, 0x7f0705af

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 150
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 151
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getProvince()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 152
    :cond_6
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getCity()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 154
    :cond_7
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getMobile()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 155
    :cond_8
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 159
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .end local v2           #sexInt:I
    :pswitch_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->showNormalView()V
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$11(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)V

    .line 160
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    const/16 v4, 0x7533

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->request(I)V

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
