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

.field private mTitleAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;

.field private mTitleGrid:Landroid/widget/GridView;

.field private mValueAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;

.field private mValueGrid:Landroid/widget/GridView;

.field spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

.field private titleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;"
        }
    .end annotation
.end field

.field private valueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;-><init>()V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->colums:I

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mContext:Landroid/content/Context;

    return-object v0
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

    .line 110
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    move v1, v2

    .line 119
    :goto_0
    return v1

    .line 113
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 119
    const/4 v1, 0x1

    goto :goto_0

    .line 114
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

    .line 115
    goto :goto_0

    .line 113
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d01d4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleGrid:Landroid/widget/GridView;

    .line 83
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d01d5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueGrid:Landroid/widget/GridView;

    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleGrid:Landroid/widget/GridView;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->colums:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 85
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueGrid:Landroid/widget/GridView;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->colums:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 87
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->titleList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->colums:I

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;

    .line 88
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->valueList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->colums:I

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;

    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->upDateButtonGridView(Ljava/util/ArrayList;)V

    .line 94
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->isOnClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueGrid:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    :cond_0
    return-void
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
    .line 147
    .local p1, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    if-nez p1, :cond_1

    const/4 v9, 0x0

    .line 148
    .local v9, numColumns:I
    :goto_0
    if-nez v9, :cond_2

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0d014a

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_0
    :goto_1
    return-void

    .line 147
    .end local v9           #numColumns:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_0

    .line 152
    .restart local v9       #numColumns:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0d014a

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0d014a

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 157
    .local v7, gridCmdGroup:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0d014b

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 159
    .local v13, spinnerCmdGroup:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 160
    .local v12, screenWidth:I
    const/4 v15, 0x0

    .line 162
    .local v15, totalWidth:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_4

    .line 171
    if-le v12, v15, :cond_5

    .line 172
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->dismissPopupWindow()V

    .line 180
    :cond_3
    sub-int v6, v12, v15

    .line 181
    .local v6, extraPixels:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    div-int v5, v6, v17

    .line 183
    .local v5, eachExtra:I
    const/4 v8, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0300b8

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 185
    .local v16, view:Landroid/view/View;
    const v17, 0x7f0d004d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 186
    .local v4, button:Landroid/widget/TextView;
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setId(I)V

    .line 187
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

    .line 188
    new-instance v17, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 197
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

    .line 198
    .local v14, textWidthPx:F
    float-to-int v0, v14

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1c

    add-int v17, v17, v5

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 199
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 163
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

    .line 164
    .restart local v16       #view:Landroid/view/View;
    const v17, 0x7f0d004d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 165
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

    .line 166
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 167
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

    .line 168
    .restart local v14       #textWidthPx:F
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x41e0

    add-float v18, v18, v14

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 162
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 203
    .end local v4           #button:Landroid/widget/TextView;
    .end local v11           #paint:Landroid/text/TextPaint;
    .end local v14           #textWidthPx:F
    .end local v16           #view:Landroid/view/View;
    :cond_5
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0d014c

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 207
    .local v3, btnChoose:Landroid/widget/TextView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
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

    .line 209
    new-instance v17, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0d014d

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 232
    .local v10, okBtn:Landroid/widget/Button;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
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
    .line 143
    const v0, 0x7f070505

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->valueList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 256
    :cond_0
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getPrintData()Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->valueList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/PrintDataUtils;->getPrintData(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, data:Ljava/lang/String;
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v1, "Specia_colums"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->colums:I

    .line 61
    const-string/jumbo v1, "SpeciaTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->titleList:Ljava/util/ArrayList;

    .line 62
    const-string/jumbo v1, "SpeciaValue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->valueList:Ljava/util/ArrayList;

    .line 63
    const-string/jumbo v1, "SpeciaButton"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->initView()V

    .line 66
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setOnDataUpdateListener(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;)V

    .line 67
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    const v2, 0x7f070505

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSubTitle(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->dismissPopupWindow()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->upDateButtonGridView(Ljava/util/ArrayList;)V

    .line 107
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 51
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
    .line 137
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->showRemoteDialog(I)V

    .line 138
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const-string/jumbo v1, "36"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "00"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->colums:I

    div-int v3, p3, v3

    add-int/lit8 v3, v3, 0x50

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 73
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f07056c

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateSpeciaFuntionListener(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
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
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    .local p2, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    .local p3, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mTitleAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->refersh(Ljava/util/ArrayList;)V

    .line 125
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->mValueAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;

    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->refersh(Ljava/util/ArrayList;)V

    .line 126
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->titleList:Ljava/util/ArrayList;

    .line 127
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->valueList:Ljava/util/ArrayList;

    .line 128
    invoke-direct {p0, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->ifSameArray(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->buttonList:Ljava/util/ArrayList;

    .line 130
    invoke-direct {p0, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->upDateButtonGridView(Ljava/util/ArrayList;)V

    .line 132
    :cond_0
    return-void
.end method
