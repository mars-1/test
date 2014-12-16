.class public Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;
.super Landroid/app/Activity;
.source "ShowPictureActivity.java"

# interfaces
.implements Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;,
        Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;
    }
.end annotation


# static fields
.field private static final EXTR_DATA:Ljava/lang/String; = "BUNDLE"

.field private static final EXTR_POSITION:Ljava/lang/String; = "IMAGEPOSITION"

.field private static final MSG_SET_PROGRESS:I = 0x1

.field private static final MSG_SHOW_PROGRESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ShowPictureActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mPicture:Lcom/cnlaunch/golo3/view/ImageTouchView;

.field private mRoundProgressView:Landroid/widget/ProgressBar;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/golo3/image/MessageObj;",
            ">;"
        }
    .end annotation
.end field

.field private pictureIndex:I

.field private progressAsync:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$1;-><init>(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mRoundProgressView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->messages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->messages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I

    return-void
.end method

.method static synthetic access$5(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I

    return v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->startProgress(Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;)V

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Lcom/cnlaunch/golo3/view/ImageTouchView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mPicture:Lcom/cnlaunch/golo3/view/ImageTouchView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->progressAsync:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;

    return-object v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->show_picture_detail_info:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/golo3/view/ImageTouchView;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mPicture:Lcom/cnlaunch/golo3/view/ImageTouchView;

    .line 84
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mPicture:Lcom/cnlaunch/golo3/view/ImageTouchView;

    invoke-virtual {v0, p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->setOnImageTouchListener(Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;)V

    .line 85
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->show_picture_count:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mCount:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->download_progressbar:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mRoundProgressView:Landroid/widget/ProgressBar;

    .line 87
    return-void
.end method

.method private loadPicture()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 79
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;-><init>(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;)V

    new-array v1, v3, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method

.method private startProgress(Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;)V
    .locals 2
    .parameter "pIt"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;-><init>(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->progressAsync:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;

    .line 192
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->progressAsync:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;->start()V

    .line 193
    return-void
.end method


# virtual methods
.method public getPictureList(Ljava/util/List;Ljava/util/List;I)I
    .locals 5
    .parameter
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/newgolo/model/ChatMessage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/golo3/image/MessageObj;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    .local p2, msgs:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/image/MessageObj;>;"
    const/4 v1, -0x1

    .line 171
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 185
    return v1

    .line 172
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 173
    new-instance v2, Lcom/cnlaunch/golo3/image/MessageObj;

    invoke-direct {v2}, Lcom/cnlaunch/golo3/image/MessageObj;-><init>()V

    .line 174
    .local v2, mesObj:Lcom/cnlaunch/golo3/image/MessageObj;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/golo3/image/MessageObj;->setFilePath(Ljava/lang/String;)V

    .line 175
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/golo3/image/MessageObj;->setId(Ljava/lang/String;)V

    .line 176
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/golo3/image/MessageObj;->setUri(Ljava/lang/String;)V

    .line 177
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/golo3/image/MessageObj;->setThumbPath(Ljava/lang/String;)V

    .line 178
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getThumb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/golo3/image/MessageObj;->setThumb(Ljava/lang/String;)V

    .line 179
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    if-ne v0, p3, :cond_1

    .line 181
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 171
    .end local v2           #mesObj:Lcom/cnlaunch/golo3/image/MessageObj;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->push(Landroid/app/Activity;)V

    .line 72
    sget v0, Lcom/cnlaunch/golo3/message/R$layout;->show_image_detail:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->setContentView(I)V

    .line 73
    iput-object p0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->initView()V

    .line 75
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->loadPicture()V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->progressAsync:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->progressAsync:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;->stopThread()V

    .line 159
    :cond_0
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->pop(Landroid/app/Activity;)V

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    return-void
.end method

.method public onLongClick()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public onShortClick()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public showNext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    iget v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mRoundProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I

    .line 242
    const-string/jumbo v0, "ShowPictureActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pictureIndex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;-><init>(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public showPrevious()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    iget v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mRoundProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I

    .line 252
    const-string/jumbo v0, "ShowPictureActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pictureIndex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;-><init>(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
