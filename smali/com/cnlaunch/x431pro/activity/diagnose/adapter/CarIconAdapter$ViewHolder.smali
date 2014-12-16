.class Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CarIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field car_logo:Landroid/widget/ImageView;

.field car_name:Landroid/widget/TextView;

.field car_name_zh:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
