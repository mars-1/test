.class public Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;
.super Landroid/app/Dialog;
.source "DiagnoseAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1030131

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 32
    const v0, 0x1030131

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    return-void
.end method
