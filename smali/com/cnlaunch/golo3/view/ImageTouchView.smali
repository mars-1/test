.class public Lcom/cnlaunch/golo3/view/ImageTouchView;
.super Landroid/widget/ImageView;
.source "ImageTouchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;,
        Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;,
        Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;
    }
.end annotation


# instance fields
.field private MAX_W:I

.field private MIN_W:I

.field private afterLenght:F

.field private beforeLenght:F

.field private current_Bottom:I

.field private current_Left:I

.field private current_Right:I

.field private current_Top:I

.field private current_x:I

.field private current_y:I

.field private endPointx:F

.field private endTime:J

.field private isBack:Z

.field private isControl_H:Z

.field private isControl_V:Z

.field private isNext:Z

.field private isScaleAnim:Z

.field private mActivity:Landroid/app/Activity;

.field private mListener:Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mode:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

.field private myAsyncTask:Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;

.field private scale_temp:F

.field private screen_H:I

.field private screen_W:I

.field private startPointx:F

.field private startTime:J

.field private start_Bottom:I

.field private start_Left:I

.field private start_Right:I

.field private start_Top:I

.field private start_x:I

.field private start_y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    iput v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Top:I

    iput v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Right:I

    iput v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Bottom:I

    .line 30
    iput v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Left:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isBack:Z

    .line 38
    iput-boolean v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isNext:Z

    .line 43
    sget-object v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->NONE:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    iput-object v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mode:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    .line 45
    iput-boolean v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_V:Z

    .line 47
    iput-boolean v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_H:Z

    .line 49
    iput-boolean v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isScaleAnim:Z

    .line 51
    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->startPointx:F

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->endPointx:F

    .line 58
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->constructData()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Top:I

    iput v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Right:I

    iput v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Bottom:I

    .line 30
    iput v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Left:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isBack:Z

    .line 38
    iput-boolean v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isNext:Z

    .line 43
    sget-object v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->NONE:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    iput-object v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mode:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    .line 45
    iput-boolean v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_V:Z

    .line 47
    iput-boolean v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_H:Z

    .line 49
    iput-boolean v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isScaleAnim:Z

    .line 51
    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->startPointx:F

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->endPointx:F

    .line 75
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->constructData()V

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/golo3/view/ImageTouchView;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Left:I

    return v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/golo3/view/ImageTouchView;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Top:I

    return v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/golo3/view/ImageTouchView;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Right:I

    return v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/golo3/view/ImageTouchView;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Bottom:I

    return v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/golo3/view/ImageTouchView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/golo3/view/ImageTouchView;IIII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cnlaunch/golo3/view/ImageTouchView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/golo3/view/ImageTouchView;)Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mListener:Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;

    return-object v0
.end method

.method private setPosition(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cnlaunch/golo3/view/ImageTouchView;->layout(IIII)V

    .line 300
    return-void
.end method


# virtual methods
.method public constructData()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mActivity:Landroid/app/Activity;

    .line 79
    sget-object v1, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 80
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    .line 81
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_H:I

    .line 82
    new-instance v1, Lcom/cnlaunch/golo3/view/ImageTouchView$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/golo3/view/ImageTouchView$1;-><init>(Lcom/cnlaunch/golo3/view/ImageTouchView;)V

    iput-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 91
    return-void
.end method

.method public doScaleAnim()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 381
    new-instance v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;

    iget v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getWidth()I

    move-result v2

    .line 382
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getHeight()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;-><init>(Lcom/cnlaunch/golo3/view/ImageTouchView;III)V

    .line 381
    iput-object v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->myAsyncTask:Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;

    .line 383
    iget-object v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->myAsyncTask:Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getRight()I

    move-result v3

    .line 384
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getBottom()I

    move-result v4

    .line 383
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;->setLTRB(IIII)V

    .line 385
    iget-object v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->myAsyncTask:Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    iput-boolean v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isScaleAnim:Z

    .line 387
    return-void
.end method

.method getDistance(Landroid/view/MotionEvent;)F
    .locals 5
    .parameter "event"

    .prologue
    .line 287
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v1, v3, v4

    .line 288
    .local v1, x:F
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float v2, v3, v4

    .line 290
    .local v2, y:F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 293
    .end local v1           #x:F
    .end local v2           #y:F
    :goto_0
    return v3

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 293
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 111
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 112
    iget v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Top:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    iput p3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Top:I

    .line 114
    iput p2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Left:I

    .line 115
    iput p5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Bottom:I

    .line 116
    iput p4, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_Right:I

    .line 119
    :cond_0
    return-void
.end method

.method onPointerDown(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 218
    sget-object v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->ZOOM:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    iput-object v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mode:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    .line 219
    invoke-virtual {p0, p1}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getDistance(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->beforeLenght:F

    .line 221
    :cond_0
    return-void
.end method

.method onTouchDown(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 201
    :try_start_0
    sget-object v1, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->DRAG:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    iput-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mode:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->startPointx:F

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_x:I

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_y:I

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_x:I

    .line 207
    iget v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_y:I

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_y:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 124
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->endPointx:F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->endTime:J

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 193
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/golo3/view/ImageTouchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 196
    :cond_0
    :goto_0
    return v5

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->startTime:J

    .line 140
    iget-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/cnlaunch/golo3/view/ImageTouchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    invoke-virtual {p0, p1}, Lcom/cnlaunch/golo3/view/ImageTouchView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/golo3/view/ImageTouchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 146
    invoke-virtual {p0, p1}, Lcom/cnlaunch/golo3/view/ImageTouchView;->onPointerDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 150
    :pswitch_3
    iget v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->endPointx:F

    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->startPointx:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getRight()I

    move-result v1

    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    if-gt v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->endPointx:F

    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->startPointx:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getLeft()I

    move-result v1

    if-gez v1, :cond_3

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 155
    :goto_1
    invoke-virtual {p0, p1}, Lcom/cnlaunch/golo3/view/ImageTouchView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 158
    :pswitch_4
    iget-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/golo3/view/ImageTouchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 159
    iget-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mode:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    sget-object v2, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->DRAG:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    if-ne v1, v2, :cond_5

    .line 160
    iget v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->endPointx:F

    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->startPointx:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4040

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget-wide v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->endTime:J

    iget-wide v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->startTime:J

    sub-long/2addr v1, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 161
    iget-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mListener:Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;

    if-eqz v1, :cond_4

    .line 163
    iget-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mListener:Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;

    invoke-interface {v1}, Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;->onShortClick()V

    goto/16 :goto_0

    .line 169
    :cond_4
    iget-boolean v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isBack:Z

    if-nez v1, :cond_5

    .line 172
    iput-boolean v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isBack:Z

    .line 173
    iget-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mListener:Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;

    if-eqz v1, :cond_5

    .line 174
    iget-boolean v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isNext:Z

    if-eqz v1, :cond_6

    .line 175
    iget-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mListener:Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;

    invoke-interface {v1}, Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;->showNext()V

    .line 182
    :cond_5
    :goto_2
    sget-object v1, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->NONE:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    iput-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mode:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    goto/16 :goto_0

    .line 177
    :cond_6
    iget-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mListener:Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;

    invoke-interface {v1}, Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;->showPrevious()V

    goto :goto_2

    .line 186
    :pswitch_5
    sget-object v1, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->NONE:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    iput-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mode:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    .line 188
    iget-boolean v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isScaleAnim:Z

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->doScaleAnim()V

    goto/16 :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method onTouchMove(Landroid/view/MotionEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    .line 224
    const/4 v2, 0x0

    .local v2, left:I
    const/4 v4, 0x0

    .local v4, top:I
    const/4 v3, 0x0

    .local v3, right:I
    const/4 v0, 0x0

    .line 225
    .local v0, bottom:I
    iget-object v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mode:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    sget-object v6, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->DRAG:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    if-ne v5, v6, :cond_7

    .line 227
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_x:I

    iget v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_x:I

    sub-int v2, v5, v6

    .line 229
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_x:I

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_x:I

    sub-int v3, v5, v6

    .line 230
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_y:I

    iget v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_y:I

    sub-int v4, v5, v6

    .line 231
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_y:I

    iget v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->start_y:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getHeight()I

    move-result v6

    add-int v0, v5, v6

    .line 232
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->endPointx:F

    iget v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->startPointx:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x4040

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 233
    iget-object v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/golo3/view/ImageTouchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 235
    :cond_0
    iget-boolean v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_V:Z

    if-eqz v5, :cond_4

    .line 236
    if-ltz v4, :cond_1

    .line 237
    const/4 v4, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getHeight()I

    move-result v0

    .line 241
    :cond_1
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_H:I

    if-gt v0, v5, :cond_2

    .line 242
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_H:I

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getHeight()I

    move-result v6

    sub-int v4, v5, v6

    .line 243
    iget v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_H:I

    .line 249
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_x:I

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_y:I

    .line 252
    int-to-double v5, v3

    iget v7, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x3ff8

    div-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_5

    .line 254
    iput-boolean v11, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isBack:Z

    .line 255
    iput-boolean v12, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isNext:Z

    .line 263
    :goto_1
    invoke-direct {p0, v2, v4, v3, v0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->setPosition(IIII)V

    .line 283
    :cond_3
    :goto_2
    return-void

    .line 246
    :cond_4
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getTop()I

    move-result v4

    .line 247
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getBottom()I

    move-result v0

    goto :goto_0

    .line 256
    :cond_5
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    div-int/lit8 v5, v5, 0x3

    if-lt v2, v5, :cond_6

    .line 258
    iput-boolean v11, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isBack:Z

    .line 259
    iput-boolean v11, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isNext:Z

    goto :goto_1

    .line 261
    :cond_6
    iput-boolean v12, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isBack:Z

    goto :goto_1

    .line 267
    :cond_7
    iget-object v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mode:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    sget-object v6, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->ZOOM:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    if-ne v5, v6, :cond_3

    .line 269
    invoke-virtual {p0, p1}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getDistance(Landroid/view/MotionEvent;)F

    move-result v5

    iput v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->afterLenght:F

    .line 270
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->afterLenght:F

    iget v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->beforeLenght:F

    sub-float v1, v5, v6

    .line 271
    .local v1, gapLenght:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 272
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->afterLenght:F

    iget v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->beforeLenght:F

    div-float/2addr v5, v6

    iput v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->scale_temp:F

    .line 273
    float-to-double v5, v1

    cmpg-double v5, v5, v7

    if-gez v5, :cond_9

    .line 274
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->scale_temp:F

    float-to-double v5, v5

    const-wide v7, 0x3feccccccccccccdL

    mul-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->scale_temp:F

    .line 278
    :cond_8
    :goto_3
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->scale_temp:F

    invoke-virtual {p0, v5}, Lcom/cnlaunch/golo3/view/ImageTouchView;->setScale(F)V

    .line 280
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->afterLenght:F

    iput v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->beforeLenght:F

    goto :goto_2

    .line 275
    :cond_9
    float-to-double v5, v1

    cmpl-double v5, v5, v7

    if-lez v5, :cond_8

    .line 276
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->scale_temp:F

    float-to-double v5, v5

    const-wide v7, 0x3ff199999999999aL

    mul-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->scale_temp:F

    goto :goto_3
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bm"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    iget v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->MAX_W:I

    .line 104
    iget v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->MIN_W:I

    .line 105
    iget v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    iget v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_H:I

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/cnlaunch/golo3/view/ImageTouchView;->setPosition(IIII)V

    goto :goto_0
.end method

.method public setOnImageTouchListener(Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mListener:Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;

    .line 94
    return-void
.end method

.method setScale(F)V
    .locals 8
    .parameter "scale"

    .prologue
    const/4 v7, 0x1

    const/high16 v4, 0x3f80

    const/4 v6, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v4, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v0, v2, 0x4

    .line 305
    .local v0, disX:I
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v4, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v1, v2, 0x4

    .line 306
    .local v1, disY:I
    cmpl-float v2, p1, v4

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->MAX_W:I

    if-gt v2, v3, :cond_3

    .line 307
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Left:I

    .line 308
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getTop()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Top:I

    .line 309
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Right:I

    .line 310
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getBottom()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Bottom:I

    .line 312
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Left:I

    iget v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Top:I

    iget v4, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Right:I

    .line 313
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Bottom:I

    .line 312
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cnlaunch/golo3/view/ImageTouchView;->setFrame(IIII)Z

    .line 315
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Top:I

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Bottom:I

    iget v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_H:I

    if-lt v2, v3, :cond_1

    .line 317
    iput-boolean v7, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_V:Z

    .line 321
    :goto_0
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Left:I

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Right:I

    iget v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    if-lt v2, v3, :cond_2

    .line 322
    iput-boolean v7, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_H:Z

    .line 378
    :cond_0
    :goto_1
    return-void

    .line 319
    :cond_1
    iput-boolean v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_V:Z

    goto :goto_0

    .line 324
    :cond_2
    iput-boolean v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_H:Z

    goto :goto_1

    .line 327
    :cond_3
    cmpg-float v2, p1, v4

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->MIN_W:I

    if-lt v2, v3, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Left:I

    .line 329
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Top:I

    .line 330
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getRight()I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Right:I

    .line 331
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getBottom()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Bottom:I

    .line 333
    iget-boolean v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_V:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Top:I

    if-lez v2, :cond_4

    .line 334
    iput v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Top:I

    .line 335
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getBottom()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Bottom:I

    .line 336
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Bottom:I

    iget v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_H:I

    if-ge v2, v3, :cond_4

    .line 337
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_H:I

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Bottom:I

    .line 338
    iput-boolean v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_V:Z

    .line 342
    :cond_4
    iget-boolean v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_V:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Bottom:I

    iget v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_H:I

    if-ge v2, v3, :cond_5

    .line 343
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_H:I

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Bottom:I

    .line 344
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getTop()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Top:I

    .line 345
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Top:I

    if-lez v2, :cond_5

    .line 346
    iput v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Top:I

    .line 347
    iput-boolean v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_V:Z

    .line 351
    :cond_5
    iget-boolean v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_H:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Left:I

    if-ltz v2, :cond_6

    .line 352
    iput v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Left:I

    .line 353
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getRight()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Right:I

    .line 354
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Right:I

    iget v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    if-gt v2, v3, :cond_6

    .line 355
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Right:I

    .line 356
    iput-boolean v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_H:Z

    .line 359
    :cond_6
    iget-boolean v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_H:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Right:I

    iget v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    if-gt v2, v3, :cond_7

    .line 360
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Right:I

    .line 361
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->getLeft()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Left:I

    .line 362
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Left:I

    if-ltz v2, :cond_7

    .line 363
    iput v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Left:I

    .line 364
    iput-boolean v6, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_H:Z

    .line 367
    :cond_7
    iget-boolean v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_H:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isControl_V:Z

    if-eqz v2, :cond_9

    .line 368
    :cond_8
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Left:I

    iget v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Top:I

    iget v4, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Right:I

    .line 369
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Bottom:I

    .line 368
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cnlaunch/golo3/view/ImageTouchView;->setFrame(IIII)Z

    goto/16 :goto_1

    .line 371
    :cond_9
    iget v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Left:I

    iget v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Top:I

    iget v4, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Right:I

    .line 372
    iget v5, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->current_Bottom:I

    .line 371
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cnlaunch/golo3/view/ImageTouchView;->setFrame(IIII)Z

    .line 373
    iput-boolean v7, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->isScaleAnim:Z

    goto/16 :goto_1
.end method

.method public setScreen_H(I)V
    .locals 0
    .parameter "screen_H"

    .prologue
    .line 70
    iput p1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_H:I

    .line 71
    return-void
.end method

.method public setScreen_W(I)V
    .locals 0
    .parameter "screen_W"

    .prologue
    .line 66
    iput p1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->screen_W:I

    .line 67
    return-void
.end method

.method public setmActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "mActivity"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView;->mActivity:Landroid/app/Activity;

    .line 63
    return-void
.end method
