.class public Lcom/cnlaunch/framework/common/ActivityPageManager;
.super Ljava/lang/Object;
.source "ActivityPageManager.java"


# static fields
.field private static activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/cnlaunch/framework/common/ActivityPageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/framework/common/ActivityPageManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/cnlaunch/framework/common/ActivityPageManager;->instance:Lcom/cnlaunch/framework/common/ActivityPageManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/cnlaunch/framework/common/ActivityPageManager;

    invoke-direct {v0}, Lcom/cnlaunch/framework/common/ActivityPageManager;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/common/ActivityPageManager;->instance:Lcom/cnlaunch/framework/common/ActivityPageManager;

    .line 41
    :cond_0
    sget-object v0, Lcom/cnlaunch/framework/common/ActivityPageManager;->instance:Lcom/cnlaunch/framework/common/ActivityPageManager;

    return-object v0
.end method

.method public static unbindReferences(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 148
    if-eqz p0, :cond_0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 150
    invoke-static {p0}, Lcom/cnlaunch/framework/common/ActivityPageManager;->unbindViewReferences(Landroid/view/View;)V

    .line 151
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 152
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0
    invoke-static {p0}, Lcom/cnlaunch/framework/common/ActivityPageManager;->unbindViewGroupReferences(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static unbindViewGroupReferences(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "viewGroup"

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 163
    .local v1, nrOfChildren:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_1
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 165
    .local v2, view:Landroid/view/View;
    invoke-static {v2}, Lcom/cnlaunch/framework/common/ActivityPageManager;->unbindViewReferences(Landroid/view/View;)V

    .line 166
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 167
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    invoke-static {v2}, Lcom/cnlaunch/framework/common/ActivityPageManager;->unbindViewGroupReferences(Landroid/view/ViewGroup;)V

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static unbindViewReferences(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 182
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 184
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 185
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 186
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 187
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 198
    :cond_0
    instance-of v4, p0, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    move-object v1, p0

    .line 199
    check-cast v1, Landroid/widget/ImageView;

    .line 200
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 204
    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_2
    instance-of v4, p0, Landroid/webkit/WebView;

    if-eqz v4, :cond_3

    move-object v3, p0

    .line 210
    check-cast v3, Landroid/webkit/WebView;

    .line 211
    .local v3, webview:Landroid/webkit/WebView;
    invoke-virtual {v3}, Landroid/webkit/WebView;->stopLoading()V

    .line 212
    invoke-virtual {v3}, Landroid/webkit/WebView;->clearFormData()V

    .line 213
    invoke-virtual {v3}, Landroid/webkit/WebView;->clearDisappearingChildren()V

    .line 214
    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 215
    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 216
    invoke-virtual {v3}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 217
    invoke-virtual {v3}, Landroid/webkit/WebView;->destroy()V

    .line 221
    .end local v3           #webview:Landroid/webkit/WebView;
    :cond_3
    instance-of v4, p0, Landroid/widget/ListView;

    if-eqz v4, :cond_4

    move-object v2, p0

    .line 222
    check-cast v2, Landroid/widget/ListView;

    .line 224
    .local v2, listView:Landroid/widget/ListView;
    :try_start_1
    invoke-virtual {v2}, Landroid/widget/ListView;->removeAllViewsInLayout()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    :goto_1
    check-cast p0, Landroid/widget/ListView;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/ListView;->destroyDrawingCache()V

    .line 229
    .end local v2           #listView:Landroid/widget/ListView;
    :cond_4
    return-void

    .line 225
    .restart local v2       #listView:Landroid/widget/ListView;
    .restart local p0
    :catch_0
    move-exception v4

    goto :goto_1

    .line 188
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #listView:Landroid/widget/ListView;
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 48
    sget-object v0, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    .line 51
    :cond_0
    sget-object v0, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public currentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 68
    sget-object v1, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 69
    sget-object v1, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exit(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/framework/common/ActivityPageManager;->finishAllActivity()V

    .line 238
    const-string/jumbo v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 239
    .local v0, activityMgr:Landroid/app/ActivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/cnlaunch/framework/common/LruCacheManager;->getInstance()Lcom/cnlaunch/framework/common/LruCacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/framework/common/LruCacheManager;->evictAll()V

    .line 242
    invoke-static {}, Lcom/cnlaunch/framework/common/CacheManager;->clearAll()Z

    .line 243
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 244
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v0           #activityMgr:Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public finishActivity()V
    .locals 2

    .prologue
    .line 101
    sget-object v1, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 102
    sget-object v1, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 103
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/common/ActivityPageManager;->finishActivity(Landroid/app/Activity;)V

    .line 105
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    sget-object v0, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 114
    const/4 p1, 0x0

    .line 116
    :cond_0
    return-void
.end method

.method public finishActivity(Ljava/lang/Class;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    return-void

    .line 122
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 123
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/common/ActivityPageManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public finishAllActivity()V
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v2, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 138
    sget-object v2, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 139
    return-void

    .line 134
    :cond_0
    sget-object v2, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 135
    sget-object v2, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 133
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public popActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 78
    sget-object v0, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 79
    const/4 p1, 0x0

    .line 81
    :cond_0
    return-void
.end method

.method public popAllActivityExceptOne(Ljava/lang/Class;)V
    .locals 2
    .parameter "cls"

    .prologue
    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/framework/common/ActivityPageManager;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 95
    :cond_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/common/ActivityPageManager;->popActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 58
    sget-object v0, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    .line 61
    :cond_0
    sget-object v0, Lcom/cnlaunch/framework/common/ActivityPageManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method
