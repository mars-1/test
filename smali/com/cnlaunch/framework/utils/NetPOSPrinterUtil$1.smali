.class Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil$1;
.super Ljava/lang/Object;
.source "NetPOSPrinterUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->resultToast(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput p1, p0, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil$1;->val$result:I

    iput-object p2, p0, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil$1;->val$context:Landroid/content/Context;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil$1;->val$result:I

    sparse-switch v0, :sswitch_data_0

    .line 361
    :goto_0
    return-void

    .line 340
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/launch/core/R$string;->print_success:I

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 343
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/launch/core/R$string;->print_jam:I

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 346
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/launch/core/R$string;->print_will_nopaper:I

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 349
    :sswitch_3
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/launch/core/R$string;->print_no_paper:I

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 352
    :sswitch_4
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/launch/core/R$string;->print_actuator_fault:I

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 355
    :sswitch_5
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/launch/core/R$string;->print_head_overheating:I

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x80 -> :sswitch_5
    .end sparse-switch
.end method
