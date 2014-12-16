.class public Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;
.super Landroid/app/Dialog;
.source "BottomMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private cancelListener:Landroid/view/View$OnClickListener;

.field private cancelText:Ljava/lang/String;

.field private confirmListener:Landroid/view/View$OnClickListener;

.field private confirmText:Ljava/lang/String;

.field private localPhotosBtn:Landroid/widget/Button;

.field private middleListener:Landroid/view/View$OnClickListener;

.field private middleText:Ljava/lang/String;

.field private photographBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const v0, 0x7f080038

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "confirmText"
    .parameter "middleText"

    .prologue
    .line 58
    const v0, 0x7f080038

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 59
    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->confirmText:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->middleText:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "confirmText"
    .parameter "middleText"
    .parameter "cancelText"

    .prologue
    .line 67
    const v0, 0x7f080038

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 68
    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->confirmText:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->middleText:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->cancelText:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->cancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getConfirmListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->confirmListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getMiddleListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->middleListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 115
    .local v0, id:I
    const v1, 0x7f0c029e

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->confirmListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->confirmListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const v1, 0x7f0c029f

    if-ne v0, v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->middleListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->middleListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 127
    :cond_2
    const v1, 0x7f0c02a0

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->cancelListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v2, 0x7f0300d6

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 78
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 79
    .local v0, layoutParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    const/high16 v2, 0x3f00

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 81
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 82
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 86
    const v2, 0x7f0c029e

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->photographBtn:Landroid/widget/Button;

    .line 87
    const v2, 0x7f0c029f

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->localPhotosBtn:Landroid/widget/Button;

    .line 88
    const v2, 0x7f0c02a0

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->cancelBtn:Landroid/widget/Button;

    .line 90
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->confirmText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->photographBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->confirmText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->middleText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->localPhotosBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->middleText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->cancelText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->cancelBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->cancelText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->photographBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->localPhotosBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->dismiss()V

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public setCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "cancelListener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->cancelListener:Landroid/view/View$OnClickListener;

    .line 150
    return-void
.end method

.method public setConfirmListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "confirmListener"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->confirmListener:Landroid/view/View$OnClickListener;

    .line 142
    return-void
.end method

.method public setMiddleListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "middleListener"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BottomMenuDialog;->middleListener:Landroid/view/View$OnClickListener;

    .line 158
    return-void
.end method
