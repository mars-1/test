.class public Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "CountrySelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final RESULT_COUNTRYINFO_CODE:I = 0x1


# instance fields
.field private final REQ_GET_COUNTRYLIST_CODE:I

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
    .line 40
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 42
    const/16 v0, 0x7dc

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->REQ_GET_COUNTRYLIST_CODE:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryList:Ljava/util/ArrayList;

    .line 233
    new-instance v0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->touchLetterChanged:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    .line 249
    new-instance v0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->Search_TextChanged:Landroid/text/TextWatcher;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;)Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->lv_area:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->filterData(Ljava/lang/String;)V

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
    .line 202
    .local p1, date:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v1, mSortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 220
    return-object v1

    .line 205
    :cond_0
    new-instance v3, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;-><init>()V

    .line 206
    .local v3, sortModel:Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->setName(Ljava/lang/String;)V

    .line 208
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, pinyin:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, sortString:Ljava/lang/String;
    const-string/jumbo v5, "[A-Z]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 214
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->setSortLetters(Ljava/lang/String;)V

    .line 218
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 216
    :cond_3
    const-string/jumbo v5, "#"

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private filterData(Ljava/lang/String;)V
    .locals 6
    .parameter "filterStr"

    .prologue
    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, filterDateList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;>;"
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryNameList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryNameList:Ljava/util/List;

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 287
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 288
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    if-eqz v3, :cond_1

    .line 289
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    invoke-virtual {v3, v0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->updateListView(Ljava/util/List;)V

    .line 294
    :cond_1
    return-void

    .line 277
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryNameList:Ljava/util/List;

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

    .line 279
    .local v2, sortModel:Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    invoke-virtual {v4, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 281
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAreaCode(Ljava/lang/String;)V
    .locals 4
    .parameter "countryName"

    .prologue
    .line 169
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/user/model/Country;

    .line 170
    .local v0, bean:Lcom/cnlaunch/x431pro/module/user/model/Country;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getNcode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->ncode:Ljava/lang/String;

    .line 173
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v2, "ncode"

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getNcode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v2, "display"

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v2, "is_sms"

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getIs_sms()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v2, "pre_code"

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getPre_code()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getInstance()Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    .line 86
    new-instance v0, Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    .line 88
    const v0, 0x7f0d035b

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->lv_area:Landroid/widget/ListView;

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->lv_area:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    const v0, 0x7f0d035a

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/ClearEditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->Search_TextChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    const v0, 0x7f0d035c

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->sidebar:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    .line 93
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->sidebar:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->touchLetterChanged:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setOnTouchingLetterChangedListener(Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;)V

    .line 94
    const v0, 0x7f0d0050

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->btn_cancel:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 98
    const/16 v0, 0x7dc

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->request(I)V

    .line 100
    return-void
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
    .line 104
    packed-switch p1, :pswitch_data_0

    .line 108
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getCountryList(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    move-result-object v0

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x7dc
        :pswitch_0
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
    .line 185
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v2, res:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 187
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 192
    .end local v0           #i:I
    :cond_0
    return-object v2

    .line 188
    .restart local v0       #i:I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/module/user/model/Country;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getDisplay()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, name:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 300
    :pswitch_0
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 301
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x7f0d0050
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f03016e

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->setContentView(I)V

    .line 70
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->setHeadVisibility(I)V

    .line 71
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 72
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->initViews()V

    .line 73
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 1
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onFailure(IILjava/lang/Object;)V

    .line 161
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x7dc
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
    .line 225
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0d035e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 226
    .local v0, countryName:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->getAreaCode(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->finish()V

    .line 228
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 308
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->finish()V

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onResume()V

    .line 79
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 9
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onSuccess(ILjava/lang/Object;)V

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 117
    if-eqz p2, :cond_0

    move-object v3, p2

    .line 118
    check-cast v3, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    .line 119
    .local v3, res:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->isSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getData()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 121
    .local v4, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 122
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 123
    const/4 v2, 0x1

    .line 124
    .local v2, isShowAllCountry:Z
    if-nez v2, :cond_3

    .line 125
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 137
    .end local v2           #isShowAllCountry:Z
    :goto_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryList:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->getNationNameList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->filledData(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryNameList:Ljava/util/List;

    .line 142
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryNameList:Ljava/util/List;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->pinyinComparator:Lcom/cnlaunch/x431pro/widget/sortlistview/PinyinComparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    new-instance v5, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryNameList:Ljava/util/List;

    invoke-direct {v5, v6, v7}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    .line 144
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->lv_area:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->edit_search:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, filterString:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 149
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->filterData(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v1           #filterString:Ljava/lang/String;
    .restart local v2       #isShowAllCountry:Z
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/user/model/Country;

    .line 126
    .local v0, bean:Lcom/cnlaunch/x431pro/module/user/model/Country;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getNcode()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "137"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getNcode()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "235"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getNcode()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "325"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 127
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/user/model/Country;
    :cond_3
    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryList:Ljava/util/ArrayList;

    goto :goto_2

    .line 134
    .end local v2           #isShowAllCountry:Z
    :cond_4
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 135
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x7dc
        :pswitch_0
    .end packed-switch
.end method
