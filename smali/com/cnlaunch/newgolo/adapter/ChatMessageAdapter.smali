.class public Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$Clickable;,
        Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;,
        Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;,
        Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;,
        Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;,
        Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;,
        Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;,
        Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;
    }
.end annotation


# static fields
.field private static final MSG_REFRESH_LIST:I = 0x1

.field private static final PIC_TASK_NUM:I = 0x3

.field private static final SHOW_TIME_MIN:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "ChatMessageAdapter"

.field private static final TYPE_DIAGNOSE_IN:I = 0x4

.field private static final TYPE_DIAGNOSE_OUT:I = 0xa

.field private static final TYPE_FILE_IN:I = 0x2

.field private static final TYPE_FILE_OUT:I = 0x8

.field private static final TYPE_PIC_IN:I = 0x1

.field private static final TYPE_PIC_OUT:I = 0x7

.field private static final TYPE_REPORT_IN:I = 0x5

.field private static final TYPE_TXT_IN:I = 0x0

.field private static final TYPE_TXT_OUT:I = 0x6

.field private static final TYPE_VOICE_IN:I = 0x3

.field private static final TYPE_VOICE_OUT:I = 0x9


# instance fields
.field private final TYPE__NEWS_MULTI:I

.field private final TYPE__NEWS_SINGLE:I

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mBitmapCache:Lcom/cnlaunch/newgolo/Tool/BitmapCache;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mItemEntityClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;

.field private mItemErrorClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;

.field private mItemHeadClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;

.field private mItemLongClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;

.field private mItemMenuClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;

.field private mPictureLoad:Ljava/util/concurrent/ExecutorService;

.field private myHeadPath:Ljava/lang/String;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private text_size:I

.field private userHeadPath:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/ChatMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 77
    const/16 v0, 0xb

    iput v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->TYPE__NEWS_SINGLE:I

    .line 78
    const/16 v0, 0xc

    iput v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->TYPE__NEWS_MULTI:I

    .line 93
    new-instance v0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$1;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mHandler:Landroid/os/Handler;

    .line 110
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    .line 112
    iput-object p3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->userId:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/cnlaunch/newgolo/Tool/BitmapCache;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/newgolo/Tool/BitmapCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mBitmapCache:Lcom/cnlaunch/newgolo/Tool/BitmapCache;

    .line 114
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mPictureLoad:Ljava/util/concurrent/ExecutorService;

    .line 115
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->getUserTextSize()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->text_size:I

    .line 116
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 117
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setImageConfig()V

    .line 118
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->initOptions()V

    .line 119
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;
    .locals 1
    .parameter

    .prologue
    .line 921
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemEntityClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;
    .locals 1
    .parameter

    .prologue
    .line 922
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemHeadClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;
    .locals 1
    .parameter

    .prologue
    .line 923
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemErrorClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;
    .locals 1
    .parameter

    .prologue
    .line 924
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemMenuClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;
    .locals 1
    .parameter

    .prologue
    .line 925
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemLongClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->userHeadPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->userHeadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/Tool/BitmapCache;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mBitmapCache:Lcom/cnlaunch/newgolo/Tool/BitmapCache;

    return-object v0
.end method

.method private bindNewsView(Landroid/view/View;II)V
    .locals 35
    .parameter "view"
    .parameter "position"
    .parameter "type"

    .prologue
    .line 300
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 301
    .local v28, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    const/16 v3, 0xb

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 303
    :try_start_0
    new-instance v32, Lorg/json/JSONArray;

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v4, "news"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 304
    .local v32, textArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, news_title:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "note"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "note"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 307
    .local v8, news_note:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "public_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "public_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, public_id:Ljava/lang/String;
    :goto_1
    const/16 v31, 0x0

    .line 310
    .local v31, pic_path:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 311
    new-instance v30, Lorg/json/JSONArray;

    invoke-virtual/range {v28 .. v28}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 312
    .local v30, pathArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 316
    .end local v30           #pathArray:Lorg/json/JSONArray;
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "pic_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 317
    .local v10, url_path:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "created"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 318
    .local v11, created:J
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->chat_item_time:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 319
    .local v33, time:Landroid/widget/TextView;
    if-eqz p2, :cond_4

    move-object/from16 v0, v28

    iget-wide v13, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-wide v3, v3, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    sub-long v3, v13, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v13, 0x493e0

    cmp-long v3, v3, v13

    if-gtz v3, :cond_4

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 320
    invoke-static {}, Lcom/cnlaunch/newgolo/Tool/DateTool;->getInstance()Lcom/cnlaunch/newgolo/Tool/DateTool;

    move-result-object v3

    move-object/from16 v0, v28

    iget-wide v13, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    invoke-virtual {v3, v13, v14}, Lcom/cnlaunch/newgolo/Tool/DateTool;->format(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->single_news_title:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 322
    .local v34, title:Landroid/widget/TextView;
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->single_news_date:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 323
    .local v21, date:Landroid/widget/TextView;
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->single_news_image:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 324
    .local v25, imageView:Landroid/widget/ImageView;
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->single_news_note:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 325
    .local v29, note:Landroid/widget/TextView;
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 327
    .local v22, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v11

    invoke-direct {v3, v13, v14}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v3, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->loadPicture(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->single_news_content:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 332
    .local v20, content:Landroid/view/View;
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "content_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 333
    .local v6, url:Ljava/lang/String;
    move-object/from16 v9, v31

    .line 335
    .local v9, temp:Ljava/lang/String;
    new-instance v3, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v12}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    .end local v5           #public_id:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    .end local v7           #news_title:Ljava/lang/String;
    .end local v8           #news_note:Ljava/lang/String;
    .end local v9           #temp:Ljava/lang/String;
    .end local v10           #url_path:Ljava/lang/String;
    .end local v11           #created:J
    .end local v20           #content:Landroid/view/View;
    .end local v21           #date:Landroid/widget/TextView;
    .end local v22           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v25           #imageView:Landroid/widget/ImageView;
    .end local v29           #note:Landroid/widget/TextView;
    .end local v31           #pic_path:Ljava/lang/String;
    .end local v32           #textArray:Lorg/json/JSONArray;
    .end local v33           #time:Landroid/widget/TextView;
    .end local v34           #title:Landroid/widget/TextView;
    :cond_0
    :goto_4
    return-void

    .line 306
    .restart local v7       #news_title:Ljava/lang/String;
    .restart local v32       #textArray:Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v8, ""

    goto/16 :goto_0

    .line 308
    .restart local v8       #news_note:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    goto/16 :goto_1

    .line 314
    .restart local v5       #public_id:Ljava/lang/String;
    .restart local v31       #pic_path:Ljava/lang/String;
    :cond_3
    const-string/jumbo v31, "path"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 319
    .restart local v10       #url_path:Ljava/lang/String;
    .restart local v11       #created:J
    .restart local v33       #time:Landroid/widget/TextView;
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 350
    .end local v5           #public_id:Ljava/lang/String;
    .end local v7           #news_title:Ljava/lang/String;
    .end local v8           #news_note:Ljava/lang/String;
    .end local v10           #url_path:Ljava/lang/String;
    .end local v11           #created:J
    .end local v31           #pic_path:Ljava/lang/String;
    .end local v32           #textArray:Lorg/json/JSONArray;
    .end local v33           #time:Landroid/widget/TextView;
    :catch_0
    move-exception v23

    .line 351
    .local v23, e:Lorg/json/JSONException;
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 356
    .end local v23           #e:Lorg/json/JSONException;
    :cond_5
    :try_start_1
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->chat_item_time:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 357
    .restart local v33       #time:Landroid/widget/TextView;
    if-eqz p2, :cond_6

    move-object/from16 v0, v28

    iget-wide v13, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-wide v3, v3, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    sub-long v3, v13, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v13, 0x493e0

    cmp-long v3, v3, v13

    if-gtz v3, :cond_6

    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 358
    invoke-static {}, Lcom/cnlaunch/newgolo/Tool/DateTool;->getInstance()Lcom/cnlaunch/newgolo/Tool/DateTool;

    move-result-object v3

    move-object/from16 v0, v28

    iget-wide v13, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    invoke-virtual {v3, v13, v14}, Lcom/cnlaunch/newgolo/Tool/DateTool;->format(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    new-instance v32, Lorg/json/JSONArray;

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v4, "news"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v32       #textArray:Lorg/json/JSONArray;
    new-instance v30, Lorg/json/JSONArray;

    invoke-virtual/range {v28 .. v28}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 361
    .restart local v30       #pathArray:Lorg/json/JSONArray;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v27, itemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->news_item_0:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->news_item_1:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->news_item_2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->news_item_3:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->news_item_4:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    const/16 v24, 0x0

    .local v24, i:I
    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_0

    .line 368
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_8

    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_8

    .line 369
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/cnlaunch/golo3/message/R$id;->news_content_image:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 370
    .restart local v25       #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/cnlaunch/golo3/message/R$id;->news_content_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 371
    .restart local v34       #title:Landroid/widget/TextView;
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 372
    .restart local v7       #news_title:Ljava/lang/String;
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "pic_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 373
    .restart local v10       #url_path:Ljava/lang/String;
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "public_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 374
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "public_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    .restart local v5       #public_id:Ljava/lang/String;
    :goto_7
    const/4 v3, 0x0

    invoke-virtual/range {v28 .. v28}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->loadPicture(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 385
    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 386
    .restart local v9       #temp:Ljava/lang/String;
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "content_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 387
    .restart local v6       #url:Ljava/lang/String;
    move/from16 v26, v24

    .line 388
    .local v26, index:I
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 389
    new-instance v13, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$3;

    move-object/from16 v14, p0

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v13 .. v19}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$3;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v3, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .end local v5           #public_id:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    .end local v7           #news_title:Ljava/lang/String;
    .end local v9           #temp:Ljava/lang/String;
    .end local v10           #url_path:Ljava/lang/String;
    .end local v25           #imageView:Landroid/widget/ImageView;
    .end local v26           #index:I
    .end local v34           #title:Landroid/widget/TextView;
    :goto_8
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_6

    .line 357
    .end local v24           #i:I
    .end local v27           #itemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v30           #pathArray:Lorg/json/JSONArray;
    .end local v32           #textArray:Lorg/json/JSONArray;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 374
    .restart local v7       #news_title:Ljava/lang/String;
    .restart local v10       #url_path:Ljava/lang/String;
    .restart local v24       #i:I
    .restart local v25       #imageView:Landroid/widget/ImageView;
    .restart local v27       #itemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v30       #pathArray:Lorg/json/JSONArray;
    .restart local v32       #textArray:Lorg/json/JSONArray;
    .restart local v34       #title:Landroid/widget/TextView;
    :cond_7
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    goto :goto_7

    .line 403
    .end local v7           #news_title:Ljava/lang/String;
    .end local v10           #url_path:Ljava/lang/String;
    .end local v25           #imageView:Landroid/widget/ImageView;
    .end local v34           #title:Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 406
    .end local v24           #i:I
    .end local v27           #itemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v30           #pathArray:Lorg/json/JSONArray;
    .end local v32           #textArray:Lorg/json/JSONArray;
    .end local v33           #time:Landroid/widget/TextView;
    :catch_1
    move-exception v23

    .line 407
    .restart local v23       #e:Lorg/json/JSONException;
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4
.end method

.method private creatHeadViewLoadTask(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .parameter "user_id"

    .prologue
    .line 439
    new-instance v0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$4;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$4;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;Ljava/lang/String;)V

    return-object v0
.end method

.method private creatPictureLoadTask(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .parameter "path"

    .prologue
    .line 795
    new-instance v0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$5;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$5;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;Ljava/lang/String;)V

    return-object v0
.end method

.method private displayInItemView(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V
    .locals 0
    .parameter "holdView"
    .parameter "type"
    .parameter "position"

    .prologue
    .line 527
    packed-switch p2, :pswitch_data_0

    .line 547
    :goto_0
    return-void

    .line 530
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->showText(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V

    goto :goto_0

    .line 533
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->showReport(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V

    goto :goto_0

    .line 536
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->showFile(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V

    goto :goto_0

    .line 539
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->showPicture(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V

    goto :goto_0

    .line 542
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->showVoice(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private displayItemView(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V
    .locals 1
    .parameter "holdView"
    .parameter "type"
    .parameter "position"

    .prologue
    .line 499
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    .line 500
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->displayInItemView(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->displayOutItemView(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V

    goto :goto_0
.end method

.method private displayOutItemView(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V
    .locals 0
    .parameter "holdView"
    .parameter "type"
    .parameter "position"

    .prologue
    .line 507
    packed-switch p2, :pswitch_data_0

    .line 524
    :goto_0
    return-void

    .line 510
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->showText(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V

    goto :goto_0

    .line 513
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->showFile(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V

    goto :goto_0

    .line 516
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->showPicture(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V

    goto :goto_0

    .line 519
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->showVoice(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getTypeIn(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 203
    const/4 v0, 0x1

    .line 204
    .local v0, result:I
    packed-switch p1, :pswitch_data_0

    .line 226
    :goto_0
    :pswitch_0
    return v0

    .line 206
    :pswitch_1
    const/4 v0, 0x0

    .line 207
    goto :goto_0

    .line 209
    :pswitch_2
    const/4 v0, 0x1

    .line 210
    goto :goto_0

    .line 212
    :pswitch_3
    const/4 v0, 0x3

    .line 213
    goto :goto_0

    .line 215
    :pswitch_4
    const/4 v0, 0x2

    .line 216
    goto :goto_0

    .line 218
    :pswitch_5
    const/4 v0, 0x4

    .line 219
    goto :goto_0

    .line 221
    :pswitch_6
    const/4 v0, 0x5

    .line 222
    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private getTypeOut(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 233
    const/4 v0, 0x1

    .line 234
    .local v0, result:I
    packed-switch p1, :pswitch_data_0

    .line 253
    :goto_0
    :pswitch_0
    return v0

    .line 236
    :pswitch_1
    const/4 v0, 0x6

    .line 237
    goto :goto_0

    .line 239
    :pswitch_2
    const/4 v0, 0x7

    .line 240
    goto :goto_0

    .line 242
    :pswitch_3
    const/16 v0, 0x9

    .line 243
    goto :goto_0

    .line 245
    :pswitch_4
    const/16 v0, 0x8

    .line 246
    goto :goto_0

    .line 248
    :pswitch_5
    const/16 v0, 0xa

    .line 249
    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private initHoldInOut(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;Landroid/view/View;ZI)V
    .locals 1
    .parameter "holdView"
    .parameter "convertView"
    .parameter "flag"
    .parameter "position"

    .prologue
    .line 828
    .line 829
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_item_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/widget/CornerText;

    .line 828
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mTimeView:Lcom/cnlaunch/newgolo/widget/CornerText;

    .line 830
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_list_menu:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mMenuView:Landroid/view/View;

    .line 831
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_resend:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mResend:Landroid/widget/Button;

    .line 832
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_copy:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mCopy:Landroid/widget/Button;

    .line 833
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_forward:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mForward:Landroid/widget/Button;

    .line 835
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_favorite:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 834
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFavorite:Landroid/widget/Button;

    .line 836
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_del:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mDel:Landroid/widget/Button;

    .line 839
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_item_head:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 838
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mHeadView:Landroid/widget/ImageView;

    .line 842
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_entity_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 841
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mMsgEntityContent:Landroid/view/View;

    .line 844
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_item_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 843
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    .line 847
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_list_voice_id_in:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 846
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mVoiceLayout:Landroid/view/View;

    .line 849
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_item_voice_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 848
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mVoiceView:Landroid/widget/ImageView;

    .line 851
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_item_voice_logo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 850
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mVoiceLogo:Landroid/widget/ImageView;

    .line 853
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_item_voice_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 852
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mVoiceTime:Landroid/widget/TextView;

    .line 855
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_list_file_id:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFileLayout:Landroid/view/View;

    .line 857
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_item_file_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 856
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFileIcon:Landroid/widget/ImageView;

    .line 859
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_item_file_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 858
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFileName:Landroid/widget/TextView;

    .line 862
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_list_picture_id:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 861
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mPictureLayout:Landroid/view/View;

    .line 864
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_list_item_picture_id:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 863
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mPicture:Landroid/widget/ImageView;

    .line 866
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_list_item_picture_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 865
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mPicProgress:Landroid/widget/ProgressBar;

    .line 868
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_item_error:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 867
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mErrorIcon:Landroid/widget/ImageView;

    .line 870
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_item_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/widget/GoloProgress;

    .line 869
    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mProgress:Lcom/cnlaunch/newgolo/widget/GoloProgress;

    .line 871
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_resend:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mResend:Landroid/widget/Button;

    .line 873
    return-void
.end method

.method private initOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 131
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 132
    sget v1, Lcom/cnlaunch/golo3/message/R$drawable;->square_default_head:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 133
    sget v1, Lcom/cnlaunch/golo3/message/R$drawable;->square_default_head:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 134
    sget v1, Lcom/cnlaunch/golo3/message/R$drawable;->square_default_head:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 139
    return-void
.end method

.method private isOutMsg(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, result:Z
    packed-switch p1, :pswitch_data_0

    .line 577
    :goto_0
    return v0

    .line 564
    :pswitch_0
    const/4 v0, 0x0

    .line 565
    goto :goto_0

    .line 571
    :pswitch_1
    const/4 v0, 0x1

    .line 572
    goto :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private loadHead(Landroid/widget/ImageView;I)V
    .locals 5
    .parameter "headView"
    .parameter "position"

    .prologue
    .line 417
    const-string/jumbo v2, "ChatMessageAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "position:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-object v1, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    .line 419
    .local v1, user_id:Ljava/lang/String;
    const-string/jumbo v3, "ChatMessageAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "user_id:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",data.get(position).roomId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-object v2, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-object v2, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 421
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->myHeadPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v0

    .line 424
    .local v0, login:Lcom/cnlaunch/newgolo/model/LoginEntity;
    if-eqz v0, :cond_0

    .line 425
    iget-object v2, v0, Lcom/cnlaunch/newgolo/model/LoginEntity;->face_url:Ljava/lang/String;

    iput-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->myHeadPath:Ljava/lang/String;

    .line 428
    .end local v0           #login:Lcom/cnlaunch/newgolo/model/LoginEntity;
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->myHeadPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, p1, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 436
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->userHeadPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mPictureLoad:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->creatHeadViewLoadTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 433
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->userHeadPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, p1, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0
.end method

.method private loadPicture(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Ljava/lang/String;)V
    .locals 3
    .parameter "mPicture"
    .parameter "progress"
    .parameter "path"

    .prologue
    const/16 v2, 0x8

    .line 772
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    if-eqz p2, :cond_0

    .line 774
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mBitmapCache:Lcom/cnlaunch/newgolo/Tool/BitmapCache;

    invoke-virtual {v1, p3}, Lcom/cnlaunch/newgolo/Tool/BitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 778
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 779
    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mPictureLoad:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->creatPictureLoadTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 781
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 782
    if-eqz p2, :cond_0

    .line 783
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private setClickListener(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;I)V
    .locals 8
    .parameter "holdView"
    .parameter "position"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 460
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mMsgEntityContent:Landroid/view/View;

    new-instance v2, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;

    .line 461
    invoke-direct {v2, p0, p2, v3, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V

    .line 460
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mErrorIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;

    .line 463
    invoke-direct {v2, p0, p2, v7, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V

    .line 462
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mHeadView:Landroid/widget/ImageView;

    new-instance v2, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;

    .line 465
    invoke-direct {v2, p0, p2, v6, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V

    .line 464
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mResend:Landroid/widget/Button;

    new-instance v2, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;

    .line 467
    invoke-direct {v2, p0, p2, v5, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V

    .line 466
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mCopy:Landroid/widget/Button;

    new-instance v2, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;

    .line 469
    invoke-direct {v2, p0, p2, v5, v6}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V

    .line 468
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mForward:Landroid/widget/Button;

    new-instance v2, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;

    .line 471
    invoke-direct {v2, p0, p2, v5, v7}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V

    .line 470
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFavorite:Landroid/widget/Button;

    new-instance v2, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;

    .line 473
    invoke-direct {v2, p0, p2, v5, v5}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V

    .line 472
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mDel:Landroid/widget/Button;

    new-instance v2, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;

    .line 475
    const/4 v3, 0x5

    invoke-direct {v2, p0, p2, v5, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V

    .line 474
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mMsgEntityContent:Landroid/view/View;

    new-instance v2, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;

    .line 477
    const/4 v3, 0x5

    invoke-direct {v2, p0, p2, v3, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V

    .line 476
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 479
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mVoiceView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 480
    .local v0, anim:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 481
    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 483
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 486
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    goto :goto_0
.end method

.method private setImageConfig()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, builder:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 125
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 126
    new-instance v1, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    const/high16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 127
    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 128
    return-void
.end method

.method private setVisibility(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "flag"

    .prologue
    .line 821
    if-eqz p1, :cond_0

    .line 822
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 824
    :cond_0
    return-void

    .line 822
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showFile(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V
    .locals 10
    .parameter "holdView"
    .parameter "type"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 667
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 669
    .local v1, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v5, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mTimeView:Lcom/cnlaunch/newgolo/widget/CornerText;

    .line 670
    if-eqz p3, :cond_1

    .line 671
    iget-wide v6, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-wide v8, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_1

    move v2, v3

    .line 668
    :goto_0
    invoke-direct {p0, v5, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 672
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mMenuView:Landroid/view/View;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getShowMenu()Z

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 673
    iget-object v5, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mResend:Landroid/widget/Button;

    iget-object v2, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v6, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v2, v6, :cond_2

    move v2, v4

    :goto_1
    invoke-direct {p0, v5, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 674
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mCopy:Landroid/widget/Button;

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 675
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mForward:Landroid/widget/Button;

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 676
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFavorite:Landroid/widget/Button;

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 677
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mDel:Landroid/widget/Button;

    invoke-direct {p0, v2, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 679
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 680
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mVoiceLayout:Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 681
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFileLayout:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 682
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mPictureLayout:Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 683
    iget-object v5, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mProgress:Lcom/cnlaunch/newgolo/widget/GoloProgress;

    iget-object v2, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v6, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->init:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v2, v6, :cond_3

    .line 684
    invoke-direct {p0, p2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->isOutMsg(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    .line 683
    :goto_2
    invoke-direct {p0, v5, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 685
    iget-object v5, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mErrorIcon:Landroid/widget/ImageView;

    .line 686
    iget-object v2, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v6, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v2, v6, :cond_4

    move v2, v4

    .line 685
    :goto_3
    invoke-direct {p0, v5, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 687
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mMsgEntityContent:Landroid/view/View;

    new-instance v5, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;

    .line 688
    invoke-direct {v5, p0, p3, v4, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V

    .line 687
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mTimeView:Lcom/cnlaunch/newgolo/widget/CornerText;

    invoke-static {}, Lcom/cnlaunch/newgolo/Tool/DateTool;->getInstance()Lcom/cnlaunch/newgolo/Tool/DateTool;

    move-result-object v3

    iget-wide v4, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/newgolo/Tool/DateTool;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/newgolo/widget/CornerText;->setText(Ljava/lang/CharSequence;)V

    .line 690
    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 692
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFileName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    :cond_0
    return-void

    .end local v0           #fileName:Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 671
    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 673
    goto/16 :goto_1

    :cond_3
    move v2, v3

    .line 684
    goto :goto_2

    :cond_4
    move v2, v3

    .line 686
    goto :goto_3
.end method

.method private showPicture(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V
    .locals 9
    .parameter "holdView"
    .parameter "type"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 703
    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 705
    .local v0, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v4, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mTimeView:Lcom/cnlaunch/newgolo/widget/CornerText;

    .line 706
    if-eqz p3, :cond_0

    .line 707
    iget-wide v5, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    add-int/lit8 v7, p3, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-wide v7, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v7, 0x493e0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_0

    move v1, v2

    .line 704
    :goto_0
    invoke-direct {p0, v4, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 708
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mMenuView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getShowMenu()Z

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 709
    iget-object v4, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mResend:Landroid/widget/Button;

    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v1, v5, :cond_1

    move v1, v3

    :goto_1
    invoke-direct {p0, v4, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 710
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mCopy:Landroid/widget/Button;

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 711
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mForward:Landroid/widget/Button;

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 712
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFavorite:Landroid/widget/Button;

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 713
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mDel:Landroid/widget/Button;

    invoke-direct {p0, v1, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 715
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 716
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mVoiceLayout:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 717
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFileLayout:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 718
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mPictureLayout:Landroid/view/View;

    invoke-direct {p0, v1, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 719
    iget-object v4, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mProgress:Lcom/cnlaunch/newgolo/widget/GoloProgress;

    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->init:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v1, v5, :cond_2

    .line 720
    invoke-direct {p0, p2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->isOutMsg(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 719
    :goto_2
    invoke-direct {p0, v4, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 721
    iget-object v4, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mErrorIcon:Landroid/widget/ImageView;

    .line 722
    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v1, v5, :cond_3

    move v1, v3

    .line 721
    :goto_3
    invoke-direct {p0, v4, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 723
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mMsgEntityContent:Landroid/view/View;

    new-instance v4, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;

    .line 724
    invoke-direct {v4, p0, p3, v3, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V

    .line 723
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mTimeView:Lcom/cnlaunch/newgolo/widget/CornerText;

    invoke-static {}, Lcom/cnlaunch/newgolo/Tool/DateTool;->getInstance()Lcom/cnlaunch/newgolo/Tool/DateTool;

    move-result-object v2

    iget-wide v3, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/newgolo/Tool/DateTool;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/widget/CornerText;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mPicture:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mPicProgress:Landroid/widget/ProgressBar;

    .line 727
    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-direct {p0, v1, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->loadPicture(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Ljava/lang/String;)V

    .line 728
    return-void

    :cond_0
    move v1, v3

    .line 707
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 709
    goto :goto_1

    :cond_2
    move v1, v2

    .line 720
    goto :goto_2

    :cond_3
    move v1, v2

    .line 722
    goto :goto_3
.end method

.method private showReport(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V
    .locals 10
    .parameter "holdView"
    .parameter "type"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 627
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 628
    .local v1, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v5, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mTimeView:Lcom/cnlaunch/newgolo/widget/CornerText;

    if-eqz p3, :cond_0

    .line 629
    iget-wide v6, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-wide v8, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_0

    move v2, v3

    .line 628
    :goto_0
    invoke-direct {p0, v5, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 630
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mMenuView:Landroid/view/View;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getShowMenu()Z

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 631
    iget-object v5, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mResend:Landroid/widget/Button;

    iget-object v2, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v6, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v2, v6, :cond_1

    move v2, v4

    :goto_1
    invoke-direct {p0, v5, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 632
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mCopy:Landroid/widget/Button;

    invoke-direct {p0, v2, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 633
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mForward:Landroid/widget/Button;

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 634
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFavorite:Landroid/widget/Button;

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 635
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mDel:Landroid/widget/Button;

    invoke-direct {p0, v2, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 637
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    invoke-direct {p0, v2, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 638
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mVoiceLayout:Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 639
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFileLayout:Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 640
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mPictureLayout:Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 641
    iget-object v5, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mProgress:Lcom/cnlaunch/newgolo/widget/GoloProgress;

    iget-object v2, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v6, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->init:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v2, v6, :cond_2

    .line 642
    invoke-direct {p0, p2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->isOutMsg(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 641
    :goto_2
    invoke-direct {p0, v5, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 644
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mErrorIcon:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v6, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v5, v6, :cond_3

    :goto_3
    invoke-direct {p0, v2, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 645
    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 646
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 647
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v2, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$Clickable;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$Clickable;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 648
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 650
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    const/4 v3, 0x2

    iget v4, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->text_size:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 657
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    :goto_4
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mTimeView:Lcom/cnlaunch/newgolo/widget/CornerText;

    invoke-static {}, Lcom/cnlaunch/newgolo/Tool/DateTool;->getInstance()Lcom/cnlaunch/newgolo/Tool/DateTool;

    move-result-object v3

    iget-wide v4, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/newgolo/Tool/DateTool;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/newgolo/widget/CornerText;->setText(Ljava/lang/CharSequence;)V

    .line 658
    return-void

    :cond_0
    move v2, v4

    .line 629
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 631
    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 642
    goto :goto_2

    :cond_3
    move v4, v3

    .line 644
    goto :goto_3

    .line 655
    :cond_4
    iget-object v2, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private showText(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V
    .locals 11
    .parameter "holdView"
    .parameter "type"
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 587
    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 588
    .local v1, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v6, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mTimeView:Lcom/cnlaunch/newgolo/widget/CornerText;

    if-eqz p3, :cond_1

    .line 589
    iget-wide v7, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    add-int/lit8 v9, p3, -0x1

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-wide v9, v3, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x493e0

    cmp-long v3, v7, v9

    if-gtz v3, :cond_1

    move v3, v4

    .line 588
    :goto_0
    invoke-direct {p0, v6, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 590
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mMenuView:Landroid/view/View;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getShowMenu()Z

    move-result v6

    invoke-direct {p0, v3, v6}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 591
    iget-object v6, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mResend:Landroid/widget/Button;

    iget-object v3, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v7, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v3, v7, :cond_2

    move v3, v5

    :goto_1
    invoke-direct {p0, v6, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 592
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mCopy:Landroid/widget/Button;

    invoke-direct {p0, v3, v5}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 593
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mForward:Landroid/widget/Button;

    invoke-direct {p0, v3, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 594
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFavorite:Landroid/widget/Button;

    invoke-direct {p0, v3, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 595
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mDel:Landroid/widget/Button;

    invoke-direct {p0, v3, v5}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 597
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    invoke-direct {p0, v3, v5}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 598
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mVoiceLayout:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 599
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFileLayout:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 600
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mPictureLayout:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 601
    iget-object v6, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mProgress:Lcom/cnlaunch/newgolo/widget/GoloProgress;

    iget-object v3, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v7, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->init:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v3, v7, :cond_3

    .line 602
    invoke-direct {p0, p2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->isOutMsg(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    .line 601
    :goto_2
    invoke-direct {p0, v6, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 604
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mErrorIcon:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v7, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v6, v7, :cond_0

    move v4, v5

    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 605
    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 606
    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    invoke-static {v3, v4, v6}, Lcom/cnlaunch/newgolo/provider/FaceProvider;->toSpannableString(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 607
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 608
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    const/4 v4, 0x2

    iget v6, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->text_size:I

    int-to-float v6, v6

    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 609
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    invoke-static {v3, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 612
    const-string/jumbo v3, "[\u0002]{1}[^\u0002\u0003]+[\u0003]{1}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 613
    .local v2, p:Ljava/util/regex/Pattern;
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    const-string/jumbo v4, "active://"

    invoke-static {v3, v2, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 617
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    .end local v2           #p:Ljava/util/regex/Pattern;
    :goto_3
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mTimeView:Lcom/cnlaunch/newgolo/widget/CornerText;

    invoke-static {}, Lcom/cnlaunch/newgolo/Tool/DateTool;->getInstance()Lcom/cnlaunch/newgolo/Tool/DateTool;

    move-result-object v4

    iget-wide v5, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/newgolo/Tool/DateTool;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/newgolo/widget/CornerText;->setText(Ljava/lang/CharSequence;)V

    .line 618
    return-void

    :cond_1
    move v3, v5

    .line 589
    goto/16 :goto_0

    :cond_2
    move v3, v4

    .line 591
    goto/16 :goto_1

    :cond_3
    move v3, v4

    .line 602
    goto :goto_2

    .line 615
    :cond_4
    iget-object v3, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private showVoice(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V
    .locals 9
    .parameter "holdView"
    .parameter "type"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 737
    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 739
    .local v0, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v4, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mTimeView:Lcom/cnlaunch/newgolo/widget/CornerText;

    .line 740
    if-eqz p3, :cond_0

    .line 741
    iget-wide v5, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    add-int/lit8 v7, p3, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-wide v7, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v7, 0x493e0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_0

    move v1, v2

    .line 738
    :goto_0
    invoke-direct {p0, v4, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 742
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mMenuView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getShowMenu()Z

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 743
    iget-object v4, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mResend:Landroid/widget/Button;

    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v1, v5, :cond_1

    move v1, v3

    :goto_1
    invoke-direct {p0, v4, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 744
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mCopy:Landroid/widget/Button;

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 745
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mForward:Landroid/widget/Button;

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 746
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFavorite:Landroid/widget/Button;

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 747
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mDel:Landroid/widget/Button;

    invoke-direct {p0, v1, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 749
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mContent:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 750
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mVoiceLayout:Landroid/view/View;

    invoke-direct {p0, v1, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 751
    iget-object v4, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mVoiceLogo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getHasPlayed()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-direct {p0, v4, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 752
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mFileLayout:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 753
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mPictureLayout:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 754
    iget-object v4, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mProgress:Lcom/cnlaunch/newgolo/widget/GoloProgress;

    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->init:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v1, v5, :cond_3

    .line 755
    invoke-direct {p0, p2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->isOutMsg(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 754
    :goto_3
    invoke-direct {p0, v4, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 756
    iget-object v4, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mErrorIcon:Landroid/widget/ImageView;

    .line 757
    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v1, v5, :cond_4

    move v1, v3

    .line 756
    :goto_4
    invoke-direct {p0, v4, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setVisibility(Landroid/view/View;Z)V

    .line 758
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mMsgEntityContent:Landroid/view/View;

    new-instance v4, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;

    .line 759
    invoke-direct {v4, p0, p3, v3, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V

    .line 758
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mTimeView:Lcom/cnlaunch/newgolo/widget/CornerText;

    invoke-static {}, Lcom/cnlaunch/newgolo/Tool/DateTool;->getInstance()Lcom/cnlaunch/newgolo/Tool/DateTool;

    move-result-object v2

    iget-wide v3, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/newgolo/Tool/DateTool;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/widget/CornerText;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v1, p1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mVoiceTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    return-void

    :cond_0
    move v1, v3

    .line 741
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 743
    goto :goto_1

    :cond_2
    move v1, v3

    .line 751
    goto :goto_2

    :cond_3
    move v1, v2

    .line 755
    goto :goto_3

    :cond_4
    move v1, v2

    .line 757
    goto :goto_4
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mBitmapCache:Lcom/cnlaunch/newgolo/Tool/BitmapCache;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mBitmapCache:Lcom/cnlaunch/newgolo/Tool/BitmapCache;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/Tool/BitmapCache;->clear()V

    .line 919
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, result:I
    iget-object v5, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 168
    iget-object v5, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 169
    .local v1, chatMessage:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v5, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->userId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->userId:Ljava/lang/String;

    iget-object v6, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->getTypeOut(I)I

    move-result v4

    .end local v1           #chatMessage:Lcom/cnlaunch/newgolo/model/ChatMessage;
    :cond_0
    :goto_0
    move v5, v4

    .line 193
    :goto_1
    return v5

    .line 174
    .restart local v1       #chatMessage:Lcom/cnlaunch/newgolo/model/ChatMessage;
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 175
    .local v3, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    if-eqz v3, :cond_3

    .line 176
    iget-object v5, v3, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v6, "news"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 178
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 179
    iget-object v5, v3, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v6, "news"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 181
    const/16 v5, 0xc

    goto :goto_1

    .line 183
    .end local v0           #array:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 184
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 186
    .end local v2           #e:Lorg/json/JSONException;
    :cond_2
    const/16 v5, 0xb

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->getTypeIn(I)I

    move-result v4

    goto :goto_0
.end method

.method public getUserTextSize()I
    .locals 4

    .prologue
    .line 1108
    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1109
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string/jumbo v1, "text_size"

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, holdView:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;
    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->getItemViewType(I)I

    move-result v2

    .line 265
    .local v2, type:I
    if-nez p2, :cond_4

    .line 266
    new-instance v1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;

    .end local v1           #holdView:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;
    invoke-direct {v1, p0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;-><init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)V

    .line 267
    .restart local v1       #holdView:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 268
    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 269
    sget v4, Lcom/cnlaunch/golo3/message/R$layout;->list_view_item_in:I

    .line 268
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 270
    const/4 v3, 0x0

    invoke-direct {p0, v1, p2, v3, p1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->initHoldInOut(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;Landroid/view/View;ZI)V

    .line 271
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 286
    :goto_0
    if-eq v2, v6, :cond_0

    if-ne v2, v7, :cond_5

    .line 287
    :cond_0
    invoke-direct {p0, p2, p1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->bindNewsView(Landroid/view/View;II)V

    .line 288
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_item_head:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 289
    .local v0, headView:Landroid/widget/ImageView;
    invoke-direct {p0, v0, p1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->loadHead(Landroid/widget/ImageView;I)V

    .line 297
    .end local v0           #headView:Landroid/widget/ImageView;
    :goto_1
    return-object p2

    .line 272
    :cond_1
    if-ge v2, v6, :cond_2

    .line 273
    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 274
    sget v4, Lcom/cnlaunch/golo3/message/R$layout;->list_view_item_out:I

    .line 273
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 275
    const/4 v3, 0x1

    invoke-direct {p0, v1, p2, v3, p1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->initHoldInOut(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;Landroid/view/View;ZI)V

    .line 276
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_2
    if-ge v2, v7, :cond_3

    .line 278
    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/cnlaunch/golo3/message/R$layout;->list_item_public_single_news:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 279
    goto :goto_0

    .line 280
    :cond_3
    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/cnlaunch/golo3/message/R$layout;->list_item_public_multi_news:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 283
    goto :goto_0

    .line 284
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holdView:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;
    check-cast v1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;

    .restart local v1       #holdView:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;
    goto :goto_0

    .line 292
    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setClickListener(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;I)V

    .line 293
    invoke-direct {p0, v1, v2, p1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->displayItemView(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;II)V

    .line 294
    iget-object v3, v1, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->mHeadView:Landroid/widget/ImageView;

    invoke-direct {p0, v3, p1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->loadHead(Landroid/widget/ImageView;I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 258
    const/16 v0, 0xd

    return v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->data:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 145
    return-void
.end method

.method public setItemEntityClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;)V
    .locals 0
    .parameter "itemEntityClick"

    .prologue
    .line 933
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemEntityClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;

    .line 934
    return-void
.end method

.method public setItemErrorClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;)V
    .locals 0
    .parameter "itemErrorClick"

    .prologue
    .line 951
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemErrorClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;

    .line 952
    return-void
.end method

.method public setItemHeadClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;)V
    .locals 0
    .parameter "itemHeadClick"

    .prologue
    .line 942
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemHeadClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;

    .line 943
    return-void
.end method

.method public setItemLongClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;)V
    .locals 0
    .parameter "itemLongClick"

    .prologue
    .line 964
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemLongClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;

    .line 965
    return-void
.end method

.method public setItemMenuClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;)V
    .locals 0
    .parameter "itemMenuClick"

    .prologue
    .line 960
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemMenuClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;

    .line 961
    return-void
.end method
