.class public Lcom/cnlaunch/x431pro/common/SlidingMenuHelper;
.super Ljava/lang/Object;
.source "SlidingMenuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBookMarks(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "mContext"
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    .line 130
    const-string/jumbo v8, "url"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 131
    .local v4, urlColumn:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090042

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, urlItems:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090043

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, titleItems:[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v6, urlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v2, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v9, v5

    move v8, v7

    :goto_0
    if-lt v8, v9, :cond_1

    .line 138
    array-length v8, v1

    :goto_1
    if-lt v7, v8, :cond_2

    .line 141
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 146
    return-void

    .line 135
    :cond_1
    aget-object v3, v5, v8

    .line 136
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 138
    .end local v3           #url:Ljava/lang/String;
    :cond_2
    aget-object v0, v1, v7

    .line 139
    .local v0, title:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 141
    .end local v0           #title:Ljava/lang/String;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 142
    .restart local v3       #url:Ljava/lang/String;
    invoke-static {p1, v4, v3}, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper;->ifAdd(Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-static {p0, v7, v3, v9}, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper;->addBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private static addBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .parameter "mContext"
    .parameter "title"
    .parameter "url"
    .parameter "index"

    .prologue
    .line 94
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v6, inputValue:Landroid/content/ContentValues;
    const-string/jumbo v10, "bookmark"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string/jumbo v10, "title"

    invoke-virtual {v6, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v10, "url"

    invoke-virtual {v6, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v5, 0x0

    .line 100
    .local v5, field:Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    .line 101
    .local v8, resId:I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "web_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, resName:Ljava/lang/String;
    :try_start_0
    const-class v10, Lcom/ifoer/expedition/pro/R$drawable;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 104
    new-instance v10, Lcom/ifoer/expedition/pro/R$drawable;

    invoke-direct {v10}, Lcom/ifoer/expedition/pro/R$drawable;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v8

    .line 112
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    move-object v0, v3

    .line 113
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 114
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    .local v1, bm:Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v7, os:Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 117
    const-string/jumbo v10, "thumbnail"

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 120
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v10, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v10, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 121
    return-void

    .line 105
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #os:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 106
    .local v4, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v4           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v4

    .line 108
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 110
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private static ifAdd(Landroid/database/Cursor;ILjava/lang/String;)Z
    .locals 1
    .parameter "result"
    .parameter "urlColumn"
    .parameter "url"

    .prologue
    .line 149
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 153
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static showIdentifixDialog(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    .line 160
    new-instance v0, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper$1;

    const v1, 0x7f0704eb

    const v2, 0x7f0706a2

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper$1;-><init>(Landroid/content/Context;IILandroid/content/Context;)V

    .line 173
    .local v0, tipDialog:Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;
    const v1, 0x7f07002b

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 174
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->setTextGravity(I)V

    .line 175
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->show()V

    .line 176
    return-void
.end method

.method public static startBrowser(Landroid/content/Context;)V
    .locals 7
    .parameter "mContext"

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 65
    .local v4, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v3, packageName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 70
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v5, "com.android.browser"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    const-string/jumbo v5, "com.android.browser"

    const-string/jumbo v6, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    :goto_2
    return-void

    .line 67
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 68
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    const-string/jumbo v5, "com.android.chrome"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    const-string/jumbo v5, "com.android.chrome"

    const-string/jumbo v6, "com.google.android.apps.chrome.Main"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 79
    :cond_2
    const v5, 0x7f0706a5

    invoke-static {p0, v5}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public static startIdentifix(Landroid/content/Context;)V
    .locals 8
    .parameter "mContext"

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 38
    .local v4, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v3, packageName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 43
    const-string/jumbo v6, "http://www.identifix.com"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 44
    .local v5, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 45
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v6, "com.android.chrome"

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 46
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    const-string/jumbo v6, "com.android.chrome"

    const-string/jumbo v7, "com.google.android.apps.chrome.Main"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    :goto_2
    return-void

    .line 40
    .end local v1           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 41
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_1
    const-string/jumbo v6, "com.android.browser"

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 49
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v6, "com.android.browser"

    const-string/jumbo v7, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 53
    :cond_2
    const v6, 0x7f0706a5

    invoke-static {p0, v6}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_2
.end method
