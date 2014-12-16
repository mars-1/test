.class public Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FunctionListAdapter.java"


# instance fields
.field am:Landroid/content/res/AssetManager;

.field context:Landroid/content/Context;

.field count:I

.field mLastClicked:Landroid/widget/TextView;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mParentHandler:Landroid/os/Handler;

.field mStringLastClickedTitle:Ljava/lang/String;

.field mapTitle2lst:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mllLastShow:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/AssetManager;Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter "context"
    .parameter "am"
    .parameter "layoutInflater"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->count:I

    .line 33
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mllLastShow:Landroid/widget/LinearLayout;

    .line 34
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mLastClicked:Landroid/widget/TextView;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mStringLastClickedTitle:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mapTitle2lst:Ljava/util/Map;

    .line 43
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->am:Landroid/content/res/AssetManager;

    .line 44
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->context:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 90
    .local v1, image:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->am:Landroid/content/res/AssetManager;

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 91
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 92
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->count:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "item"

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 102
    if-nez p2, :cond_3

    .line 103
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 104
    .local v15, verll:Landroid/widget/LinearLayout;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030094

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 108
    .local v16, view:Landroid/view/View;
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    .local v10, ll:Landroid/widget/LinearLayout;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mapTitle2lst:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v18

    aget-object v12, v18, p1

    check-cast v12, Ljava/lang/String;

    .line 113
    .local v12, strTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mapTitle2lst:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 114
    .local v4, aldata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getIconName()Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, iconPath:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v6, v0, :cond_1

    .line 142
    const v18, 0x7f0d021a

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 145
    .local v8, image:Landroid/widget/ImageView;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 146
    .local v5, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    const v18, 0x7f0d021b

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 148
    .local v13, text:Landroid/widget/TextView;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mStringLastClickedTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 151
    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x7f020480

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 152
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mllLastShow:Landroid/widget/LinearLayout;

    .line 153
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mLastClicked:Landroid/widget/TextView;

    .line 158
    :goto_1
    new-instance v18, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v13, v12}, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;-><init>(Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mStringLastClickedTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 188
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    .end local v4           #aldata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #i:I
    .end local v7           #iconPath:Ljava/lang/String;
    .end local v8           #image:Landroid/widget/ImageView;
    .end local v10           #ll:Landroid/widget/LinearLayout;
    .end local v12           #strTitle:Ljava/lang/String;
    .end local v13           #text:Landroid/widget/TextView;
    .end local v15           #verll:Landroid/widget/LinearLayout;
    .end local v16           #view:Landroid/view/View;
    :cond_0
    :goto_2
    return-object v15

    .line 116
    .restart local v4       #aldata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    .restart local v6       #i:I
    .restart local v7       #iconPath:Ljava/lang/String;
    .restart local v10       #ll:Landroid/widget/LinearLayout;
    .restart local v12       #strTitle:Ljava/lang/String;
    .restart local v15       #verll:Landroid/widget/LinearLayout;
    .restart local v16       #view:Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030093

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 118
    .local v17, viewItem:Landroid/view/View;
    const v18, 0x7f0d0216

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 119
    .local v11, ll2:Landroid/widget/LinearLayout;
    const/16 v18, 0x64

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 121
    const v18, 0x7f0d0217

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 122
    .local v9, itemHeader:Landroid/widget/TextView;
    new-instance v18, Ljava/lang/StringBuilder;

    add-int/lit8 v19, v6, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const v18, 0x7f0d0218

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 124
    .local v14, title:Landroid/widget/TextView;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getItem()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v18, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$1;-><init>(Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 155
    .end local v9           #itemHeader:Landroid/widget/TextView;
    .end local v11           #ll2:Landroid/widget/LinearLayout;
    .end local v14           #title:Landroid/widget/TextView;
    .end local v17           #viewItem:Landroid/view/View;
    .restart local v5       #d:Landroid/graphics/drawable/Drawable;
    .restart local v8       #image:Landroid/widget/ImageView;
    .restart local v13       #text:Landroid/widget/TextView;
    :cond_2
    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x7f02012b

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .end local v4           #aldata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #i:I
    .end local v7           #iconPath:Ljava/lang/String;
    .end local v8           #image:Landroid/widget/ImageView;
    .end local v10           #ll:Landroid/widget/LinearLayout;
    .end local v12           #strTitle:Ljava/lang/String;
    .end local v13           #text:Landroid/widget/TextView;
    .end local v15           #verll:Landroid/widget/LinearLayout;
    .end local v16           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v15, p2

    .line 192
    goto/16 :goto_2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 57
    .local p1, listData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mapTitle2lst:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iput v3, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->count:I

    .line 69
    return-void

    .line 58
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mapTitle2lst:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v2, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mapTitle2lst:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v2           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mapTitle2lst:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 65
    .restart local v2       #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mParentHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public setLastClickedTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mStringLastClickedTitle:Ljava/lang/String;

    .line 54
    return-void
.end method
