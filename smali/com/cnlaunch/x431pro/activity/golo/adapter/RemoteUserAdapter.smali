.class public Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteUserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;,
        Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;,
        Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;
    }
.end annotation


# instance fields
.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "mHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, datas:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mHandler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mDatas:Ljava/util/List;

    .line 37
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 38
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->setImageConfig()V

    .line 39
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->initOptions()V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private displayRemoteOrderInfo(Landroid/view/View;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;I)V
    .locals 14
    .parameter "convertView"
    .parameter "viewHold"
    .parameter "position"

    .prologue
    .line 217
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mDatas:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 218
    .local v2, goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getNick_name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getNick_name()Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, name:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, auto_code:Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 221
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userName:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :goto_2
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, signature:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 228
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :goto_3
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getFace_thumb()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, imageUrl:Ljava/lang/String;
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    const/4 v12, 0x0

    invoke-virtual {v9, v3, v10, v11, v12}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 237
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getOnline_status()Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, status:Ljava/lang/String;
    const-string/jumbo v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 239
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v10, 0x7f0205da

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    :goto_4
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    new-instance v10, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$2;

    invoke-direct {v10, p0, v2}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$2;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getCreated()Ljava/lang/String;

    move-result-object v8

    .line 257
    .local v8, time:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "null"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 258
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->msgTime:Landroid/widget/TextView;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/cnlaunch/x431pro/utils/Tools;->getDate(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getIsRead()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 261
    .local v4, isRead:Z
    if-eqz v4, :cond_8

    .line 262
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->tipNew:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    :goto_5
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->isExtend()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 267
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->parent:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 268
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->divider:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :goto_6
    return-void

    .line 218
    .end local v1           #auto_code:Ljava/lang/String;
    .end local v3           #imageUrl:Ljava/lang/String;
    .end local v4           #isRead:Z
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #signature:Ljava/lang/String;
    .end local v7           #status:Ljava/lang/String;
    .end local v8           #time:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_name()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 219
    .restart local v5       #name:Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, ""

    goto/16 :goto_1

    .line 223
    .restart local v1       #auto_code:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userName:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_id()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 231
    .restart local v6       #signature:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 240
    .restart local v3       #imageUrl:Ljava/lang/String;
    .restart local v7       #status:Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "2"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 241
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v10, 0x7f0205d8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 242
    :cond_6
    const-string/jumbo v9, "3"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 243
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v10, 0x7f0205d9

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 245
    :cond_7
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v10, 0x7f0205d9

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 264
    .restart local v4       #isRead:Z
    .restart local v8       #time:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->tipNew:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 270
    :cond_9
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->divider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 271
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->parent:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private displayRemoteRepairTitle(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;I)V
    .locals 3
    .parameter "titleViewHold"
    .parameter "position"

    .prologue
    .line 277
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    .line 278
    .local v0, goloRemoteRepairTitle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
    iget-object v1, p1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method private displayRepairInfo(Landroid/view/View;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;I)V
    .locals 11
    .parameter "convertView"
    .parameter "viewHold"
    .parameter "position"

    .prologue
    .line 163
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    .line 164
    .local v0, goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getNick_name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getNick_name()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, name:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userName:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_1
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, signature:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 173
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :goto_2
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getFace()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, imageUrl:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v7, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    const/4 v9, 0x0

    invoke-virtual {v6, v1, v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 182
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, status:Ljava/lang/String;
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 184
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v7, 0x7f0205da

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    :goto_3
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    new-instance v7, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$1;

    invoke-direct {v7, p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$1;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getCreated()Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, time:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 202
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->msgTime:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Lcom/cnlaunch/x431pro/utils/Tools;->getDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_0
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->tipNew:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->isExtend()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 207
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->parent:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->divider:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :goto_4
    return-void

    .line 164
    .end local v1           #imageUrl:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #signature:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    .end local v5           #time:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getUser_name()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 168
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getContact_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 176
    .restart local v3       #signature:Ljava/lang/String;
    :cond_3
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 185
    .restart local v1       #imageUrl:Ljava/lang/String;
    .restart local v4       #status:Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 186
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v7, 0x7f0205d8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 187
    :cond_5
    const-string/jumbo v6, "3"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 188
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v7, 0x7f0205d9

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 190
    :cond_6
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v7, 0x7f0205d9

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 210
    .restart local v5       #time:Ljava/lang/String;
    :cond_7
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->divider:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v6, p2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->parent:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private initOptions()V
    .locals 3

    .prologue
    const v2, 0x7f020236

    const/4 v1, 0x1

    .line 51
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 52
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 60
    return-void
.end method

.method private setImageConfig()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, builder:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 45
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 46
    new-instance v1, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    const/high16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 47
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, result:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, object:Ljava/lang/Object;
    instance-of v2, v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    if-eqz v2, :cond_1

    .line 85
    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    .end local v0           #object:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 86
    sget-object v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->remote_title:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->ordinal()I

    move-result v1

    :goto_0
    move v2, v1

    .line 97
    :goto_1
    return v2

    .line 88
    :cond_0
    sget-object v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->repair_title:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->ordinal()I

    move-result v1

    .line 90
    goto :goto_0

    .restart local v0       #object:Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    if-eqz v2, :cond_2

    .line 91
    sget-object v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->remote:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->ordinal()I

    move-result v1

    .line 92
    goto :goto_0

    :cond_2
    instance-of v2, v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    if-eqz v2, :cond_3

    .line 93
    sget-object v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->repair:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->ordinal()I

    move-result v1

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v2

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0c0088

    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;
    const/4 v1, 0x0

    .line 115
    .local v1, titleViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, object:Ljava/lang/Object;
    if-nez p2, :cond_2

    .line 118
    instance-of v3, v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    if-eqz v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03017a

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 120
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;

    .end local v1           #titleViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;
    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;)V

    .line 121
    .restart local v1       #titleViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;
    const v3, 0x7f0d042b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;->title:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    :goto_0
    instance-of v3, v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    if-eqz v3, :cond_4

    .line 152
    invoke-direct {p0, v1, p1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->displayRemoteRepairTitle(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;I)V

    .line 159
    :cond_0
    :goto_1
    return-object p2

    .line 124
    :cond_1
    new-instance v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;

    .end local v2           #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;
    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;)V

    .line 125
    .restart local v2       #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030030

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 126
    const v3, 0x7f0d00ad

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->parent:Landroid/view/View;

    .line 127
    const v3, 0x7f0d00b5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->divider:Landroid/view/View;

    .line 129
    const v3, 0x7f0d00b0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 128
    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userName:Landroid/widget/TextView;

    .line 131
    const v3, 0x7f0d00b1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    .line 133
    const v3, 0x7f0d00ae

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 132
    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    .line 135
    const v3, 0x7f0d00b4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 134
    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->msgTime:Landroid/widget/TextView;

    .line 136
    const v3, 0x7f0d00b2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->tipNew:Landroid/widget/TextView;

    .line 137
    const v3, 0x7f0d00b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->status:Landroid/widget/ImageView;

    .line 138
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_2
    instance-of v3, v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    if-eqz v3, :cond_3

    .line 143
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #titleViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;
    check-cast v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;

    .line 144
    .restart local v1       #titleViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$TitleViewHold;
    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;
    check-cast v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;

    .line 146
    .restart local v2       #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 147
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0

    .line 153
    :cond_4
    instance-of v3, v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    if-eqz v3, :cond_5

    .line 154
    invoke-direct {p0, p2, v2, p1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->displayRemoteOrderInfo(Landroid/view/View;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;I)V

    goto/16 :goto_1

    .line 155
    :cond_5
    instance-of v3, v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    if-eqz v3, :cond_0

    .line 156
    invoke-direct {p0, p2, v2, p1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->displayRepairInfo(Landroid/view/View;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;I)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->values()[Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public refresh(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, datas:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mDatas:Ljava/util/List;

    .line 107
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method
