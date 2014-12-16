.class public Lcom/cnlaunch/golo3/utils/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field public static ACCOUNT:Ljava/lang/String; = null

.field public static AUTO_LOGIN:Ljava/lang/String; = null

.field public static CC:Ljava/lang/String; = null

.field public static final CITY_CODE:Ljava/lang/String; = "city_code"

.field public static CODE:Ljava/lang/String; = null

.field public static final COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final CURRENT_CITY:Ljava/lang/String; = "current_city"

.field public static final CURRENT_COUNTRY:Ljava/lang/String; = "current_country"

.field public static final CURRENT_PROVINCE:Ljava/lang/String; = "current_province"

.field public static final DBSCAR_HAS_NEW_MSG:Ljava/lang/String; = "dbscar_has_new_msg"

.field public static final END_DATE:Ljava/lang/String; = "last_end_date"

.field public static final GLOBAL_REPORT_DIR:Ljava/lang/String; = "/Global_Report/"

.field public static final GOGO_1:Ljava/lang/String; = "golo1"

.field public static final GOGO_2:Ljava/lang/String; = "golo2"

.field public static final GOGO_COMMON:Ljava/lang/String; = "common"

.field public static final GOLO2_REPORT_DIR:Ljava/lang/String; = "/Golo2_Report/"

.field public static LAST_USER:Ljava/lang/String; = null

.field public static final MANUAL_LOG_OUT:Ljava/lang/String; = "manual_log_out"

.field public static MESSAGE:Ljava/lang/String; = null

.field public static final PARTIAL_REPORT_DIR:Ljava/lang/String; = "/Partial_Report/"

.field public static final PRODUCT_KIND:Ljava/lang/String; = "product_kind"

.field public static final PROVINCE_CODE:Ljava/lang/String; = "province_code"

.field public static final RCU_HAS_NEW_MSG:Ljava/lang/String; = "rcu_has_new_msg"

.field public static RMB_PWD:Ljava/lang/String; = null

.field public static final SHARE_PREFERENCES:Ljava/lang/String; = "dbscar_android_preferences"

.field public static SIGN:Ljava/lang/String; = null

.field public static final START_DATE:Ljava/lang/String; = "last_start_date"

.field private static final TAG:Ljava/lang/String; = null

.field public static TOKEN:Ljava/lang/String; = null

.field public static final USER_INFO_CHANGE:Ljava/lang/String; = "user_info_change"

.field public static formatDate:Ljava/text/SimpleDateFormat;

.field public static formatDateTime:Ljava/text/SimpleDateFormat;

.field public static formatDateTimeCN:Ljava/text/SimpleDateFormat;

.field public static formatDateTimeSS:Ljava/text/SimpleDateFormat;

.field public static formatTime:Ljava/text/SimpleDateFormat;

.field private static printLogToLogcat:Z

.field private static progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-class v0, Lcom/cnlaunch/golo3/utils/CommonUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->TAG:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "account"

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->ACCOUNT:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "token"

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->TOKEN:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "cc"

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->CC:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "sign"

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->SIGN:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "code"

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->CODE:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "message"

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->MESSAGE:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "auto_login"

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->AUTO_LOGIN:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "last_user"

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->LAST_USER:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "remember_passowrd"

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->RMB_PWD:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatDateTimeSS:Ljava/text/SimpleDateFormat;

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatDateTime:Ljava/text/SimpleDateFormat;

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatDateTimeCN:Ljava/text/SimpleDateFormat;

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatDate:Ljava/text/SimpleDateFormat;

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatTime:Ljava/text/SimpleDateFormat;

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->printLogToLogcat:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "s"

    .prologue
    .line 142
    :try_start_0
    const-string/jumbo v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 144
    .local v0, digest:Ljava/security/MessageDigest;
    :try_start_1
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 152
    .local v5, messageDigest:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v3, hexString:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v5

    if-lt v4, v6, :cond_0

    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 164
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v3           #hexString:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    .end local v5           #messageDigest:[B
    :goto_2
    return-object v6

    .line 145
    .restart local v0       #digest:Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 161
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 162
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 164
    const-string/jumbo v6, ""

    goto :goto_2

    .line 154
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v0       #digest:Ljava/security/MessageDigest;
    .restart local v3       #hexString:Ljava/lang/StringBuffer;
    .restart local v4       #i:I
    .restart local v5       #messageDigest:[B
    :cond_0
    :try_start_3
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, h:Ljava/lang/String;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 157
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_3
.end method

.method public static dismissProgressDialog()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    :cond_0
    return-void
.end method

.method public static firstDayOfMonth()Ljava/lang/String;
    .locals 6

    .prologue
    .line 427
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 428
    .local v2, cal:Ljava/util/Calendar;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 429
    .local v3, datef:Ljava/text/SimpleDateFormat;
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 430
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 431
    .local v0, beginTime:Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " 00:00:00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, beginTime1:Ljava/lang/String;
    return-object v1
.end method

.method public static getDecimalValue(DI)Ljava/lang/String;
    .locals 6
    .parameter "value"
    .parameter "scale"

    .prologue
    const-wide/high16 v4, 0x4024

    .line 471
    mul-double v2, p0, v4

    div-double p0, v2, v4

    .line 472
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 473
    .local v0, bd:Ljava/math/BigDecimal;
    const/4 v2, 0x4

    invoke-virtual {v0, p2, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 474
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 477
    .end local v0           #bd:Ljava/math/BigDecimal;
    :goto_0
    return-object v2

    .line 475
    :catch_0
    move-exception v1

    .line 476
    .local v1, e:Ljava/lang/Exception;
    const-string/jumbo v2, "CommonUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "set scale of decimal exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/golo3/utils/CommonUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filePath"

    .prologue
    .line 447
    const/4 v2, 0x0

    .line 448
    .local v2, result:Ljava/lang/String;
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, arr:[Ljava/lang/String;
    array-length v1, v0

    .line 450
    .local v1, len:I
    add-int/lit8 v3, v1, -0x1

    aget-object v2, v0, v3

    .line 451
    return-object v2
.end method

.method public static getFormatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    new-instance p0, Ljava/util/Date;

    .end local p0
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 115
    .restart local p0
    :cond_0
    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatDate:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 116
    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatDatetime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    new-instance p0, Ljava/util/Date;

    .end local p0
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 99
    .restart local p0
    :cond_0
    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatDateTime:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 100
    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatDateTime:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatDatetimeCN(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    new-instance p0, Ljava/util/Date;

    .end local p0
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 107
    .restart local p0
    :cond_0
    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatDateTimeCN:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 108
    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatDateTimeCN:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatDatetimeSS(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    new-instance p0, Ljava/util/Date;

    .end local p0
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 91
    .restart local p0
    :cond_0
    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatDateTimeSS:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 92
    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatDateTimeSS:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 121
    new-instance p0, Ljava/util/Date;

    .end local p0
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 123
    .restart local p0
    :cond_0
    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatTime:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 124
    sget-object v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->formatTime:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "param"

    .prologue
    .line 484
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 487
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 488
    .local v1, uri:Landroid/net/Uri;
    const-string/jumbo v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    return-object v0
.end method

.method public static getLongDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/Long;
    .locals 5
    .parameter "format"
    .parameter "dateString"

    .prologue
    .line 415
    const/4 v2, 0x0

    .line 417
    .local v2, time:Ljava/lang/Long;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 418
    .local v0, dt:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 422
    .end local v0           #dt:Ljava/util/Date;
    :goto_0
    return-object v2

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPdfFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "param"

    .prologue
    .line 495
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 498
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 499
    .local v1, uri:Landroid/net/Uri;
    const-string/jumbo v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    return-object v0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 4
    .parameter "email"

    .prologue
    .line 199
    const-string/jumbo v2, "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$"

    .line 201
    .local v2, strPattern:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 202
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 203
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, result:Z
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x1

    .line 84
    :cond_1
    return v0
.end method

.method public static isPassword(Ljava/lang/String;)Z
    .locals 4
    .parameter "password"

    .prologue
    .line 183
    const-string/jumbo v2, "^.{6,20}$"

    .line 184
    .local v2, strPattern:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 185
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 186
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static isPhoneNum(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNum"

    .prologue
    .line 191
    const-string/jumbo v2, "^(13+[0-9]+[0-9]{8})|(15[0-3,5-9]+[0-9]{8})|(18+[0-9]+[0-9]{8}) | (\\(\\d{3}\\)\\d{3}-?\\d{4})|(\\d{3}-\\d{3}-\\d{4})|(\\d{10,11})$"

    .line 193
    .local v2, strPattern:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 194
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 195
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static isUserName(Ljava/lang/String;)Z
    .locals 4
    .parameter "userName"

    .prologue
    .line 175
    const-string/jumbo v2, "^\\w{1}[\\w_]{5,19}$"

    .line 177
    .local v2, strPattern:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 178
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 179
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static lastDayOfMonth()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 437
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 438
    .local v0, cal:Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 439
    .local v1, datef:Ljava/text/SimpleDateFormat;
    const/4 v4, 0x1

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 440
    const/4 v4, -0x1

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->roll(II)V

    .line 441
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 442
    .local v2, endTime:Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " 23:59:59"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, endTime1:Ljava/lang/String;
    return-object v3
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "log"

    .prologue
    .line 387
    sget-boolean v0, Lcom/cnlaunch/golo3/utils/CommonUtil;->printLogToLogcat:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "str"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    return-void
.end method

.method public static zoomImg(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bm"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v1, 0x0

    .line 456
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 457
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 459
    .local v4, height:I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 460
    .local v9, scaleWidth:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 462
    .local v8, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 463
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 465
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 466
    .local v7, newbm:Landroid/graphics/Bitmap;
    return-object v7
.end method
