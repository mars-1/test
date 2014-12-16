.class public Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;
.super Landroid/app/Activity;
.source "HomeStartActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;


# static fields
.field private static final PICK_CONTACT_CABLE_REQUEST:I = 0x2

.field private static final PICK_CONTACT_LOGIN_REQUEST:I = 0x4

.field private static final PICK_CONTACT_REGIST_REQUEST:I = 0x3

.field private static final PICK_CONTACT_WIFI_REQUEST:I = 0x1


# instance fields
.field private final RTU_FRAGMENT_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const-string/jumbo v0, "rtuFragmentTag"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->RTU_FRAGMENT_TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private addFragment(Ljava/lang/String;)V
    .locals 1
    .parameter "fragmentClassName"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method private isNetworkConnectedOrConnecting()Z
    .locals 3

    .prologue
    .line 74
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 75
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 76
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const/4 v2, 0x1

    .line 79
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setTryState(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const v11, 0x7f0706d6

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 254
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "serialNo"

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, serialNo:Ljava/lang/String;
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "serialNo_Prefix"

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, serialNo_Prefix:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 257
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getLocalSerialList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 258
    .local v2, localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v3, localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 261
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 266
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 267
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 268
    new-instance v4, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, p0, v7}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    .local v4, productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    invoke-virtual {v4, v9}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setFirstRunFlag(Z)V

    .line 270
    invoke-virtual {v4, v10}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setTryFlag(Z)V

    .line 271
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setTryFlagStartTime(J)V

    .line 272
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setLastRemindTime(J)V

    .line 273
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setSerialNo(Ljava/lang/String;)V

    .line 274
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "tryFlag"

    invoke-virtual {v7, v8, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 275
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "isFirstRun"

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 276
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->save(Ljava/lang/String;)V

    .line 307
    .end local v2           #localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    :cond_1
    :goto_1
    return-void

    .line 261
    .restart local v2       #localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    .local v0, bean:Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 263
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v0           #bean:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 279
    new-instance v4, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, p0, v7}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    .restart local v4       #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    invoke-virtual {v4, v9}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setFirstRunFlag(Z)V

    .line 281
    invoke-virtual {v4, v10}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setTryFlag(Z)V

    .line 282
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setTryFlagStartTime(J)V

    .line 283
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setLastRemindTime(J)V

    .line 284
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setSerialNo(Ljava/lang/String;)V

    .line 285
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "tryFlag"

    invoke-virtual {v7, v8, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 286
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "isFirstRun"

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 287
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->save(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 291
    .end local v1           #i:I
    .end local v4           #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    :cond_4
    invoke-static {p0, v11}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 294
    :cond_5
    invoke-static {p0, v11}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 297
    .end local v2           #localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    new-instance v4, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    .restart local v4       #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    invoke-virtual {v4, v9}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setFirstRunFlag(Z)V

    .line 299
    invoke-virtual {v4, v10}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setTryFlag(Z)V

    .line 300
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setTryFlagStartTime(J)V

    .line 301
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setLastRemindTime(J)V

    .line 302
    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setSerialNo(Ljava/lang/String;)V

    .line 303
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "tryFlag"

    invoke-virtual {v7, v8, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 304
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "isFirstRun"

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 305
    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->save(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public OnBaseSelectFragmentInteractiond(I)V
    .locals 13
    .parameter "confirmId"

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 168
    :pswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->isNetworkConnectedOrConnecting()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 170
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    invoke-direct {v6, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v6, intentRegistActivity:Landroid/content/Intent;
    const/high16 v8, 0x400

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    const/4 v8, 0x3

    invoke-virtual {p0, v6, v8}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 175
    .end local v6           #intentRegistActivity:Landroid/content/Intent;
    :cond_0
    const-class v8, Lcom/cnlaunch/x431pro/module/rtu/InternetTypeSelectFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->isNetworkConnectedOrConnecting()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 181
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v5, intentLoginActivity:Landroid/content/Intent;
    const-string/jumbo v8, "ISRTULOGIN"

    const-string/jumbo v9, "RTU"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/high16 v8, 0x400

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    const/4 v8, 0x4

    invoke-virtual {p0, v5, v8}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 187
    .end local v5           #intentLoginActivity:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v1, buddle:Landroid/os/Bundle;
    const-string/jumbo v8, "prompt"

    .line 189
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0706fe

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 188
    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-class v8, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v1}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 194
    .end local v1           #buddle:Landroid/os/Bundle;
    :pswitch_2
    invoke-static {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->setTryState(Landroid/content/Context;)V

    .line 195
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->finish()V

    goto :goto_0

    .line 198
    :pswitch_3
    const-class v8, Lcom/cnlaunch/x431pro/module/rtu/InternetTypeSelectFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 201
    :pswitch_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 202
    .restart local v1       #buddle:Landroid/os/Bundle;
    const-string/jumbo v8, "prompt"

    .line 203
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0706fe

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 202
    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-class v8, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v1}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 207
    .end local v1           #buddle:Landroid/os/Bundle;
    :pswitch_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v2, buddle1:Landroid/os/Bundle;
    const-string/jumbo v8, "prompt"

    .line 209
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0706fe

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 208
    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-class v8, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v2}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 213
    .end local v2           #buddle1:Landroid/os/Bundle;
    :pswitch_6
    new-instance v8, Landroid/content/Intent;

    .line 214
    const-string/jumbo v9, "android.settings.WIFI_SETTINGS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    const/4 v9, 0x1

    .line 213
    invoke-virtual {p0, v8, v9}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 218
    :pswitch_7
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.settings.ETHERNET_SETTINGS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v4, intent:Landroid/content/Intent;
    const-string/jumbo v8, "com.android.settings"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 221
    const/4 v9, 0x0

    .line 220
    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 222
    .local v0, acts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_2

    .line 223
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 225
    new-instance v8, Landroid/content/Intent;

    .line 226
    const-string/jumbo v9, "android.settings.WIFI_SETTINGS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    const/4 v9, 0x2

    .line 225
    invoke-virtual {p0, v8, v9}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 222
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #acts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 229
    .restart local v0       #acts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    .line 230
    .local v3, componentName:Landroid/content/ComponentName;
    const-string/jumbo v8, "HomeStartActivity"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "CONFIRM_INTERNET_TYPE_CABLE componentName="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    new-instance v8, Landroid/content/Intent;

    .line 232
    const-string/jumbo v9, "android.settings.ETHERNET_SETTINGS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    const/4 v9, 0x2

    .line 231
    invoke-virtual {p0, v8, v9}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 237
    .end local v0           #acts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #componentName:Landroid/content/ComponentName;
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_8
    invoke-static {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->setTryState(Landroid/content/Context;)V

    .line 238
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->finish()V

    goto/16 :goto_0

    .line 241
    :pswitch_9
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/cnlaunch/x431pro/activity/MainActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v7, result:Landroid/content/Intent;
    const/4 v8, -0x1

    invoke-virtual {p0, v8, v7}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->setResult(ILandroid/content/Intent;)V

    .line 243
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->finish()V

    goto/16 :goto_0

    .line 246
    .end local v7           #result:Landroid/content/Intent;
    :pswitch_a
    const-string/jumbo v8, "HomeStartActivity"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "CONFIRM_FACTORY_PATTERN"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    const/4 v8, 0x1

    sput-boolean v8, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    .line 248
    const/16 v8, 0x73

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->setResult(I)V

    .line 249
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->finish()V

    goto/16 :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public addFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "fragmentClassName"
    .parameter "args"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 91
    .local v0, fragment:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d005b

    const-string/jumbo v3, "rtuFragmentTag"

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 92
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 130
    if-eq p1, v3, :cond_0

    .line 131
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 132
    :cond_0
    const-string/jumbo v1, "HomeStartActivity"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActivityResult requestCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->isNetworkConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v6}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    const-class v1, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->replaceFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_3
    if-ne p1, v6, :cond_5

    .line 143
    if-ne p2, v2, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->finish()V

    goto :goto_0

    .line 147
    :cond_4
    const-class v1, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->replaceFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_5
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 152
    if-ne p2, v2, :cond_6

    .line 153
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->finish()V

    goto :goto_0

    .line 156
    :cond_6
    const-class v1, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->replaceFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-static {p0}, Lcom/cnlaunch/x431pro/common/ApplicationTheme;->loadActivityDialogTheme(Landroid/content/Context;)V

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "is_screen_switch"

    invoke-virtual {v0, v1, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Orientation"

    invoke-virtual {v0, v1, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->setRequestedOrientation(I)V

    .line 57
    :goto_0
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->setContentView(I)V

    .line 58
    const-class v0, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->addFragment(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "HomeStartActivity"

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "onCreate"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Orientation"

    invoke-virtual {v0, v1, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 50
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public replaceFragment(Ljava/lang/String;)V
    .locals 1
    .parameter "fragmentClassName"

    .prologue
    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .parameter "fragmentClassName"
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 113
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    const-string/jumbo v3, "rtuFragmentTag"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 114
    .local v0, fragment:Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 115
    .local v2, ft:Landroid/app/FragmentTransaction;
    const-string/jumbo v3, "BaseFragment"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Fragment Tag="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 118
    const-string/jumbo v3, "BaseFragment"

    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "Fragment is not find"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 124
    const v3, 0x7f0d005b

    const-string/jumbo v4, "rtuFragmentTag"

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 125
    invoke-virtual {v2, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 126
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 127
    return-void

    .line 121
    :cond_0
    const-string/jumbo v3, "BaseFragment"

    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "Fragment is  find"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
