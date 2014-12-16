.class Lcom/cnlaunch/x431pro/activity/GuideActivity$1;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/GuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/GuideActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/GuideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/GuideActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/GuideActivity;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cnlaunch/x431pro/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/GuideActivity;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/activity/GuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/GuideActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/GuideActivity;->finish()V

    .line 83
    return-void
.end method
