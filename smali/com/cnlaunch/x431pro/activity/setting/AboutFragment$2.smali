.class Lcom/cnlaunch/x431pro/activity/setting/AboutFragment$2;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reputDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reputPopupWindow:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 198
    return-void
.end method
