.class Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog$1;
.super Ljava/lang/Object;
.source "PrinterFailrueDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog$1;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "show_PrintSetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, intentShowSetting:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog$1;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    return-void
.end method
