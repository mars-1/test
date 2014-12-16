.class public Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;
.super Landroid/widget/BaseAdapter;
.source "FAQlistAdapter.java"


# instance fields
.field count:I

.field lastClickedTitle:Ljava/lang/String;

.field lstQ2A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mAssetManager:Landroid/content/res/AssetManager;

.field mContext:Landroid/content/Context;

.field mLastClicked:Landroid/widget/TextView;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mParentHandler:Landroid/os/Handler;

.field mllLastShow:Landroid/widget/LinearLayout;

.field mtvLastClicked:Landroid/widget/TextView;

.field mtvLastShow:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/AssetManager;Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter "context"
    .parameter "am"
    .parameter "layoutInflater"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->count:I

    .line 22
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mllLastShow:Landroid/widget/LinearLayout;

    .line 23
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mLastClicked:Landroid/widget/TextView;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->lastClickedTitle:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mtvLastClicked:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mtvLastShow:Landroid/widget/TextView;

    .line 32
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->lstQ2A:Ljava/util/ArrayList;

    .line 35
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mAssetManager:Landroid/content/res/AssetManager;

    .line 36
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->count:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 75
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .local v6, verll:Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->lstQ2A:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v1, v8, :cond_0

    .line 131
    return-object v6

    .line 78
    :cond_0
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030095

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    .local v0, answerView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030096

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 81
    .local v7, viewItem:Landroid/view/View;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->lstQ2A:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getItemRef()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    const v8, 0x7f0d021d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 85
    .local v3, ll2:Landroid/widget/LinearLayout;
    const v8, 0x7f0d021e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 86
    .local v2, itemHeader:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v1, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, strTitle:Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v8, 0x7f0d021f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 89
    .local v5, title:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->lstQ2A:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getItem()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->lastClickedTitle:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 92
    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mtvLastClicked:Landroid/widget/TextView;

    .line 93
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mtvLastShow:Landroid/widget/TextView;

    .line 94
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x7f020480

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 101
    :goto_1
    new-instance v8, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;

    invoke-direct {v8, p0, v0, v5, v4}, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;-><init>(Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 97
    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x7f02012b

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, listData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->lstQ2A:Ljava/util/ArrayList;

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->count:I

    .line 70
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mParentHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public setLastClickedTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->lastClickedTitle:Ljava/lang/String;

    .line 53
    return-void
.end method
