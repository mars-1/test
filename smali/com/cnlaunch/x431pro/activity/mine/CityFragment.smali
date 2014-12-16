.class public Lcom/cnlaunch/x431pro/activity/mine/CityFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "CityFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final REQ_GET_CITYLIST_CODE:I

.field private final REQ_SET_AREA_CODE:I

.field private Search_TextChanged:Landroid/text/TextWatcher;

.field private action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

.field private adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

.field private btn_cancel:Landroid/widget/Button;

.field private ccode:Ljava/lang/String;

.field private characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

.field private cityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/user/model/City;",
            ">;"
        }
    .end annotation
.end field

.field private cityNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;",
            ">;"
        }
    .end annotation
.end field

.field private edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

.field private lv_area:Landroid/widget/ListView;

.field private ncode:Ljava/lang/String;

.field private pcode:Ljava/lang/String;

.field private pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

.field private sidebar:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

.field private touchLetterChanged:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 50
    const/16 v0, 0x83e

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->REQ_GET_CITYLIST_CODE:I

    .line 52
    const/16 v0, 0x83f

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->REQ_SET_AREA_CODE:I

    .line 227
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/CityFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->touchLetterChanged:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    .line 243
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/CityFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->Search_TextChanged:Landroid/text/TextWatcher;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/CityFragment;)Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/CityFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->lv_area:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/CityFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->filterData(Ljava/lang/String;)V

    return-void
.end method

.method private filledData(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
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
    .line 203
    .local p1, date:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, mSortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 221
    return-object v1

    .line 206
    :cond_0
    new-instance v3, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;-><init>()V

    .line 207
    .local v3, sortModel:Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->setName(Ljava/lang/String;)V

    .line 209
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, pinyin:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, sortString:Ljava/lang/String;
    const-string/jumbo v5, "[A-Z]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->setSortLetters(Ljava/lang/String;)V

    .line 219
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_3
    const-string/jumbo v5, "#"

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private filterData(Ljava/lang/String;)V
    .locals 6
    .parameter "filterStr"

    .prologue
    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, filterDateList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->cityNameList:Ljava/util/List;

    .line 280
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 281
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    if-eqz v3, :cond_1

    .line 282
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    invoke-virtual {v3, v0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->updateListView(Ljava/util/List;)V

    .line 284
    :cond_1
    return-void

    .line 271
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 272
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->cityNameList:Ljava/util/List;

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

    .line 273
    .local v2, sortModel:Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    invoke-virtual {v4, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 275
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAreaCode(Ljava/lang/String;)V
    .locals 3
    .parameter "countryName"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->cityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    return-void

    .line 176
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/user/model/City;

    .line 177
    .local v0, bean:Lcom/cnlaunch/x431pro/module/user/model/City;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/City;->getDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/City;->getCcode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->ccode:Ljava/lang/String;

    .line 179
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 180
    const/16 v2, 0x83f

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->request(I)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 92
    const v0, 0x7f0705b2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->setTitle(I)V

    .line 93
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getInstance()Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    .line 95
    new-instance v0, Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    .line 97
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d035b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->lv_area:Landroid/widget/ListView;

    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->lv_area:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d035a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/ClearEditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    .line 100
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->Search_TextChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d035c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->sidebar:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->sidebar:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->touchLetterChanged:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setOnTouchingLetterChangedListener(Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0050

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->btn_cancel:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 107
    const/16 v0, 0x83e

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->request(I)V

    .line 108
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 4
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 112
    packed-switch p1, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->pcode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getCityList(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->ncode:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->pcode:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->ccode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->setArea(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x83e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCityNameList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/user/model/City;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/City;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v2, res:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 193
    .end local v0           #i:I
    :cond_0
    return-object v2

    .line 189
    .restart local v0       #i:I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/module/user/model/City;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/City;->getDisplay()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, name:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    new-instance v1, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 77
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v1, "ncode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->ncode:Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "pcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->pcode:Ljava/lang/String;

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->initViews()V

    .line 83
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 290
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 291
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 288
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
    .line 88
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
    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 153
    packed-switch p1, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x83e
        :pswitch_0
        :pswitch_1
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
    .line 167
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 169
    :pswitch_0
    const v1, 0x7f0d035e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    .local v0, ctiyName:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->getAreaCode(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d035b
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 5
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 125
    packed-switch p1, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 128
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 129
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;

    .line 130
    .local v1, res:Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->isSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;->getData()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->cityList:Ljava/util/ArrayList;

    .line 132
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->cityList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->getCityNameList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->filledData(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->cityNameList:Ljava/util/List;

    .line 134
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->cityNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    new-instance v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->cityNameList:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    .line 136
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->lv_area:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 142
    .end local v1           #res:Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;
    :pswitch_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CityFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x83e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
