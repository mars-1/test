.class Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity$2;
.super Ljava/lang/Object;
.source "RegisterFinishActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->finish()V

    .line 42
    return-void
.end method
