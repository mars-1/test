.class public Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "UserDetailFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private autoLogo:Landroid/widget/ImageView;

.field private info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

.field listCarName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listLogo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private pubID:Ljava/lang/String;

.field private pubName:Ljava/lang/String;

.field private targetID:Ljava/lang/String;

.field private tvNickName:Landroid/widget/TextView;

.field private tvSexCountry:Landroid/widget/TextView;

.field private tvSignature:Landroid/widget/TextView;

.field private tvTag:Landroid/widget/TextView;

.field private tvTel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->targetID:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->listLogo:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->listCarName:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->startMessageFragment()V

    return-void
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->autoLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvNickName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvSignature:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvTag:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getTagMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvTel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvSexCountry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->initAutoCarLogo(Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;Z)V

    return-void
.end method

.method private getTagMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "index"

    .prologue
    const/4 v12, 0x0

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 186
    const-string/jumbo v8, ""

    .line 211
    :goto_0
    return-object v8

    .line 188
    :cond_0
    const-string/jumbo v8, ","

    const-string/jumbo v9, " "

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\uff0c"

    const-string/jumbo v10, " "

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, strSrc:Ljava/lang/String;
    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, items:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v8, v2

    if-gtz v8, :cond_2

    .line 191
    :cond_1
    const-string/jumbo v8, ""

    goto :goto_0

    .line 193
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 195
    .local v4, res:Landroid/content/res/Resources;
    const v8, 0x7f0b0044

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, tag:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, v2

    if-lt v1, v8, :cond_3

    .line 211
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 199
    :cond_3
    :try_start_0
    aget-object v8, v2, v1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 200
    aget-object v8, v2, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 201
    .local v3, position:I
    array-length v8, v7

    if-ge v3, v8, :cond_5

    .line 202
    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v9, v7, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .end local v3           #position:I
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    .restart local v3       #position:I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 207
    .end local v3           #position:I
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "Sanda"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    aget-object v11, v2, v1

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private initAutoCarLogo(Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;Z)V
    .locals 18
    .parameter "info"
    .parameter "isShow"

    .prologue
    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getCar_id()Ljava/util/List;

    move-result-object v6

    .line 217
    .local v6, listID:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getCar_logo_url()Ljava/util/List;

    move-result-object v8

    .line 218
    .local v8, listUrl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getCar_series_name()Ljava/util/List;

    move-result-object v7

    .line 219
    .local v7, listName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-lt v2, v13, :cond_0

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0d0178

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 237
    .local v11, tvCarText:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0d0177

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 238
    .local v5, linearCarLogo:Landroid/widget/LinearLayout;
    if-eqz p2, :cond_4

    .line 239
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 242
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->listLogo:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v2, v13, :cond_3

    .line 270
    :goto_2
    return-void

    .line 222
    .end local v5           #linearCarLogo:Landroid/widget/LinearLayout;
    .end local v11           #tvCarText:Landroid/widget/TextView;
    :cond_0
    :try_start_0
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string/jumbo v14, "null"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 219
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->listCarName:Ljava/util/ArrayList;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->listLogo:Ljava/util/ArrayList;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 228
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "Sanda"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "[AutoCarLogo List is error:listID="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ";listUrl="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ";listName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 231
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 232
    .local v1, e:Ljava/lang/NullPointerException;
    const-string/jumbo v13, "Sanda"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "[AutoCarLog:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 243
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v5       #linearCarLogo:Landroid/widget/LinearLayout;
    .restart local v11       #tvCarText:Landroid/widget/TextView;
    :cond_3
    move v4, v2

    .line 244
    .local v4, index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f0300b9

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 245
    .local v12, view:Landroid/view/View;
    const v13, 0x7f0d0253

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 246
    .local v3, image:Landroid/widget/ImageView;
    new-instance v13, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;I)V

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    new-instance v13, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v13}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    new-instance v14, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v13, v14}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v13

    const v14, 0x7f020237

    invoke-virtual {v13, v14}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v13

    .line 256
    const v14, 0x7f020238

    invoke-virtual {v13, v14}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v13

    const v14, 0x7f020238

    invoke-virtual {v13, v14}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v9

    .line 257
    .local v9, options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->listLogo:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13, v3, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 258
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 261
    .end local v3           #image:Landroid/widget/ImageView;
    .end local v4           #index:I
    .end local v9           #options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .end local v12           #view:Landroid/view/View;
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v10, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->listCarName:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v2, v13, :cond_5

    .line 268
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 265
    :cond_5
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string/jumbo v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private startMessageFragment()V
    .locals 5

    .prologue
    .line 274
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    if-nez v3, :cond_0

    .line 294
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getNick_name()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getUser_name()Ljava/lang/String;

    move-result-object v1

    .line 281
    :cond_1
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-direct {v0, v3, v1, v4}, Lcom/cnlaunch/newgolo/model/ChatRoom;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ChatType;)V

    .line 282
    .local v0, chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->pubID:Ljava/lang/String;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->pubID:Ljava/lang/String;

    :goto_1
    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->pubID:Ljava/lang/String;

    .line 283
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->pubID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 284
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->pubName:Ljava/lang/String;

    iput-object v3, v0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 285
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->targetID:Ljava/lang/String;

    iput-object v3, v0, Lcom/cnlaunch/newgolo/model/ChatRoom;->request_id:Ljava/lang/String;

    .line 286
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "serialNo_Prefix"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, prefix:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->startImActivity(Lcom/cnlaunch/newgolo/model/ChatRoom;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    .end local v2           #prefix:Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "0"

    goto :goto_1
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 2
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 144
    packed-switch p1, :pswitch_data_0

    .line 149
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 146
    :pswitch_0
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, action:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->targetID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getTargetDetail(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;

    move-result-object v1

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x9c41
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0173

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvSignature:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0171

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->autoLogo:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d016f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvNickName:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0175

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvTag:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d017a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvTel:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0170

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->tvSexCountry:Landroid/widget/TextView;

    .line 79
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d017b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    .local v0, btnSend:Landroid/widget/Button;
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070049

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    const v1, 0x9c41

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->request(IZ)V

    .line 89
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 62
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v1, "target_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->targetID:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "pub_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->pubName:Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "pub_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->pubID:Ljava/lang/String;

    .line 68
    :cond_0
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 139
    const v0, 0x7f030072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroyView()V

    .line 300
    const v0, 0x9c41

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->cancelRequest(I)V

    .line 301
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 178
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 181
    :goto_0
    return-void

    .line 174
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 175
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070733

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x9c41
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 4
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_0

    .line 165
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 157
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->dismiss(Landroid/content/Context;)V

    move-object v1, p2

    .line 158
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;

    .line 159
    .local v1, response:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 160
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    move-result-object v0

    .line 161
    .local v0, info:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x9c41
        :pswitch_0
    .end packed-switch
.end method
