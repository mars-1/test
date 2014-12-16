.class Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$2;
.super Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$SimpleOnPageChangeListener;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->initCustomViewAbove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$2;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    .line 176
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$2;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    #getter for: Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->access$0(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;)Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    packed-switch p1, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$2;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    #getter for: Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->access$0(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;)Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$2;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    #getter for: Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->access$0(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;)Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
