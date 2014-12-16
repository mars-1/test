.class public Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "CountryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final REQ_GET_COUNTRYLIST_CODE:I

.field private final REQ_SET_AREA_CODE:I

.field private Search_TextChanged:Landroid/text/TextWatcher;

.field private action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

.field private adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

.field private btn_cancel:Landroid/widget/Button;

.field private ccode:Ljava/lang/String;

.field private characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

.field private countryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/user/model/Country;",
            ">;"
        }
    .end annotation
.end field

.field private countryNameList:Ljava/util/List;
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
    .line 49
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 52
    const/16 v0, 0x83a

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->REQ_GET_COUNTRYLIST_CODE:I

    .line 54
    const/16 v0, 0x83b

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->REQ_SET_AREA_CODE:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->countryList:Ljava/util/ArrayList;

    .line 243
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->touchLetterChanged:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    .line 259
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->Search_TextChanged:Landroid/text/TextWatcher;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;)Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->lv_area:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->filterData(Ljava/lang/String;)V

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
    .line 213
    .local p1, date:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, mSortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 231
    return-object v1

    .line 216
    :cond_0
    new-instance v3, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;-><init>()V

    .line 217
    .local v3, sortModel:Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->setName(Ljava/lang/String;)V

    .line 219
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, pinyin:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 215
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, sortString:Ljava/lang/String;
    const-string/jumbo v5, "[A-Z]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 225
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->setSortLetters(Ljava/lang/String;)V

    .line 229
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :cond_3
    const-string/jumbo v5, "#"

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private filterData(Ljava/lang/String;)V
    .locals 6
    .parameter "filterStr"

    .prologue
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, filterDateList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->countryNameList:Ljava/util/List;

    .line 295
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 296
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    if-eqz v3, :cond_1

    .line 297
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    invoke-virtual {v3, v0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->updateListView(Ljava/util/List;)V

    .line 299
    :cond_1
    return-void

    .line 286
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 287
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->countryNameList:Ljava/util/List;

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

    .line 288
    .local v2, sortModel:Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    invoke-virtual {v4, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAreaCode(Ljava/lang/String;)V
    .locals 5
    .parameter "countryName"

    .prologue
    .line 175
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    return-void

    .line 175
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/user/model/Country;

    .line 176
    .local v0, bean:Lcom/cnlaunch/x431pro/module/user/model/Country;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getNcode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->ncode:Ljava/lang/String;

    .line 178
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->ncode:Ljava/lang/String;

    const-string/jumbo v4, "143"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v1, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "ncode"

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->ncode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 185
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v3, "0"

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->pcode:Ljava/lang/String;

    .line 186
    const-string/jumbo v3, "0"

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->ccode:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 188
    const/16 v3, 0x83b

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->request(I)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 88
    const v0, 0x7f0705b2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->setTitle(I)V

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getInstance()Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    .line 91
    new-instance v0, Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    .line 93
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0372

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->lv_area:Landroid/widget/ListView;

    .line 94
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->lv_area:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0371

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/ClearEditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    .line 96
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->Search_TextChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0373

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->sidebar:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->sidebar:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->touchLetterChanged:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setOnTouchingLetterChangedListener(Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->btn_cancel:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 103
    const/16 v0, 0x83a

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->request(I)V

    .line 104
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
    .line 108
    packed-switch p1, :pswitch_data_0

    .line 114
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getCountryList(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->ncode:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->pcode:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->ccode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->setArea(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x83a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getNationNameList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/user/model/Country;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v2, res:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 203
    .end local v0           #i:I
    :cond_0
    return-object v2

    .line 199
    .restart local v0       #i:I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/module/user/model/Country;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getDisplay()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, name:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 79
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->initViews()V

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 305
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 306
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x7f0c0050
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 84
    const v0, 0x7f030137

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
    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 162
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x83a
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
    .line 236
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0c0375

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 237
    .local v0, countryName:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->getAreaCode(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 7
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 123
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 124
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    .line 125
    .local v1, res:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->isSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getData()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 127
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 129
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 138
    :goto_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->countryList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->getNationNameList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->filledData(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->countryNameList:Ljava/util/List;

    .line 140
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->countryNameList:Ljava/util/List;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 141
    new-instance v3, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->countryNameList:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    .line 142
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->lv_area:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/user/model/Country;

    .line 130
    .local v0, bean:Lcom/cnlaunch/x431pro/module/user/model/Country;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getNcode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "137"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getNcode()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "235"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getNcode()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "325"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/user/model/Country;
    :cond_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 136
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 148
    .end local v1           #res:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    .end local v2           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    :pswitch_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 149
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 150
    check-cast v1, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 151
    .local v1, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->isSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->popBackStack()V

    goto/16 :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x83a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
