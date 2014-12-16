.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;
.source "SpeciaFunctionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private buttonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;"
        }
    .end annotation
.end field

.field private colums:I

.field private dm:Landroid/util/DisplayMetrics;

.field private mScaleArray:[I

.field private mScreenWidth:I

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;"
        }
    .end annotation
.end field

.field private mValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValueListView:Landroid/widget/ListView;

.field private spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

.field private valueAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;-><init>()V

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->colums:I

    .line 56
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->dm:Landroid/util/DisplayMetrics;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;)Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    return-void
.end method

.method private ifSameArray(Ljava/util/ArrayList;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    const/4 v2, 0x0

    .line 143
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    move v1, v2

    .line 152
    :goto_0
    return v1

    .line 146
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 152
    const/4 v1, 0x1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 148
    goto :goto_0

    .line 146
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mScreenWidth:I

    .line 96
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01d5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 97
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01d6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueListView:Landroid/widget/ListView;

    .line 98
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->refreshTitle()V

    .line 99
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mScaleArray:[I

    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mScreenWidth:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;[II)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->valueAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;

    .line 100
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->valueAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->isOnClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->upDateButtonGridView(Ljava/util/ArrayList;)V

    .line 105
    return-void
.end method

.method private refreshTitle()V
    .locals 11

    .prologue
    const/16 v10, 0xf

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 121
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 140
    return-void

    .line 123
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 124
    .local v2, tv:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;->getScale()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float v5, v6, v7

    .line 126
    .local v5, width:F
    iget v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mScreenWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 127
    .local v3, tvWidth:I
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f08005d

    invoke-virtual {v2, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 128
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 129
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v1, margin:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v9, v10, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_1

    .line 134
    new-instance v4, Landroid/view/View;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 135
    .local v4, view:Landroid/view/View;
    const v6, -0x19191a

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    .end local v4           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private upDateButtonGridView(Ljava/util/ArrayList;)V
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    if-nez p1, :cond_1

    const/4 v9, 0x0

    .line 185
    .local v9, numColumns:I
    :goto_0
    if-nez v9, :cond_2

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0c014a

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_0
    :goto_1
    return-void

    .line 184
    .end local v9           #numColumns:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_0

    .line 189
    .restart local v9       #numColumns:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0c014a

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0c014a

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 194
    .local v7, gridCmdGroup:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0c014b

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 196
    .local v13, spinnerCmdGroup:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 197
    .local v12, screenWidth:I
    const/4 v15, 0x0

    .line 199
    .local v15, totalWidth:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_4

    .line 208
    if-le v12, v15, :cond_5

    .line 209
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->dismissPopupWindow()V

    .line 217
    :cond_3
    sub-int v6, v12, v15

    .line 218
    .local v6, extraPixels:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    div-int v5, v6, v17

    .line 220
    .local v5, eachExtra:I
    const/4 v8, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_0

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0300b8

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 222
    .local v16, view:Landroid/view/View;
    const v17, 0x7f0c004d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 223
    .local v4, button:Landroid/widget/TextView;
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setId(I)V

    .line 224
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    new-instance v17, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 235
    .local v11, paint:Landroid/text/TextPaint;
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 236
    .local v14, textWidthPx:F
    float-to-int v0, v14

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1c

    add-int v17, v17, v5

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 237
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 200
    .end local v4           #button:Landroid/widget/TextView;
    .end local v5           #eachExtra:I
    .end local v6           #extraPixels:I
    .end local v11           #paint:Landroid/text/TextPaint;
    .end local v14           #textWidthPx:F
    .end local v16           #view:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0300b8

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 201
    .restart local v16       #view:Landroid/view/View;
    const v17, 0x7f0c004d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 202
    .restart local v4       #button:Landroid/widget/TextView;
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 204
    .restart local v11       #paint:Landroid/text/TextPaint;
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 205
    .restart local v14       #textWidthPx:F
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x41e0

    add-float v18, v18, v14

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 199
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 241
    .end local v4           #button:Landroid/widget/TextView;
    .end local v11           #paint:Landroid/text/TextPaint;
    .end local v14           #textWidthPx:F
    .end local v16           #view:Landroid/view/View;
    :cond_5
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0c014c

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 245
    .local v3, btnChoose:Landroid/widget/TextView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    new-instance v17, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0c014d

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 270
    .local v10, okBtn:Landroid/widget/Button;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    new-instance v17, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const v0, 0x7f070507

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 295
    :cond_0
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getPrintData()Ljava/lang/String;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/PrintDataUtils;->getPrintData(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, data:Ljava/lang/String;
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 69
    const-string/jumbo v2, "Specia_colums"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->colums:I

    .line 70
    const-string/jumbo v2, "SpeciaTitle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleList:Ljava/util/ArrayList;

    .line 71
    const-string/jumbo v2, "SpeciaValue"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueList:Ljava/util/ArrayList;

    .line 72
    const-string/jumbo v2, "SpeciaButton"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    .line 75
    :cond_0
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->colums:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mScaleArray:[I

    .line 76
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->initView()V

    .line 80
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setOnDataUpdateListener(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;)V

    .line 81
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    const v3, 0x7f070507

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSubTitle(Ljava/lang/String;)V

    .line 82
    return-void

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mScaleArray:[I

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;->getScale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v3, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->dismissPopupWindow()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->upDateButtonGridView(Ljava/util/ArrayList;)V

    .line 115
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 60
    const v0, 0x7f03007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 172
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->showRemoteDialog(I)V

    .line 173
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->valueAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;

    invoke-virtual {v1, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->setItemIsActive(I)V

    .line 174
    add-int/lit16 v1, p3, 0x80

    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToTwoHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, cmd:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    const-string/jumbo v2, "36"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 86
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f07056e

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateSpeciaFuntionListener(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    .local p2, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;>;"
    .local p3, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->valueAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;

    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 158
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueList:Ljava/util/ArrayList;

    .line 159
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->refreshTitle()V

    .line 161
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleList:Ljava/util/ArrayList;

    .line 163
    :cond_0
    invoke-direct {p0, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->ifSameArray(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    .line 165
    invoke-direct {p0, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->upDateButtonGridView(Ljava/util/ArrayList;)V

    .line 167
    :cond_1
    return-void
.end method
