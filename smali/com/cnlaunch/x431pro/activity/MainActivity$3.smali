.class Lcom/cnlaunch/x431pro/activity/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "isconflict"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 364
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->hidenConflict()V

    .line 365
    return-void
.end method

.method public logout()V
    .locals 4

    .prologue
    .line 369
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 370
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mGoloAllUnreadCount:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$3(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->clearAllCount()V

    .line 371
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 372
    .local v0, nManager:Landroid/app/NotificationManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 373
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "isconflict"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 357
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->hidenConflict()V

    .line 358
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mGoloAllUnreadCount:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$3(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->getCount()V

    .line 359
    return-void
.end method
