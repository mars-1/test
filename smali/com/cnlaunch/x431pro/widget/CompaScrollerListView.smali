.class public Lcom/cnlaunch/x431pro/widget/CompaScrollerListView;
.super Landroid/widget/ListView;
.source "CompaScrollerListView.java"


# instance fields
.field private scrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/CompaScrollerListView;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 48
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 50
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/CompaScrollerListView;->scrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/CompaScrollerListView;->scrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/CompaScrollerListView;->scrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/CompaScrollerListView;->scrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setScrollView(Landroid/widget/ScrollView;)V
    .locals 0
    .parameter "scrollView"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/CompaScrollerListView;->scrollView:Landroid/widget/ScrollView;

    .line 70
    return-void
.end method
