.class public Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "ProvinceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final REQ_GET_PROVINCELIST_CODE:I

.field private Search_TextChanged:Landroid/text/TextWatcher;

.field private action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

.field private adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

.field private btn_cancel:Landroid/widget/Button;

.field private characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

.field private edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

.field private lv_area:Landroid/widget/ListView;

.field private ncode:Ljava/lang/String;

.field private pcode:Ljava/lang/String;

.field private pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

.field private provinceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/user/model/Province;",
            ">;"
        }
    .end annotation
.end field

.field private provinceNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;",
            ">;"
        }
    .end annotation
.end field

.field private sidebar:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

.field private touchLetterChanged:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 52
    const/16 v0, 0x83c

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->REQ_GET_PROVINCELIST_CODE:I

    .line 214
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->touchLetterChanged:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    .line 230
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->Search_TextChanged:Landroid/text/TextWatcher;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;)Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->lv_area:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->filterData(Ljava/lang/String;)V

    return-void
.end method

.method private filledData(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, date:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, mSortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 208
    return-object v1

    .line 193
    :cond_0
    new-instance v3, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;-><init>()V

    .line 194
    .local v3, sortModel:Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->setName(Ljava/lang/String;)V

    .line 196
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, pinyin:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 192
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, sortString:Ljava/lang/String;
    const-string/jumbo v5, "[A-Z]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->setSortLetters(Ljava/lang/String;)V

    .line 206
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_3
    const-string/jumbo v5, "#"

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private filterData(Ljava/lang/String;)V
    .locals 6
    .parameter "filterStr"

    .prologue
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, filterDateList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->provinceNameList:Ljava/util/List;

    .line 267
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    if-eqz v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    invoke-virtual {v3, v0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->updateListView(Ljava/util/List;)V

    .line 271
    :cond_1
    return-void

    .line 258
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->provinceNameList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;

    .line 260
    .local v2, sortModel:Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    invoke-virtual {v4, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 262
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAreaCode(Ljava/lang/String;)V
    .locals 5
    .parameter "countryName"

    .prologue
    .line 160
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->provinceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    return-void

    .line 160
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/user/model/Province;

    .line 161
    .local v0, bean:Lcom/cnlaunch/x431pro/module/user/model/Province;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Province;->getDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Province;->getPcode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->pcode:Ljava/lang/String;

    .line 163
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v1, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "ncode"

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->ncode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v3, "pcode"

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->pcode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 89
    const v0, 0x7f0705b1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->setTitle(I)V

    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getInstance()Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    .line 92
    new-instance v0, Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    .line 94
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d035b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->lv_area:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->lv_area:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d035a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/ClearEditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->Search_TextChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d035c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->sidebar:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->sidebar:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->touchLetterChanged:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setOnTouchingLetterChangedListener(Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0050

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->btn_cancel:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 104
    const/16 v0, 0x83c

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->request(I)V

    .line 105
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 3
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 114
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->ncode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getProvinceList(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;

    move-result-object v0

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x83c
        :pswitch_0
    .end packed-switch
.end method

.method public getProvinceNameList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/user/model/Province;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/Province;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v2, res:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 179
    .end local v0           #i:I
    :cond_0
    return-object v2

    .line 175
    .restart local v0       #i:I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/module/user/model/Province;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/Province;->getDisplay()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, name:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    new-instance v1, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 75
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v1, "ncode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->ncode:Ljava/lang/String;

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->initViews()V

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 277
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 278
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x7f0d0050
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 85
    const v0, 0x7f030135

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 1
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x83c
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
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
    .line 151
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 153
    :pswitch_0
    const v1, 0x7f0d035e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    .local v0, provinceName:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->getAreaCode(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d035b
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 4
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 123
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 124
    check-cast v0, Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;

    .line 125
    .local v0, res:Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->isSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;->getData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->provinceList:Ljava/util/ArrayList;

    .line 127
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->provinceList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->getProvinceNameList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->filledData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->provinceNameList:Ljava/util/List;

    .line 129
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->provinceNameList:Ljava/util/List;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 130
    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->provinceNameList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    .line 131
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->lv_area:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x83c
        :pswitch_0
    .end packed-switch
.end method
