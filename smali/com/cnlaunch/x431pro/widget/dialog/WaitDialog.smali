.class public Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;
.super Landroid/app/Dialog;
.source "WaitDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 4
    .parameter "ctx"
    .parameter "canNotCancel"
    .parameter "title"
    .parameter "tipMsg"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030131

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 46
    const v2, 0x7f0300d6

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->setContentView(I)V

    .line 48
    const v2, 0x102000b

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 50
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 51
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "canNotCancel"
    .parameter "title"
    .parameter "tipMsg"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030131

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 33
    const v2, 0x7f0300d6

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->setContentView(I)V

    .line 35
    const v2, 0x102000b

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    .local v0, tv:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 40
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 41
    return-void
.end method
