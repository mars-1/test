.class Lcom/cnlaunch/x431pro/common/SlidingMenuHelper$1;
.super Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;
.source "SlidingMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/common/SlidingMenuHelper;->showIdentifixDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;IILandroid/content/Context;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter

    .prologue
    .line 1
    iput-object p4, p0, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper$1;->val$mContext:Landroid/content/Context;

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public doingFinish(IZ)V
    .locals 3
    .parameter "button"
    .parameter "isChecked"

    .prologue
    .line 163
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 164
    if-eqz p2, :cond_1

    .line 165
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper$1;->val$mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "show_identifix_tips"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper$1;->val$mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper;->startIdentifix(Landroid/content/Context;)V

    .line 171
    :cond_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper$1;->val$mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "show_identifix_tips"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
