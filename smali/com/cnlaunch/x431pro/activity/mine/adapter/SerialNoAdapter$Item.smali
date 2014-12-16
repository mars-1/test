.class Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;
.super Ljava/lang/Object;
.source "SerialNoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field btn_spinner_down:Landroid/widget/ImageButton;

.field iv_checkbox:Landroid/widget/ImageView;

.field relat_item_root:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

.field tv_regist_time:Landroid/widget/TextView;

.field tv_serial_number:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;->this$0:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
