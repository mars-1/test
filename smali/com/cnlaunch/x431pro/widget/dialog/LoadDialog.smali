.class public Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;
.super Landroid/app/Dialog;
.source "LoadDialog.java"


# static fields
.field private static loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 5
    .parameter "ctx"
    .parameter "canNotCancel"
    .parameter "tipMsg"

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x1030131

    invoke-virtual {v2, v4}, Landroid/content/Context;->setTheme(I)V

    .line 42
    const v2, 0x7f0300d7

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->setContentView(I)V

    .line 44
    if-eqz p2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->setCancelable(Z)V

    .line 47
    const v2, 0x102000b

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    .local v0, tv:Landroid/widget/TextView;
    invoke-static {p3}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 54
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 55
    return-void

    .line 44
    .end local v0           #tv:Landroid/widget/TextView;
    .end local v1           #window:Landroid/view/Window;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static dismiss(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 128
    if-nez p0, :cond_1

    .line 129
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    .line 155
    .end local p0
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 133
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p0
    :cond_1
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 134
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    const/4 v2, 0x0

    sput-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    sput-object v3, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    goto :goto_0

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    sget-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    .local v1, loadContext:Landroid/content/Context;
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 143
    check-cast v1, Landroid/app/Activity;

    .end local v1           #loadContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    const/4 v2, 0x0

    sput-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    goto :goto_0

    .line 148
    :cond_3
    sget-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss()V

    .line 149
    const/4 v2, 0x0

    sput-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 93
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "message"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "message"
    .parameter "isCancel"

    .prologue
    .line 106
    if-nez p0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 111
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    goto :goto_0

    .line 116
    :cond_2
    sget-object v0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :cond_3
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    invoke-direct {v0, p0, p2, p1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    .line 120
    sget-object v0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->setCanceledOnTouchOutside(Z)V

    .line 60
    return-void
.end method
