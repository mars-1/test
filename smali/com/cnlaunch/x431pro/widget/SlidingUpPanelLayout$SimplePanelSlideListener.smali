.class public Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SimplePanelSlideListener;
.super Ljava/lang/Object;
.source "SlidingUpPanelLayout.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePanelSlideListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelAnchored(Landroid/view/View;)V
    .locals 0
    .parameter "panel"

    .prologue
    .line 244
    return-void
.end method

.method public onPanelCollapsed(Landroid/view/View;)V
    .locals 0
    .parameter "panel"

    .prologue
    .line 236
    return-void
.end method

.method public onPanelExpanded(Landroid/view/View;)V
    .locals 0
    .parameter "panel"

    .prologue
    .line 240
    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 0
    .parameter "panel"
    .parameter "slideOffset"

    .prologue
    .line 232
    return-void
.end method
