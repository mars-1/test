.class public Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;
.super Ljava/lang/Object;
.source "ReferenceLineLayer.java"

# interfaces
.implements Lcom/cnlaunch/android/widget/MeasureResultObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;
    }
.end annotation


# instance fields
.field public mDF:Ljava/text/DecimalFormat;

.field private mMaxLineValue:D

.field private mMinLineValue:D

.field private mOnLineLayerCursorChangeListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;

.field private mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

.field private mSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

.field private mView2ValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private tv_Max:Landroid/widget/TextView;

.field private tv_Min:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/android/widget/SlideGaugeLayout;Landroid/content/Context;)V
    .locals 2
    .parameter "referenceLineLayout"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mView2ValueMap:Ljava/util/Map;

    .line 32
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mOnLineLayerCursorChangeListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;

    .line 44
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v0, p0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->setMeasureResultObserver(Lcom/cnlaunch/android/widget/MeasureResultObserver;)V

    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mDF:Ljava/text/DecimalFormat;

    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mDF:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mDF:Ljava/text/DecimalFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 50
    return-void
.end method


# virtual methods
.method public SetMaxMin(Lcom/cnlaunch/android/widget/MeasureSubject;DD)V
    .locals 5
    .parameter "measureSubject"
    .parameter "maxValue"
    .parameter "minValue"

    .prologue
    .line 162
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    if-eq v3, p1, :cond_0

    .line 163
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    .line 165
    :cond_0
    iput-wide p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mMaxLineValue:D

    .line 166
    iput-wide p4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mMinLineValue:D

    .line 167
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    const v4, 0x7f0d0279

    invoke-virtual {v3, v4}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 168
    .local v2, refLine:Landroid/view/View;
    invoke-interface {p1}, Lcom/cnlaunch/android/widget/MeasureSubject;->getMaxMeasureValue()D

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lcom/cnlaunch/android/widget/MeasureSubject;->getCursorYByValue(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 169
    .local v0, cursormaxY:I
    invoke-interface {p1, p4, p5}, Lcom/cnlaunch/android/widget/MeasureSubject;->getCursorYByValue(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 171
    .local v1, cursorminy:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v3, v2, v0, v1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->setValidTopArea(Landroid/view/View;II)V

    .line 173
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    const v4, 0x7f0d027b

    invoke-virtual {v3, v4}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 174
    invoke-interface {p1, p2, p3}, Lcom/cnlaunch/android/widget/MeasureSubject;->getCursorYByValue(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 175
    invoke-interface {p1}, Lcom/cnlaunch/android/widget/MeasureSubject;->getMinMeasureValue()D

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lcom/cnlaunch/android/widget/MeasureSubject;->getCursorYByValue(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 176
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v3, v2, v0, v1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->setValidTopArea(Landroid/view/View;II)V

    .line 179
    return-void
.end method

.method public bShowReferenceLine()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public checkValueCanShow(Lcom/cnlaunch/android/widget/MeasureSubject;ID)Z
    .locals 6
    .parameter "measureSubject"
    .parameter "refLineId"
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, realLineID:I
    if-ne p2, v0, :cond_2

    .line 96
    const v1, 0x7f0d0279

    .line 101
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v4, v1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 102
    .local v2, refLine:Landroid/view/View;
    invoke-interface {p1}, Lcom/cnlaunch/android/widget/MeasureSubject;->getMaxMeasureValue()D

    move-result-wide v4

    cmpg-double v4, p3, v4

    if-gtz v4, :cond_3

    invoke-interface {p1}, Lcom/cnlaunch/android/widget/MeasureSubject;->getMinMeasureValue()D

    move-result-wide v4

    cmpl-double v4, p3, v4

    if-ltz v4, :cond_3

    .line 103
    .local v0, b:Z
    :goto_1
    if-eqz v2, :cond_1

    .line 104
    if-nez v0, :cond_4

    .line 105
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_1
    :goto_2
    return v0

    .line 98
    .end local v0           #b:Z
    .end local v2           #refLine:Landroid/view/View;
    :cond_2
    const/4 v4, 0x2

    if-ne p2, v4, :cond_0

    .line 99
    const v1, 0x7f0d027b

    goto :goto_0

    .restart local v2       #refLine:Landroid/view/View;
    :cond_3
    move v0, v3

    .line 102
    goto :goto_1

    .line 108
    .restart local v0       #b:Z
    :cond_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public notifyCursorPanelSizeChanged(IIII)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 86
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mView2ValueMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    return-void

    .line 86
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    .local v1, m:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Double;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 88
    .local v2, refLine:Landroid/view/View;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/cnlaunch/android/widget/MeasureSubject;->getCursorYByValue(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 89
    .local v0, cursorY:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3, v2, v5, v0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->forceUpdateChildPosition(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public notifyHorizontalCursorChanged(Lcom/cnlaunch/android/widget/MeasureSubject;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0
    .parameter "subject"
    .parameter "dragLayout"
    .parameter "cursor"
    .parameter "left"

    .prologue
    .line 54
    return-void
.end method

.method public notifyVerticalCursorChanged(Lcom/cnlaunch/android/widget/MeasureSubject;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 11
    .parameter "subject"
    .parameter "dragLayout"
    .parameter "cursor"
    .parameter "top"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    if-eq v0, p1, :cond_0

    .line 59
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    .line 61
    :cond_0
    invoke-interface {p1, p4}, Lcom/cnlaunch/android/widget/MeasureSubject;->getValueByCursorY(I)D

    move-result-wide v2

    .line 63
    .local v2, measureValue:D
    const v0, 0x7f0d027a

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 64
    .local v10, measureValueTxt:Landroid/widget/TextView;
    if-eqz v10, :cond_1

    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mDF:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0279

    if-ne v0, v1, :cond_3

    .line 68
    iget-wide v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mMinLineValue:D

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->SetMaxMin(Lcom/cnlaunch/android/widget/MeasureSubject;DD)V

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mOnLineLayerCursorChangeListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mOnLineLayerCursorChangeListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;->OnLineLayerCursorChanged(ID)V

    .line 81
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mView2ValueMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void

    .line 74
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d027b

    if-ne v0, v1, :cond_2

    .line 75
    iget-wide v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mMaxLineValue:D

    move-object v4, p0

    move-object v5, p1

    move-wide v8, v2

    invoke-virtual/range {v4 .. v9}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->SetMaxMin(Lcom/cnlaunch/android/widget/MeasureSubject;DD)V

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mOnLineLayerCursorChangeListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mOnLineLayerCursorChangeListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;->OnLineLayerCursorChanged(ID)V

    goto :goto_0
.end method

.method public resetReferenceLine(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const v2, 0x7f0d027a

    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    const v1, 0x7f0d0279

    invoke-virtual {v0, v1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->tv_Max:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->tv_Max:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    const v1, 0x7f0d027b

    invoke-virtual {v0, v1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->tv_Min:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->tv_Min:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnLineLayerCursorChangeListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mOnLineLayerCursorChangeListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;

    .line 42
    return-void
.end method

.method public setReferenceLineValue(Lcom/cnlaunch/android/widget/MeasureSubject;DIZ)V
    .locals 9
    .parameter "measureSubject"
    .parameter "measureValue"
    .parameter "refLineId"
    .parameter "requestLayout"

    .prologue
    .line 116
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    if-eq v7, p1, :cond_0

    .line 117
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    .line 119
    :cond_0
    move-wide v5, p2

    .line 121
    .local v5, validValue:D
    const/4 v3, 0x0

    .line 122
    .local v3, realLineID:I
    const/4 v7, 0x1

    if-ne p4, v7, :cond_3

    .line 123
    const v3, 0x7f0d0279

    .line 131
    :goto_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v7, v3}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 133
    .local v4, refLine:Landroid/view/View;
    invoke-interface {p1, v5, v6}, Lcom/cnlaunch/android/widget/MeasureSubject;->getCursorYByValue(D)D

    move-result-wide v7

    double-to-int v0, v7

    .line 134
    .local v0, cursorY:I
    move v2, v0

    .line 135
    .local v2, positionY:I
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7, v4, v8, v2}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->forceUpdateChildPosition(Landroid/view/View;II)V

    .line 136
    const v7, 0x7f0d027a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 137
    .local v1, measureValueTxt:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mDF:Ljava/text/DecimalFormat;

    invoke-virtual {v7, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    if-eqz p5, :cond_1

    .line 140
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mRefLineLayout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v7}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->requestLayout()V

    .line 142
    :cond_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mView2ValueMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v0           #cursorY:I
    .end local v1           #measureValueTxt:Landroid/widget/TextView;
    .end local v2           #positionY:I
    .end local v4           #refLine:Landroid/view/View;
    :cond_2
    return-void

    .line 126
    :cond_3
    const/4 v7, 0x2

    if-ne p4, v7, :cond_2

    .line 127
    const v3, 0x7f0d027b

    .line 128
    goto :goto_0
.end method
