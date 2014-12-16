.class Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow$1;
.super Ljava/lang/Object;
.source "SpinnerPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow$1;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow$1;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->access$0(Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow$1;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->access$0(Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow$1;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->access$1(Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow$1;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->access$1(Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow$1;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->access$1(Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 65
    :cond_1
    return-void
.end method
