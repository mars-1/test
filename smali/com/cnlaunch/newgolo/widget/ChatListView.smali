.class public Lcom/cnlaunch/newgolo/widget/ChatListView;
.super Landroid/widget/ListView;
.source "ChatListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final STOP_RECORDING:Ljava/lang/String; = "stop_recording"


# instance fields
.field private final STATUS_LOADING:I

.field private final STATUS_NORMAL:I

.field private final STATUS_PULLING:I

.field private final STATUS_SHOW:I

.field private dividerHeightScale:D

.field private downX:F

.field private downY:F

.field private foot:Landroid/view/View;

.field private handler:Lcom/cnlaunch/newgolo/GoloHandler;

.field private header:Landroid/view/View;

.field private headerHeight:I

.field private headerScale:D

.field private headerStatus:I

.field private isRecord:Z

.field private isRecording:Z

.field private measureLock:Z

.field private recordY:F

.field private upX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 21
    iput v1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->STATUS_NORMAL:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->STATUS_PULLING:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->STATUS_SHOW:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->STATUS_LOADING:I

    .line 28
    iput-boolean v2, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->measureLock:Z

    .line 30
    iput v1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerStatus:I

    .line 31
    const-wide v0, 0x3fb999999999999aL

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerScale:D

    .line 32
    const-wide v0, 0x3f9ff2e48e8a71deL

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->dividerHeightScale:D

    .line 36
    iput-boolean v2, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecording:Z

    .line 164
    new-instance v0, Lcom/cnlaunch/newgolo/widget/ChatListView$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/widget/ChatListView$1;-><init>(Lcom/cnlaunch/newgolo/widget/ChatListView;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->handler:Lcom/cnlaunch/newgolo/GoloHandler;

    .line 41
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->STATUS_NORMAL:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->STATUS_PULLING:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->STATUS_SHOW:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->STATUS_LOADING:I

    .line 28
    iput-boolean v2, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->measureLock:Z

    .line 30
    iput v1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerStatus:I

    .line 31
    const-wide v0, 0x3fb999999999999aL

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerScale:D

    .line 32
    const-wide v0, 0x3f9ff2e48e8a71deL

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->dividerHeightScale:D

    .line 36
    iput-boolean v2, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecording:Z

    .line 164
    new-instance v0, Lcom/cnlaunch/newgolo/widget/ChatListView$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/widget/ChatListView$1;-><init>(Lcom/cnlaunch/newgolo/widget/ChatListView;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->handler:Lcom/cnlaunch/newgolo/GoloHandler;

    .line 46
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->STATUS_NORMAL:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->STATUS_PULLING:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->STATUS_SHOW:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->STATUS_LOADING:I

    .line 28
    iput-boolean v2, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->measureLock:Z

    .line 30
    iput v1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerStatus:I

    .line 31
    const-wide v0, 0x3fb999999999999aL

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerScale:D

    .line 32
    const-wide v0, 0x3f9ff2e48e8a71deL

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->dividerHeightScale:D

    .line 36
    iput-boolean v2, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecording:Z

    .line 164
    new-instance v0, Lcom/cnlaunch/newgolo/widget/ChatListView$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/widget/ChatListView$1;-><init>(Lcom/cnlaunch/newgolo/widget/ChatListView;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->handler:Lcom/cnlaunch/newgolo/GoloHandler;

    .line 51
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->init()V

    .line 52
    return-void
.end method

.method private stopRecordingEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    packed-switch v7, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 220
    :pswitch_0
    iget-boolean v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecording:Z

    if-eqz v7, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->downX:F

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->downY:F

    .line 223
    const-string/jumbo v7, "downX"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->downX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string/jumbo v7, "downY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->downY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :pswitch_1
    iget-boolean v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecording:Z

    if-eqz v7, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->upX:F

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 232
    .local v6, upY:F
    const-string/jumbo v7, "cy_upX"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->upX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string/jumbo v7, "cy_upY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->downY:F

    sub-float v7, v6, v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    iget v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->upX:F

    iget v8, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->downX:F

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 235
    const-string/jumbo v7, "dismisDialog"

    const-string/jumbo v8, "true"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->upX:F

    sub-float/2addr v7, v6

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 237
    .local v0, a:D
    iget v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->downX:F

    iget v8, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->downY:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 238
    .local v2, b:D
    add-double v7, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4024

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    .line 239
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "stop_recording"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v5, stopRecording:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 241
    .local v4, contxt:Landroid/content/Context;
    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecording:Z

    goto/16 :goto_0

    .line 248
    .end local v0           #a:D
    .end local v2           #b:D
    .end local v4           #contxt:Landroid/content/Context;
    .end local v5           #stopRecording:Landroid/content/Intent;
    .end local v6           #upY:F
    :pswitch_2
    iget-boolean v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecording:Z

    if-eqz v7, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->upX:F

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 251
    .restart local v6       #upY:F
    const-string/jumbo v7, "cy_upX"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->upX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string/jumbo v7, "cy_upY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->downY:F

    sub-float v7, v6, v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    iget v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->upX:F

    iget v8, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->downX:F

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 254
    const-string/jumbo v7, "dismisDialog"

    const-string/jumbo v8, "true"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->upX:F

    sub-float/2addr v7, v6

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 256
    .restart local v0       #a:D
    iget v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->downX:F

    iget v8, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->downY:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 257
    .restart local v2       #b:D
    add-double v7, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4024

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    .line 258
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "stop_recording"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .restart local v5       #stopRecording:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 260
    .restart local v4       #contxt:Landroid/content/Context;
    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 261
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecording:Z

    goto/16 :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0, p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->setCacheColorHint(I)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/cnlaunch/newgolo/widget/ChatListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cnlaunch/golo3/message/R$layout;->list_view_header_chat:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->header:Landroid/view/View;

    .line 59
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cnlaunch/golo3/message/R$layout;->list_view_foot_chat:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->foot:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->header:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->addHeaderView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->foot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->addFooterView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method protected onActionDown(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->getFirstVisiblePosition()I

    move-result v0

    .line 112
    .local v0, position:I
    iget-boolean v1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecord:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecord:Z

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->recordY:F

    .line 116
    :cond_0
    return-void
.end method

.method protected onActionMove(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x4000

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->getFirstVisiblePosition()I

    move-result v2

    .line 120
    .local v2, position:I
    iget-boolean v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecord:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    .line 121
    iput-boolean v8, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecord:Z

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->recordY:F

    .line 134
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->getLastVisiblePosition()I

    move-result v1

    .line 135
    .local v1, last_position:I
    iget-boolean v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecord:Z

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_5

    .line 136
    iput-boolean v8, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecord:Z

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->recordY:F

    .line 147
    :cond_1
    :goto_1
    return-void

    .line 123
    .end local v1           #last_position:I
    :cond_2
    iget-boolean v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecord:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->recordY:F

    sub-float/2addr v3, v4

    div-float v0, v3, v7

    .line 125
    .local v0, d:F
    cmpl-float v3, v0, v5

    if-lez v3, :cond_4

    iget v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    .line 126
    iput v9, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerStatus:I

    .line 130
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->header:Landroid/view/View;

    iget v4, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    float-to-int v4, v4

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 127
    :cond_4
    iget v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    .line 128
    const/4 v3, 0x3

    iput v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerStatus:I

    goto :goto_2

    .line 138
    .end local v0           #d:F
    .restart local v1       #last_position:I
    :cond_5
    iget-boolean v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecord:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->recordY:F

    sub-float/2addr v3, v4

    div-float v0, v3, v7

    .line 140
    .restart local v0       #d:F
    cmpl-float v3, v0, v5

    if-lez v3, :cond_7

    iget v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_7

    .line 141
    iput v9, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerStatus:I

    .line 145
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->foot:Landroid/view/View;

    neg-float v4, v0

    iget v5, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v6, v6, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 142
    :cond_7
    iget v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    .line 143
    const/4 v3, 0x3

    iput v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerStatus:I

    goto :goto_3
.end method

.method protected onActionUP(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 150
    iput-boolean v2, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecord:Z

    .line 151
    iget v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 152
    const/4 v0, 0x4

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerStatus:I

    .line 153
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->header:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 154
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->handler:Lcom/cnlaunch/newgolo/GoloHandler;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->handler:Lcom/cnlaunch/newgolo/GoloHandler;

    const v1, 0x186a6

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/GoloHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerStatus:I

    .line 160
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->header:Landroid/view/View;

    iget v1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 161
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->foot:Landroid/view/View;

    iget v1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x0

    .line 67
    iget-boolean v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->measureLock:Z

    if-nez v3, :cond_1

    .line 68
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->measureLock:Z

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 70
    .local v2, width:I
    iget-object v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->header:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 71
    int-to-double v3, v2

    iget-wide v5, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerScale:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    .line 72
    iget-object v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->header:Landroid/view/View;

    sget v4, Lcom/cnlaunch/golo3/message/R$id;->chat_list_header_content:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, content:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 74
    .local v1, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->header:Landroid/view/View;

    iget v4, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    neg-int v4, v4

    invoke-virtual {v3, v7, v4, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 77
    iget-object v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->foot:Landroid/view/View;

    iget v4, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    neg-int v4, v4

    invoke-virtual {v3, v7, v7, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    .end local v0           #content:Landroid/view/View;
    .end local v1           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-wide v3, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->dividerHeightScale:D

    int-to-double v5, v2

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/newgolo/widget/ChatListView;->setDividerHeight(I)V

    .line 81
    .end local v2           #width:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 82
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "absListView"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 195
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "absListView"
    .parameter "i"

    .prologue
    .line 186
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecording:Z

    if-nez v0, :cond_1

    .line 87
    iget v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->handler:Lcom/cnlaunch/newgolo/GoloHandler;

    const v1, 0x186ad

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/GoloHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 91
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/widget/ChatListView;->onActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/widget/ChatListView;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/widget/ChatListView;->onActionUP(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/widget/ChatListView;->stopRecordingEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDividerHeightScale(D)V
    .locals 2
    .parameter "dividerHeightScale"

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 205
    iput-wide p1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->dividerHeightScale:D

    .line 207
    :cond_0
    return-void
.end method

.method public setHandler(Lcom/cnlaunch/newgolo/GoloHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->handler:Lcom/cnlaunch/newgolo/GoloHandler;

    .line 169
    return-void
.end method

.method public setHeaderScale(Ljava/lang/Double;)V
    .locals 4
    .parameter "headerScale"

    .prologue
    .line 198
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 199
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerScale:D

    .line 201
    :cond_0
    return-void
.end method

.method public setRecording(Z)V
    .locals 0
    .parameter "recording"

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->isRecording:Z

    .line 211
    return-void
.end method

.method public updateComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerStatus:I

    .line 173
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->header:Landroid/view/View;

    iget v1, p0, Lcom/cnlaunch/newgolo/widget/ChatListView;->headerHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 174
    return-void
.end method
