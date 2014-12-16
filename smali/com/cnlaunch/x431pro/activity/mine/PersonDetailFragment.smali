.class public Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "PersonDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private btnEdit:Landroid/widget/Button;

.field private btnExit:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private editNickName:Landroid/widget/EditText;

.field private editSignature:Landroid/widget/EditText;

.field private imageFace:Landroid/widget/ImageView;

.field private info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

.field private itemAreas:Landroid/view/View;

.field private itemMail:Landroid/view/View;

.field private itemTel:Landroid/view/View;

.field private linearEditNickName:Landroid/widget/LinearLayout;

.field private linearTagGroup:Landroid/widget/LinearLayout;

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

.field private radioGroup_sex:Landroid/widget/RadioGroup;

.field private sexFlag:I

.field private tagCheckBox:[Landroid/widget/CheckBox;

.field private tagListCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private titleTag:Landroid/widget/TextView;

.field private tvAreas:Landroid/widget/TextView;

.field private tvMail:Landroid/widget/TextView;

.field private tvMobile:Landroid/widget/TextView;

.field private tvNickName:Landroid/widget/TextView;

.field private tvSex:Landroid/widget/TextView;

.field private tvSignature:Landroid/widget/TextView;

.field private tvTag:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->listLogo:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->listCarName:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->sexFlag:I

    .line 132
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mHandler:Landroid/os/Handler;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagListCode:Ljava/util/List;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvSignature:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getTagMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->showNormalView()V

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->sexFlag:I

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->imageFace:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvNickName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvSex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvAreas:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvMobile:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvMail:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvTag:Landroid/widget/TextView;

    return-object v0
.end method

.method private getTagMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "index"

    .prologue
    const/4 v12, 0x0

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 329
    const-string/jumbo v8, ""

    .line 356
    :goto_0
    return-object v8

    .line 331
    :cond_0
    const-string/jumbo v8, ","

    const-string/jumbo v9, " "

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\uff0c"

    const-string/jumbo v10, " "

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 332
    .local v6, strSrc:Ljava/lang/String;
    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, items:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v8, v2

    if-gtz v8, :cond_2

    .line 334
    :cond_1
    const-string/jumbo v8, ""

    goto :goto_0

    .line 336
    :cond_2
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagListCode:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 339
    .local v4, res:Landroid/content/res/Resources;
    const v8, 0x7f090044

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 341
    .local v7, tag:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, v2

    if-lt v1, v8, :cond_3

    .line 356
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 343
    :cond_3
    :try_start_0
    aget-object v8, v2, v1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 344
    aget-object v8, v2, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 345
    .local v3, position:I
    array-length v8, v7

    if-ge v3, v8, :cond_5

    .line 346
    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v9, v7, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagListCode:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v3           #position:I
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 349
    .restart local v3       #position:I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 352
    .end local v3           #position:I
    :catch_0
    move-exception v0

    .line 353
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

.method private getTagSettingCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v3, sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 483
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 489
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, code:Ljava/lang/String;
    return-object v0

    .line 479
    .end local v0           #code:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_3

    .line 486
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private hasLogin()Z
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "login_state"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initRadioTag()V
    .locals 7

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 443
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f090044

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, tag:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 445
    .local v0, i:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0c01a7

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    aput-object v4, v5, v0

    .line 446
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0c01a1

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    aput-object v4, v5, v1

    .line 447
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0c01a2

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    aput-object v4, v5, v0

    .line 448
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0c01a3

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    aput-object v4, v5, v1

    .line 449
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0c01a4

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    aput-object v4, v5, v0

    .line 450
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0c01a5

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    aput-object v4, v5, v1

    .line 451
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0c01a6

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    aput-object v4, v5, v0

    .line 452
    const/4 v0, 0x0

    .line 453
    .end local v1           #i:I
    .restart local v0       #i:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget-object v4, v4, v0

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget-object v4, v4, v0

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget-object v4, v4, v1

    const/4 v5, 0x5

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget-object v4, v4, v0

    const/4 v5, 0x6

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 460
    return-void
.end method

.method private initTransitionLayout()V
    .locals 6

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0192

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 465
    .local v1, linearSexShow:Landroid/widget/RelativeLayout;
    invoke-static {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/BottomButtonTransition;->getLayoutTransition(Ljava/lang/Object;)Landroid/animation/LayoutTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 466
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0198

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 467
    .local v0, linearLayout:Landroid/widget/LinearLayout;
    invoke-static {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/BottomButtonTransition;->getLayoutTransition(Ljava/lang/Object;)Landroid/animation/LayoutTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 468
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c018e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 469
    .local v2, relativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/BottomButtonTransition;->getLayoutTransition(Ljava/lang/Object;)Landroid/animation/LayoutTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 470
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c019e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 471
    .local v3, tagLayout:Landroid/widget/RelativeLayout;
    invoke-static {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/BottomButtonTransition;->getLayoutTransition(Ljava/lang/Object;)Landroid/animation/LayoutTransition;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 472
    return-void
.end method

.method private showEditView()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 361
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    if-nez v1, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0706da

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 419
    :goto_0
    return-void

    .line 366
    :cond_0
    const/16 v1, 0x7533

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->request(I)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->btnEdit:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->btnExit:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->btnSave:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvNickName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->linearEditNickName:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvSex:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->radioGroup_sex:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 377
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagListCode:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 382
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->editNickName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getNick_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvSignature:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->editSignature:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 391
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->editSignature:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_5

    .line 400
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->titleTag:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->linearTagGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getSex()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 416
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->radioGroup_sex:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0197

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 377
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 378
    .local v0, index:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 379
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 402
    .end local v0           #index:Ljava/lang/Integer;
    :cond_5
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->titleTag:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 410
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->radioGroup_sex:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0195

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 413
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->radioGroup_sex:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0196

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showNormalView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 423
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->btnEdit:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 424
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->btnExit:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->btnSave:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 426
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvNickName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->linearEditNickName:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 428
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->radioGroup_sex:Landroid/widget/RadioGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 429
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tagCheckBox:[Landroid/widget/CheckBox;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    .line 432
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvSex:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->linearTagGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->editSignature:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 436
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvSignature:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->titleTag:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    return-void

    .line 429
    :cond_0
    aget-object v0, v3, v1

    .line 430
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 10
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 176
    packed-switch p1, :pswitch_data_0

    .line 203
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v7

    :goto_0
    return-object v7

    .line 178
    :pswitch_0
    new-instance v6, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    .line 180
    .local v6, userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "zh"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 181
    const-string/jumbo v1, "1002"

    .line 185
    .local v1, lan_id:Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;

    move-result-object v7

    goto :goto_0

    .line 183
    .end local v1           #lan_id:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #lan_id:Ljava/lang/String;
    goto :goto_1

    .line 187
    .end local v1           #lan_id:Ljava/lang/String;
    .end local v6           #userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;
    :pswitch_1
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, actionUpLoad:Lcom/cnlaunch/x431pro/module/user/action/UserAction;
    new-instance v2, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;-><init>()V

    .line 189
    .local v2, setinginfo:Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->editNickName:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, tempNickName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getTagSettingCode()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, tempTag:Ljava/lang/String;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->editSignature:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, tempSingtrue:Ljava/lang/String;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getNick_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 193
    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->setNickname(Ljava/lang/String;)V

    .line 195
    :cond_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 196
    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->setSignature(Ljava/lang/String;)V

    .line 198
    :cond_2
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->sexFlag:I

    invoke-virtual {v2, v7}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->setSex(I)V

    .line 199
    const-string/jumbo v7, "Sanda"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sexFlag="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->sexFlag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->setTag(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->setUserInfo(Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v7

    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x7533
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0173

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvSignature:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0171

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->imageFace:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c016f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvNickName:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c017a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvMobile:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01ab

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvMail:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01b1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvAreas:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0193

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvSex:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0175

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->tvTag:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0174

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->titleTag:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0191

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->editNickName:Landroid/widget/EditText;

    .line 93
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c019d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->editSignature:Landroid/widget/EditText;

    .line 94
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->itemAreas:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->itemAreas:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01a8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->itemMail:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->itemMail:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01ac

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->itemTel:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->itemTel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0199

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->btnEdit:Landroid/widget/Button;

    .line 101
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c019a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->btnSave:Landroid/widget/Button;

    .line 102
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c019b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->btnExit:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->btnEdit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->btnExit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0194

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->radioGroup_sex:Landroid/widget/RadioGroup;

    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->radioGroup_sex:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c018f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->linearEditNickName:Landroid/widget/LinearLayout;

    .line 125
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01a0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->linearTagGroup:Landroid/widget/LinearLayout;

    .line 126
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->initRadioTag()V

    .line 127
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->initTransitionLayout()V

    .line 128
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070030

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    const/16 v0, 0x7533

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->request(IZ)V

    .line 130
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v4, 0x7f0706da

    const v3, 0x7f0704df

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 258
    :sswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->hasLogin()Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 266
    :cond_2
    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->replaceFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :sswitch_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->hasLogin()Z

    move-result v2

    if-nez v2, :cond_3

    .line 270
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 273
    :cond_3
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 274
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 277
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    if-eqz v2, :cond_0

    .line 280
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v0, bundleEmail:Landroid/os/Bundle;
    const-string/jumbo v2, "email"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v2, "is_bind_email"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getIs_bind_email()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 286
    .end local v0           #bundleEmail:Landroid/os/Bundle;
    :sswitch_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->hasLogin()Z

    move-result v2

    if-nez v2, :cond_5

    .line 287
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 290
    :cond_5
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 291
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 294
    :cond_6
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    if-eqz v2, :cond_0

    .line 297
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v1, bundlePhone:Landroid/os/Bundle;
    const-string/jumbo v2, "phone_number"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v2, "is_bind_mobile"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getIs_bind_mobile()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 303
    .end local v1           #bundlePhone:Landroid/os/Bundle;
    :sswitch_3
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->showEditView()V

    goto/16 :goto_0

    .line 306
    :sswitch_4
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->showNormalView()V

    goto/16 :goto_0

    .line 309
    :sswitch_5
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070030

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    const/16 v2, 0x7534

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->request(I)V

    goto/16 :goto_0

    .line 256
    :sswitch_data_0
    .sparse-switch
        0x7f0c0199 -> :sswitch_3
        0x7f0c019a -> :sswitch_5
        0x7f0c019b -> :sswitch_4
        0x7f0c01a8 -> :sswitch_1
        0x7f0c01ac -> :sswitch_2
        0x7f0c01ae -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 171
    const v0, 0x7f030077

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroyView()V

    .line 251
    const/16 v0, 0x7533

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->cancelRequest(I)V

    .line 252
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 232
    packed-switch p1, :pswitch_data_0

    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 245
    :goto_0
    return-void

    .line 234
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 235
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070735

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 238
    :pswitch_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x7533
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 78
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 5
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 209
    packed-switch p1, :pswitch_data_0

    .line 225
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 211
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->dismiss(Landroid/content/Context;)V

    move-object v2, p2

    .line 212
    check-cast v2, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;

    .line 213
    .local v2, response:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 214
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v1

    .line 215
    .local v1, info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v1           #info:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    .end local v2           #response:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
    :pswitch_1
    move-object v0, p2

    .line 219
    check-cast v0, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 220
    .local v0, comReq:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x7533
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
