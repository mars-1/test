.class public Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;
.super Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;
.source "PrinterFailrueDialog.java"


# instance fields
.field mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 18
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;->mcontext:Landroid/content/Context;

    .line 20
    const v0, 0x7f0706b7

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;->setTitle(I)V

    .line 21
    const v0, 0x7f0706b8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;->setDialogHtmlMessage(I)V

    .line 22
    const v0, 0x7f0706ad

    new-instance v1, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog$1;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 31
    const v0, 0x7f070663

    new-instance v1, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog$2;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;->setGammaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method


# virtual methods
.method public createContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method
