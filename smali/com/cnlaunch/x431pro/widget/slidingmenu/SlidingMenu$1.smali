.class Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final POSITION_CLOSE:I = 0x1

.field public static final POSITION_OPEN:I


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$1;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 212
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 215
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$1;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    #getter for: Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mOpenListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->access$0(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;)Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$1;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    #getter for: Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mOpenListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->access$0(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;)Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenListener;->onOpen()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$1;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    #getter for: Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mCloseListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnCloseListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->access$1(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;)Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$1;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    #getter for: Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mCloseListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnCloseListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->access$1(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;)Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnCloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnCloseListener;->onClose()V

    goto :goto_0
.end method
