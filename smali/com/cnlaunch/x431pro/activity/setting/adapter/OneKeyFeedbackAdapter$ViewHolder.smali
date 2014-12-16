.class public Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OneKeyFeedbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public cb_feedback_log_choice:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

.field public tv_feedback_log_filename:Landroid/widget/TextView;

.field public tv_feedback_log_name:Landroid/widget/TextView;

.field public tv_feedback_log_time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->this$0:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
