.class Lcom/cnlaunch/x431pro/utils/CommonUtils$1;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/utils/CommonUtils;->showTitlePopupWindow(Landroid/content/Context;[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/CommonUtils$1;->val$context:Landroid/content/Context;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "clickview"

    .prologue
    .line 325
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 326
    .local v0, finalview:Landroid/widget/TextView;
    new-instance v1, Lcom/cnlaunch/x431pro/widget/dialog/TitlePopupWindow;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/CommonUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/widget/dialog/TitlePopupWindow;-><init>(Landroid/content/Context;)V

    .line 327
    .local v1, popdialog:Lcom/cnlaunch/x431pro/widget/dialog/TitlePopupWindow;
    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/widget/dialog/TitlePopupWindow;->showAsDropDown(Landroid/widget/TextView;)V

    .line 328
    const/4 v2, 0x1

    return v2
.end method
