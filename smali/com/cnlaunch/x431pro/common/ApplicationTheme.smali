.class public Lcom/cnlaunch/x431pro/common/ApplicationTheme;
.super Ljava/lang/Object;
.source "ApplicationTheme.java"


# static fields
.field public static final BlueJewelry:I = 0x1

.field public static final BlueViolet:I = 0x2

.field public static final DefaultTheme:I = 0x0

.field public static final GreenGrassland:I = 0x3

.field public static final RedRose:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityDialogThemes(I)I
    .locals 1
    .parameter "type"

    .prologue
    const v0, 0x7f0800c4

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 78
    const v0, 0x7f0800c3

    :goto_0
    :pswitch_0
    return v0

    .line 76
    :pswitch_1
    const v0, 0x7f0800c5

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDialogThemes(I)I
    .locals 1
    .parameter "type"

    .prologue
    const v0, 0x7f0800c0

    .line 53
    packed-switch p0, :pswitch_data_0

    .line 61
    const v0, 0x7f0800bd

    :goto_0
    :pswitch_0
    return v0

    .line 59
    :pswitch_1
    const v0, 0x7f0800c2

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSlidingMenuLayout(Landroid/content/Context;)I
    .locals 5
    .parameter "mContext"

    .prologue
    const v1, 0x7f0300f7

    .line 91
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "theme_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 98
    const v1, 0x7f0300f8

    :pswitch_0
    return v1

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getThemes(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 40
    packed-switch p0, :pswitch_data_0

    .line 48
    const v0, 0x7f0800bc

    :goto_0
    return v0

    .line 42
    :pswitch_0
    const v0, 0x7f0800be

    goto :goto_0

    .line 44
    :pswitch_1
    const v0, 0x7f0800bf

    goto :goto_0

    .line 46
    :pswitch_2
    const v0, 0x7f0800c1

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static loadActivityDialogTheme(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "theme_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/common/ApplicationTheme;->getActivityDialogThemes(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 133
    return-void
.end method

.method public static loadDialogTheme(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"

    .prologue
    .line 122
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "theme_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/common/ApplicationTheme;->getDialogThemes(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 123
    return-void
.end method

.method public static loadTheme(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"

    .prologue
    .line 111
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "theme_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/common/ApplicationTheme;->getThemes(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 112
    return-void
.end method

.method public static reloadOrientation(Landroid/content/Context;I)V
    .locals 3
    .parameter "mContext"
    .parameter "type"

    .prologue
    .line 171
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "Orientation"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;I)V

    .line 172
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->popAll()V

    .line 173
    invoke-static {}, Lcom/cnlaunch/framework/common/ActivityPageManager;->getInstance()Lcom/cnlaunch/framework/common/ActivityPageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/framework/common/ActivityPageManager;->finishAllActivity()V

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 175
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method public static reloadTheme(Landroid/content/Context;I)V
    .locals 3
    .parameter "mContext"
    .parameter "type"

    .prologue
    .line 156
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "theme_type"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;I)V

    .line 157
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->popAll()V

    .line 158
    invoke-static {}, Lcom/cnlaunch/framework/common/ActivityPageManager;->getInstance()Lcom/cnlaunch/framework/common/ActivityPageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/framework/common/ActivityPageManager;->finishAllActivity()V

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public static setTheme(Landroid/content/Context;I)V
    .locals 2
    .parameter "mContext"
    .parameter "type"

    .prologue
    .line 144
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "theme_type"

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;I)V

    .line 145
    return-void
.end method
